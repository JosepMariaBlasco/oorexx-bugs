#!/bin/sh
# Run the full test suite on OpenBSD (inside the OpenBSD VM) and check that
# rexx exits after the summary.
#
# On the ooRexx Jenkins, OpenBSD (and the Windows VMs) finished the suite and
# printed the summary, but the main rexx process never exited: it slept on a
# futex. This builds plain trunk, runs the suite the way the Jenkins job does,
# and if rexx is still alive some time after the summary, dumps the stacks of
# all its threads with egdb.
#
# The VM runs everything as root, and several tests fail as root (a read-only
# file is still writable, SysFileCopy/SysFileDelete succeed on it, ...). So the
# build is done as root but the suite, by default, runs as an unprivileged
# user, with stdout going to a pipe (a few tests expect stdout to be a
# transient, non-positionable stream), as on a normal terminal or Jenkins.
#
# Usage: exit-hang-openbsd.sh <revision> <minutes for the suite> <grace seconds> [user]
#        user: the account that runs the suite (default "ci"; "root" = as root)

REV=$1; MINUTES=${2:-120}; GRACE=${3:-180}; RUNAS=${4:-ci}
OUT=$PWD/exit-hang
mkdir -p $OUT
set -x
svn export -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/main/trunk src/main || exit 1
svn export -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/test/trunk src/test || exit 1
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ../src/main > $OUT/cmake.log 2>&1 || { tail -50 $OUT/cmake.log; exit 1; }
make -j$(sysctl -n hw.ncpuonline) > $OUT/make.log 2>&1 || { tail -50 $OUT/make.log; exit 1; }
BIN=$PWD/bin; LIB=$PWD/lib
cd ../src/test
TEST=$PWD
set +x

if [ "$RUNAS" != root ]; then
    id $RUNAS > /dev/null 2>&1 || useradd -m -s /bin/sh $RUNAS || exit 1
    # the suite writes temporary files under the test tree; the log goes to $OUT
    chown -R $RUNAS $TEST $OUT
    # every directory on the way to the binaries must be searchable
    d=$BIN; while [ "$d" != / ]; do chmod a+x "$d"; d=$(dirname "$d"); done
fi

cat > $OUT/run-suite.sh <<EOF
export PATH=$BIN:$TEST:$TEST/framework:\$PATH
export LD_LIBRARY_PATH=$LIB
cd $TEST
id
rexx -v
# stdout through a pipe, not a file: stdout must be a transient stream
rexx testOORexx.rex -s -U -x SysSleep BEEP < /dev/null 2>&1 | cat > $OUT/suite.log
EOF

if [ "$RUNAS" = root ]; then
    sh $OUT/run-suite.sh &
else
    su $RUNAS -c "sh $OUT/run-suite.sh" &
fi
PID=$!
sleep 5
# the rexx running the suite (not the wrapper shells)
RPID=$(pgrep -f "rexx testOORexx.rex" | head -1)
echo "wrapper pid $PID, suite rexx pid ${RPID:-not found}"

dump() {
    ps -o pid,ppid,user,stat,wchan,time,command -ax | tee $OUT/ps.txt
    [ -n "$RPID" ] && egdb -p $RPID -batch -ex "info threads" -ex "thread apply all bt" > $OUT/stacks.txt 2>&1
    echo "stacks: $(wc -l < $OUT/stacks.txt 2>/dev/null) lines"
    [ -n "$RPID" ] && kill -9 $RPID
}

start=$(date +%s)
summary=
while kill -0 $PID 2>/dev/null; do
    sleep 10
    now=$(date +%s)
    if [ -z "$summary" ] && grep -q "^Total time" $OUT/suite.log; then
        summary=$now
        echo "summary after $((now - start)) s"
    fi
    if [ -n "$summary" ] && [ $((now - summary)) -ge $GRACE ]; then
        echo "HANG: rexx still alive $GRACE s after the summary"
        dump
        break
    fi
    if [ $((now - start)) -ge $((MINUTES * 60)) ]; then
        echo "TIMEOUT: no exit after $MINUTES minutes (summary: ${summary:-never})"
        dump
        break
    fi
done
end=$(date +%s)
[ -n "$summary" ] && echo "rexx gone $((end - summary)) s after the summary"
grep -E "^(Tests ran|Failures|Errors|Total time)" $OUT/suite.log | sort -u
grep -A1 -E "^\[(failure|error)\]" $OUT/suite.log | grep "Test:" | sort | uniq -c
exit 0

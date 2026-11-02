#!/bin/sh
# Does the test suite's rexx exit on OpenBSD? (Run inside the OpenBSD VM.)
#
# On the ooRexx Jenkins, OpenBSD (and the Windows VMs) finish the suite and
# print the summary, but the main rexx process never exits: it sleeps on a
# futex. This builds plain trunk, runs the suite the way the Jenkins job does,
# and if rexx is still alive some time after the summary, dumps the stacks of
# all its threads with egdb.
#
# Usage: exit-hang-openbsd.sh <revision> <minutes for the suite> <grace seconds>

REV=$1; MINUTES=${2:-120}; GRACE=${3:-180}
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
set +x

export PATH=$BIN:$PWD:$PWD/framework:$PATH
export LD_LIBRARY_PATH=$LIB
rexx -v
rexx testOORexx.rex -s -U -x SysSleep BEEP > $OUT/suite.log 2>&1 < /dev/null &
PID=$!
echo "suite pid $PID"

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
        ps -o pid,ppid,stat,wchan,time,command -U $(id -u) | tee $OUT/ps.txt
        egdb -p $PID -batch -ex "info threads" -ex "thread apply all bt" > $OUT/stacks.txt 2>&1
        echo "stacks: $(wc -l < $OUT/stacks.txt) lines"
        kill -9 $PID
        break
    fi
    if [ $((now - start)) -ge $((MINUTES * 60)) ]; then
        echo "TIMEOUT: no exit after $MINUTES minutes (summary: ${summary:-never})"
        ps -o pid,ppid,stat,wchan,time,command -U $(id -u) | tee $OUT/ps.txt
        egdb -p $PID -batch -ex "info threads" -ex "thread apply all bt" > $OUT/stacks.txt 2>&1
        kill -9 $PID
        break
    fi
done
end=$(date +%s)
[ -n "$summary" ] && echo "rexx gone $((end - summary)) s after the summary"
grep -E "^(Tests ran|Failures|Errors|Total time)" $OUT/suite.log | sort -u
exit 0

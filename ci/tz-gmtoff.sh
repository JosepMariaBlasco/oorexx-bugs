#!/bin/sh
# Build ooRexx trunk with and without patches/tm-gmtoff (time zone offset from
# tm_gmtoff instead of mktime(), TimeSupport.cpp) and compare:
#   1. TIME('O') against `date +%z` (sanity, both builds);
#   2. DateTime.testGroup, builds alternated, with TZ unset and set;
#   3. optionally the full suite, both builds (lists of failing tests).
# Portable sh: runs on macOS and inside the OpenBSD VM.
#
# Checkouts, not exports: a build from an export says it is r0 and the Rexx
# Parser groups then fail to load.
#
# Usage: tz-gmtoff.sh <revision> <rounds> <full: yes|no>

REV=$1; ROUNDS=${2:-3}; FULL=${3:-yes}
HERE=$(cd "$(dirname "$0")/.." && pwd)
OUT=$PWD/tz-gmtoff
mkdir -p $OUT
NCPU=$(sysctl -n hw.ncpuonline 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 2)
uname -a | tee $OUT/uname.txt

set -x
svn checkout -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/main/trunk src/main || exit 1
svn checkout -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/test/trunk src/test || exit 1
cp -R src/main src/main-p
(cd src/main-p && patch -p1 < $HERE/patches/tm-gmtoff/main.patch) || exit 1
for v in main main-p; do
    mkdir build-$v
    (cd build-$v &&
     cmake -DCMAKE_BUILD_TYPE=Release ../src/$v > $OUT/cmake-$v.log 2>&1 &&
     make -j$NCPU > $OUT/make-$v.log 2>&1) || { tail -50 $OUT/*-$v.log; exit 1; }
done
set +x
echo "HAVE_TM_GMTOFF: $(grep TM_GMTOFF build-main-p/config.h)" | tee -a $OUT/summary.txt

TEST=$PWD/src/test
cat > $OUT/off.rex <<'EOF'
say time('O') / 3600000000
EOF

run() {   # build-dir, then the rest of the command line
    b=$PWD/$1; shift
    PATH=$b/bin:$TEST:$TEST/framework:$PATH LD_LIBRARY_PATH=$b/lib DYLD_LIBRARY_PATH=$b/lib "$@"
}

for v in main main-p; do
    run build-$v rexx -v | head -1
    echo "$v: TIME('O') = $(run build-$v rexx $OUT/off.rex) h; date +%z = $(date +%z)" | tee -a $OUT/summary.txt
done

cd $TEST
group() {   # build, tz mode, round
    if [ "$2" = tz ]; then
        (export TZ=:/etc/localtime; run ../../build-$1 rexx testOORexx.rex -R ooRexx/base/class -F DateTime.testGroup) > $OUT/dt-$1-$2-$3.log 2>&1 < /dev/null
    else
        (unset TZ; run ../../build-$1 rexx testOORexx.rex -R ooRexx/base/class -F DateTime.testGroup) > $OUT/dt-$1-$2-$3.log 2>&1 < /dev/null
    fi
    t=$(grep '^Test execution' $OUT/dt-$1-$2-$3.log | sed 's/.*: *//')
    f=$(grep -E '^(Failures|Errors)' $OUT/dt-$1-$2-$3.log | tr -s ' ' | tr '\n' ' ')
    echo "DateTime $1 $2 round $3: $t  $f" | tee -a $OUT/summary.txt
}
r=1
while [ $r -le $ROUNDS ]; do
    for m in notz tz; do group main $m $r; group main-p $m $r; done
    r=$((r + 1))
done

if [ "$FULL" = yes ]; then
    for v in main main-p; do
        run ../../build-$v rexx testOORexx.rex -U < /dev/null 2>&1 | cat > $OUT/suite-$v.log
        grep -E '^(Tests ran|Failures|Errors|Test execution)' $OUT/suite-$v.log | sed "s/^/suite $v: /" | tee -a $OUT/summary.txt
        grep -A2 -E '^\[(failure|error)' $OUT/suite-$v.log | grep 'Test:' | sort > $OUT/fail-$v.txt
    done
    if diff $OUT/fail-main.txt $OUT/fail-main-p.txt > $OUT/fail-diff.txt; then
        echo "suite: same failure list" | tee -a $OUT/summary.txt
    else
        echo "suite: failure lists DIFFER" | tee -a $OUT/summary.txt; cat $OUT/fail-diff.txt
    fi
fi
cat $OUT/summary.txt

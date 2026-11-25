#!/bin/sh
# Build ooRexx trunk with and without a patch set (patches/<set>/main.patch,
# test.patch) and run some test groups and, optionally, the full suite with
# both, each with its own tests: clean main with clean test, patched main
# with patched test (a new test may crash an interpreter without the fix).
# Portable sh: runs on macOS and inside the BSD VMs.
#
# Checkouts, not exports: a build from an export says it is r0 and the Rexx
# Parser groups then fail to load. Each run gets a fresh XDG_RUNTIME_DIR /
# TMPDIR, so that rxapi registrations of one run do not leak into the next.
#
# Usage: patch-unix.sh <revision> <patch set> "<group> <group> ..." <full: yes|no>
#        group: path under test/trunk, e.g. ooRexx/API/classic/CLASSIC.testGroup

REV=$1; SET=$2; TGROUPS=$3; FULL=${4:-yes}
HERE=$(cd "$(dirname "$0")/.." && pwd)
OUT=$PWD/patch-unix
mkdir -p $OUT
NCPU=$(sysctl -n hw.ncpuonline 2>/dev/null || sysctl -n hw.ncpu 2>/dev/null || echo 2)
uname -a | tee $OUT/uname.txt

set -x
svn checkout -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/main/trunk src/main || exit 1
svn checkout -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/test/trunk src/test || exit 1
cp -R src/main src/main-p
cp -R src/test src/test-p
if [ -f $HERE/patches/$SET/main.patch ]; then (cd src/main-p && patch -p1 < $HERE/patches/$SET/main.patch) || exit 1; fi
if [ -f $HERE/patches/$SET/test.patch ]; then (cd src/test-p && patch -p1 < $HERE/patches/$SET/test.patch) || exit 1; fi
for v in main main-p; do
    mkdir build-$v
    (cd build-$v &&
     cmake -DCMAKE_BUILD_TYPE=Release ../src/$v > $OUT/cmake-$v.log 2>&1 &&
     make -j$NCPU > $OUT/make-$v.log 2>&1) || { tail -50 $OUT/*-$v.log; exit 1; }
done
set +x

TOP=$PWD
run() {   # build (main | main-p), then the rest of the command line, from its test tree
    b=$TOP/build-$1; t=$TOP/src/test; [ $1 = main-p ] && t=$TOP/src/test-p; shift
    rt=$(mktemp -d)
    (cd $t && XDG_RUNTIME_DIR=$rt TMPDIR=$rt PATH=$b/bin:$t:$t/framework:$PATH \
        LD_LIBRARY_PATH=$b/lib DYLD_LIBRARY_PATH=$b/lib "$@")
}

for v in main main-p; do
    run $v rexx -v | head -1 | sed "s/^/$v: /" | tee -a $OUT/summary.txt
    for g in $TGROUPS; do
        name=$(basename $g .testGroup)
        run $v rexx testOORexx.rex -R $(dirname $g) -F $(basename $g) < /dev/null > $OUT/group-$name-$v.log 2>&1
        echo "$v $name: rc=$? $(grep -E '^(Tests ran|Failures|Errors)' $OUT/group-$name-$v.log | tr -s ' ' | tr '\n' ' ') $(grep -A2 -E '^\[(failure|error)' $OUT/group-$name-$v.log | grep 'Test:' | tr -s ' ' | tr '\n' ' ')" | tee -a $OUT/summary.txt
    done
done

if [ "$FULL" = yes ]; then
    for v in main main-p; do
        run $v rexx testOORexx.rex -U < /dev/null 2>&1 | cat > $OUT/suite-$v.log
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

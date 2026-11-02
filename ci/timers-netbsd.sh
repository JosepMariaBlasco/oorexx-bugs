#!/bin/sh
# NetBSD: .Alarm / .Ticker / SysUnix tests fail on the ooRexx Jenkins
# (r13355). Did r13355 change anything? Builds r<before> and r<after>
# (incrementally), runs Alarm, Ticker and SysUnix N times with each, and a
# C probe of pthread_cond_timedwait. Run inside the NetBSD VM.
#
# Usage: timers-netbsd.sh <before> <after> <runs>
B=$1; A=$2; N=${3:-5}
OUT=$PWD/timers; mkdir -p $OUT
uname -a | tee $OUT/uname.txt
sysctl kern.clockrate kern.timecounter.hardware 2>/dev/null | tee -a $OUT/uname.txt
cc -O2 -o probe ci/timer-probe.c -lpthread && ./probe 40 500 | tee $OUT/probe.txt
svn checkout -q -r $B https://svn.code.sf.net/p/oorexx/code-0/main/trunk src/main || exit 1
svn export -q https://svn.code.sf.net/p/oorexx/code-0/test/trunk src/test || exit 1
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ../src/main > $OUT/cmake.log 2>&1 || { tail -50 $OUT/cmake.log; exit 1; }
BUILD=$PWD
run() {
  ( cd $BUILD && make -j$(sysctl -n hw.ncpuonline) > $OUT/make-$1.log 2>&1 ) || { tail -50 $OUT/make-$1.log; exit 1; }
  export PATH=$BUILD/bin:$PWD/../src/test:$PWD/../src/test/framework:/usr/bin:/bin:/usr/sbin:/sbin:/usr/pkg/bin
  export LD_LIBRARY_PATH=$BUILD/lib
  rexx -v | head -1
  for g in base/class/Alarm base/class/Ticker extensions/platform/unix/rxunixsys/SysUnix; do
    i=1
    while [ $i -le $N ]; do
      ( cd ../src/test && rexx ooRexx/$g.testGroup > $OUT/$1-$(basename $g)-$i.log 2>&1 < /dev/null )
      f=$(grep -E "^ *Failures:" $OUT/$1-$(basename $g)-$i.log | head -1)
      echo "r$1 $(basename $g) run $i: $f $(grep -h 'Test:' $OUT/$1-$(basename $g)-$i.log | sort -u | tr -s ' ' | tr '\n' ' ')"
      i=$((i+1))
    done
  done
}
cd $BUILD
run $B
( cd ../src/main && svn update -q -r $A )
run $A
cd .. && ./probe 40 500 | tee $OUT/probe-after.txt
exit 0

#!/bin/sh
# Run ci/tz-bench.c inside the OpenBSD VM (and say which system it is).
# Also counts the system calls of 1000 calls, to see whether the time zone
# file is read again on each one.
OUT=$PWD/tz-bench
mkdir -p $OUT
uname -a | tee $OUT/bench.log
cc -O2 -o tz-bench ci/tz-bench.c || exit 1
for tz in unset UTC Europe/Stockholm Europe/Madrid; do
  if [ $tz = unset ]; then (unset TZ; ./tz-bench ${1:-100000}); else TZ=$tz ./tz-bench ${1:-100000}; fi
done 2>&1 | tee -a $OUT/bench.log
ls -l /etc/localtime | tee -a $OUT/bench.log
(unset TZ; ktrace -f $OUT/k.out ./tz-bench 1000 > /dev/null)
kdump -f $OUT/k.out | awk '$3 == "CALL" { sub(/\(.*/, "", $4); n[$4]++ } END { for (c in n) print n[c], c }' | sort -rn | head -15 | tee -a $OUT/bench.log

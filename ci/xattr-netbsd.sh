#!/bin/sh
# NetBSD: SysUnix.testGroup TEST_XATTR lists 1 extended attribute out of 2.
# Runs ci/xattr-probe.c (no ooRexx build) in the workspace (where the test
# suite would run) and in /tmp. Run inside the NetBSD VM.
OUT=$PWD/xattr; mkdir -p $OUT
{
uname -a
mount
df -h . /tmp
cc -Wall -O2 -o probe ci/xattr-probe.c || exit 1
echo "##### workspace: $PWD"
./probe $PWD/xattr-probe.tmp
echo "##### /tmp"
./probe /tmp/xattr-probe.tmp
} 2>&1 | tee $OUT/probe.txt
exit 0

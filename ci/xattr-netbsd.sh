#!/bin/sh
# NetBSD: SysUnix.testGroup TEST_XATTR lists 1 extended attribute out of 2.
# 1. ci/xattr-probe.c (no ooRexx needed) in the workspace (ffs) and in /tmp.
# 2. If a revision is given: build it, run SysUnix.testGroup; apply
#    patches/<patch>/main.patch, rebuild, run it again.
# Run inside the NetBSD VM.
#
# Usage: xattr-netbsd.sh [revision [patch]]
REV=$1; PATCH=${2:-xattr}
TOP=$PWD
OUT=$TOP/xattr; mkdir -p $OUT
{
uname -a
mount
cc -Wall -O2 -o probe ci/xattr-probe.c || exit 1
echo "##### workspace: $PWD"
./probe $PWD/xattr-probe.tmp
echo "##### /tmp"
./probe /tmp/xattr-probe.tmp
} > $OUT/probe.txt 2>&1
grep -E "^#####|split|item" $OUT/probe.txt

[ -z "$REV" ] && exit 0
svn export -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/main/trunk src/main || exit 1
svn export -q -r $REV https://svn.code.sf.net/p/oorexx/code-0/test/trunk src/test || exit 1
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ../src/main > $OUT/cmake.log 2>&1 || { tail -50 $OUT/cmake.log; exit 1; }
BUILD=$PWD
export PATH=$BUILD/bin:$TOP/src/test:$TOP/src/test/framework:$PATH
export LD_LIBRARY_PATH=$BUILD/lib
run() {
  ( cd $BUILD && make -j$(sysctl -n hw.ncpuonline) > $OUT/make-$1.log 2>&1 ) || { tail -50 $OUT/make-$1.log; exit 1; }
  ( cd $TOP/src/test && rexx testOORexx.rex -s -f SysUnix < /dev/null 2>&1 | cat > $OUT/sysunix-$1.log )
  echo "== $1: $(grep -E '^(Tests ran|Failures|Errors)' $OUT/sysunix-$1.log | tr -s ' ' | tr '\n' ' ')"
  grep -E -A9 "^\[(failure|error)\]" $OUT/sysunix-$1.log
  # what SysListXattr / SysGetXattr return, item by item
  cat > $OUT/xa.rex <<'REX'
f = 'xa.tmp'; call lineout f, 'x'; call lineout f
say 'set' SysSetXattr(f, 'user.author', 'ooRexx') SysSetXattr(f, 'user.mime_type', 'text/x-oorexx')
l = SysListXattr(f)
if l~isA(.array) then do
  say 'SysListXattr:' l~items 'item(s)'
  do n over l; say '  ['n'] length' n~length 'hex' n~c2x; end
end
else say 'SysListXattr returned' l
say 'SysGetXattr user.author: ['SysGetXattr(f, 'user.author')']'
say 'SysGetXattr user.mime_type: ['SysGetXattr(f, 'user.mime_type')']'
call SysFileDelete f
::requires 'rxunixsys' LIBRARY
REX
  ( cd $TOP && rexx $OUT/xa.rex )
}
run before
( cd $TOP/src/main && patch -p1 < $TOP/patches/$PATCH/main.patch ) || exit 1
run after
exit 0

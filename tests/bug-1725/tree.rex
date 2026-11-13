/* Bug #1725: SysFileTree on Windows lists the current directory of the     */
/* current drive when asked for a drive that does not exist or is illegal.  */
say "Interpreter:" .rexxinfo~version "on" .rexxinfo~platform
say "Current directory:" directory()
do spec over "C:*", "D:*", "Q:*", "_:*", "1:*", "Q:\*", "Q:x*"
  rc = SysFileTree(spec, f., 'o')
  first = ""; if f.0 > 0 then first = f.1
  say left(spec, 6) "rc="rc "f.0="f.0 "f.1="first
end

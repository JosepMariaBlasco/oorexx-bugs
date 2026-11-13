/* Bug #1326: .File and path normalization.  Prints path and absolutePath  */
/* for the examples of the ticket and a few more.                          */
say "Interpreter:" .rexxinfo~version "on" .rexxinfo~platform
cases = .array~of( ,
  .array~of('file', '//dir'), .array~of('/', '/'), .array~of('/', 'dir/'), ,
  .array~of('/', ''), .array~of('file', 'dir//'), .array~of('file', 'dir/'), ,
  .array~of('dir/'), .array~of('dir//'), .array~of('a//b'), .array~of('//dir'), ,
  .array~of('/'), .array~of('\', '\'), .array~of('\', 'dir\'), .array~of('file', '\\dir'), ,
  .array~of('dir\\'), .array~of('a\\b'), .array~of('C:\'), .array~of('C:\\'), .array~of('C:/x//y/') )
do c over cases
  if c~items == 1 then do; f = .File~new(c[1]); call show "'"c[1]"'", f; end
  else do; f = .File~new(c[1], c[2]); call show "'"c[1]"', '"c[2]"'", f; end
end
exit
show: use arg label, f
  say left(".File~new("label")", 32) "path=["f~path"]" "absolutePath=["f~absolutePath"]"
  return

Parse Arg file
src = .Array~new
s = .Stream~new(file)~~open("read")
Do While s~lines > 0; src~append(s~linein); End
s~close
Call Time "R"
p = .Rexx.Parser~new(file, src)
Say "parsed" src~items "lines in" Time("E")
::Requires "parser.cls"

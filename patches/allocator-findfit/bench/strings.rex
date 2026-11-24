-- Short strings: concatenation and PARSE in a loop (normal subpools)
Parse Arg n
s = ""
Do i = 1 To n
  t = "item" i "value" i*3
  Parse Var t a b c d
  s = s || a~left(1)
  If s~length > 1000 Then s = ""
End

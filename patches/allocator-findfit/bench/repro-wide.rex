-- Objects with 24 instance variables in one scope
Parse Arg n
keep = .Array~new(n)
Call Time "R"
Do i = 1 To n
  keep[i] = .Wide~new(i)
  t = .Wide~new(i)
  s = Copies("x", 100 + i // 500)
End
Say Time("E")
::Class Wide
::Method init
  Expose a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16 a17 a18 a19 a20 a21 a22 a23 a24
  Use Arg a1
  a2 = a1; a3 = a1; a4 = a1; a5 = a1; a6 = a1; a7 = a1; a8 = a1; a9 = a1; a10 = a1; a11 = a1; a12 = a1
  a13 = a1; a14 = a1; a15 = a1; a16 = a1; a17 = a1; a18 = a1; a19 = a1; a20 = a1; a21 = a1; a22 = a1; a23 = a1; a24 = a1

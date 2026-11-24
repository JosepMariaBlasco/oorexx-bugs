-- Long-lived and short-lived strings over 512 bytes, no objects
Parse Arg n
keep = .Array~new(n)
Call Time "R"
Do i = 1 To n
  keep[i] = Copies("k", 520 + i // 700)
  t = Copies("t", 520 + (i * 7) // 1500)
End
Say Time("E")

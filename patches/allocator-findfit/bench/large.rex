-- Blocks for the large set (8 KB - 1 MB): mostly short-lived, some kept
Parse Arg n
keep = .Array~new
Call Random , , 11
Do i = 1 To n
  s = Copies("y", Random(9000, 200000))
  If i // 50 = 0 Then keep~append(s)
  If keep~items > 200 Then keep~delete(1)
End
Say keep~items

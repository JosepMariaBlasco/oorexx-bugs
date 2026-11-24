-- A large live heap (many small objects kept) with large blocks allocated on
-- top: the case the second change is for
Parse Arg n m
keep = .Array~new(n)
Do i = 1 To n
  keep[i] = .Directory~new~~put(i, "k")
End
Do j = 1 To m
  s = Copies("z", 60000)
End
Say keep~items

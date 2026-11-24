-- Sorting a large array of strings
Parse Arg n
a = .Array~new(n)
Call Random , , 3
Do i = 1 To n
  a[i] = Random(1, 999999)~right(8, '0') || "x"
End
a~sort
Say a[1] < a[n]

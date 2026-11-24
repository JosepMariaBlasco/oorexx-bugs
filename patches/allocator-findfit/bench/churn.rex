-- Fragmentation: strings of random sizes 400-9000 bytes, a pool of them kept
-- alive and replaced at random; checked at the end
Parse Arg n keep
If keep = "" Then keep = 2000
pool = .Array~new(keep)
Call Random , , 7
Do i = 1 To n
  k = Random(1, keep)
  len = Random(400, 9000)
  pool[k] = Copies(d2c(65 + k // 26), len)
End
bad = 0
Do k = 1 To keep
  v = pool[k]
  If v \== .Nil, v \== Copies(d2c(65 + k // 26), v~length) Then bad += 1
End
Say "bad" bad

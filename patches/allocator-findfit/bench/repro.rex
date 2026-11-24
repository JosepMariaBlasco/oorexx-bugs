Parse Arg n
keep = .Array~new(n)
Call Time "R"
Do i = 1 To n
  keep[i] = .Thing~new(i)            -- Stays alive: one variable dictionary
  t = .Thing~new(i)                  -- Dies at once: another one
  s = Copies("x", 100 + i // 500)    -- A short-lived string of varying size
End
Say Time("E")
::Class Thing
::Method init
  Expose a b c
  Use Arg a
  b = a; c = a

-- Arrays, stems and directories that grow: blocks that get larger and larger
Parse Arg n
a = .Array~new
d = .Directory~new
Do i = 1 To n
  a~append(i)
  st.i = i
  d[i] = i
End
Say a~items d~items

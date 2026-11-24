-- Small objects with 1-3 variables, all short-lived, and method calls
Parse Arg n
Do i = 1 To n
  p = .Point~new(i, i+1)
  q = p~plus(p)
End
::Class Point
::Method init
  Expose x y
  Use Arg x, y
::Method plus
  Expose x y
  Use Arg o
  Return .Point~new(x + o~x, y + o~y)
::Attribute x Get
::Attribute y Get

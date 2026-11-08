o=.test~new
o~start("m1")     -- send asynchroneously
o~incr
o~start("m2")
o~incr
o~m3
o~incr
o~m4
o~~incr~~incr~~incr
o~wait



::class test

::attribute controlVariable get unguarded

::method init
  expose controlVariable
  controlVariable=0

::method m1
  expose controlVariable
  guard off when controlVariable>0
  say "guard off now"
  guard on
  say "guard ON now"

::method m2
  expose controlVariable
  guard on when controlVariable>0
  say "guard ON now"
  guard off when controlVariable>2
  say "guard off now"

::method m3 unguarded
  expose controlVariable
  guard on when controlVariable>2
  say "guard ON now"
  guard off when controlVariable>3
  say "guard off now"

::method m4 unguarded
  expose controlVariable
  guard off when controlVariable>0
  say "guard off now"
  guard on when controlVariable>4
  guard on
  say "guard ON now"

::method incr unguarded
  expose controlVariable
  reply
  do 3
     call sysSleep 0.01
     controlVariable+=1
     say "incr(): now controlVariable="controlVariable
  end

::method wait
  expose controlVariable
  guard on when controlVariable>7

-- this crashes ooRexx eventually during evaluations of control variables
-- ::options trace i
::options trace r

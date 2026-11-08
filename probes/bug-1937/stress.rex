-- Stress for bug #1937: the scenario of testGuard.rex (attached to the ticket), repeated in one process.
-- Usage: rexx stress.rex [rounds]. Each round ends by waking every waiter, so lost increments
-- (incr is UNGUARDED, which makes them legitimate) cannot hang it; a crash or a deadlock can.
parse arg rounds .
if rounds = "" then rounds = 100
do r = 1 to rounds
  o = .test~new
  o~start("m1")
  o~incr
  o~start("m2")
  o~incr
  o~start("m3")
  o~incr
  o~start("m4")
  o~~incr~~incr~~incr
  call sysSleep 0.1
  o~release            -- wake every waiter, lost increments or not
end
.error~lineout("done" rounds)

::class test
::attribute controlVariable get unguarded
::method init
  expose controlVariable
  controlVariable=0
::method release unguarded
  expose controlVariable
  controlVariable=1000
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
::options trace r

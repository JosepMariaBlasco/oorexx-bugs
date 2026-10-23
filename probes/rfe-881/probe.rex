-- RexxCallBack probe: one case per argument; run each in its own process
parse arg case
call RxFuncAdd 'TestCallBack', 'orxclassic1', 'TestCallBack'
call RxFuncAdd 'TestCallBackTwice', 'orxclassic1', 'TestCallBackTwice'
call RxFuncAdd 'TestCallBackLast', 'orxclassic1', 'TestCallBackLast'
call RxFuncAdd 'TestCallBackThread', 'orxclassic1', 'TestCallBackThread'
select case case
  when 'basic' then say TestCallBack('Twice', 21)
  when 'case' then say TestCallBack('twice', 4)
  when 'args' then say TestCallBack('Args', 'a', , 'c')
  when 'noresult' then say TestCallBack('NoResult')
  when 'long' then say TestCallBack('Long')
  when 'vars' then do; v = 1; say TestCallBack('SetV') 'v='v; end
  when 'proc' then do; v = 1; say TestCallBack('ProcV') 'v='v; end
  when 'sigl' then say TestCallBack('Sigl')
  when 'badn' then say TestCallBack('NoSuchLabel')
  when 'numeric' then do; say TestCallBack('SetDigits') 'digits='digits(); end
  when 'syntax-trapped' then do
    signal on syntax name trapped
    say TestCallBack('Bad')
    say 'not reached'
  end
  when 'syntax-untrapped' then say TestCallBack('Bad')
  when 'novalue' then do
    signal on novalue name nov
    say TestCallBack('Novalue')
    say 'after'
  end
  when 'halt' then do
    signal on halt name halted
    say TestCallBack('Halt')
    say 'after, no halt'
  end
  when 'halt-untrapped' then do; say TestCallBack('Halt'); say 'after'; end
  when 'exit' then do; say TestCallBack('Exit'); say 'after exit'; end
  when 'recursion' then do
    signal on syntax name trapped
    say TestCallBack('Deep')
  end
  when 'nested' then say TestCallBack('Nest', 3)
  when 'method' then say .K~new~go
  when 'routine' then say viaRoutine()
  when 'twice-after-error' then say TestCallBack('BadThenAgain')
  when 'twice' then do; say TestCallBackTwice('Count', 'Count') 'last:' TestCallBackLast(); end
  when 'twice-bad' then say TestCallBackTwice('Bad', 'Count')
  when 'thread' then say 'thread rc' TestCallBackThread('Twice')
  otherwise say 'unknown case' case
end
say 'end'
exit 0

trapped: say 'trapped SYNTAX' condition('O')~code; exit 0
nov: say 'trapped NOVALUE' condition('D'); exit 0
halted: say 'trapped HALT'; exit 0

Twice: return arg(1) * 2
Args: return arg() arg(1) arg(2, 'E') arg(3)
NoResult: return
Long: return copies('x', 40)
SetV: v = 2; return 'set'
ProcV: procedure; v = 3; return 'proc'
Sigl: return 'sigl='sigl
SetDigits: numeric digits 30; return digits()
Bad: return 1 / 0
Novalue: return undefined_variable_xyz
Halt: raise halt; return 'halt returned'
Exit: exit 7
Deep: return TestCallBack('Deep')
Nest: procedure
  n = arg(1)
  if n <= 1 then return 'bottom'
  return '('TestCallBack('Nest', n - 1)')'
BadThenAgain: return 1 / 0
Count: return

::routine viaRoutine
  return TestCallBack('InRoutine', 5)
InRoutine: return 'routine got' arg(1)

::class K
::method go
  return TestCallBack('InMethod', 6)
InMethod: return 'method got' arg(1)

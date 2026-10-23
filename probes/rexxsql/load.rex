/* load a Rexx/SQL DLL (built for another interpreter, or for ooRexx 4) and ask its version */
parse version v; say v
signal on syntax name failed
say 'RxFuncAdd:' RxFuncAdd('SQLLoadFuncs', 'rexxsql', 'SQLLoadFuncs')
say 'SQLLoadFuncs:' SQLLoadFuncs()
say 'SQLVariable(VERSION):' SQLVariable('VERSION')
exit 0
failed:
  c = condition('O')
  say 'SYNTAX' c~code c~message
  exit 1

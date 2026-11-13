/* Bug #1686: the same command run with ADDRESS and with ADDRESS ... WITH  */
/* may run two different programs.  findstr.exe in the interpreter's       */
/* directory is a copy of find.exe; System32 comes first in PATH.          */
say "Interpreter:" .rexxinfo~version "on" .rexxinfo~platform
c = 'findstr'
say "--- address '' c"
address '' c
say "rc="rc
say "--- address '' c with input using 123"
address '' c with input using 123
say "rc="rc
say "--- address path c"
address path c
say "rc="rc
say "--- address path c with input using 123"
address path c with input using 123
say "rc="rc

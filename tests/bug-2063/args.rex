-- Bug #2063: show what a program run through rxenv receives.
say "  rexx:" .rexxInfo~executable
say "  ARG():" arg() " ARG(1): ["arg(1)"]  length:" length(arg(1))
if "-? /? -h /h -help /help --help"~caselessPos(arg(1)) > 0 then
  say "  help option recognised"

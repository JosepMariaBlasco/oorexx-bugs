@echo off
rem Bug #2063: run args.rex through one rxenv.cmd. %1: the rxenv.cmd, %2: args.rex
echo == one argument: -h
call %1 rexx %2 -h
echo == nine arguments: 1 2 3 4 5 6 7 8 9
call %1 rexx %2 1 2 3 4 5 6 7 8 9
echo == a=b,c;d
call %1 rexx %2 a=b,c;d
echo == "a  b" c
call %1 rexx %2 "a  b" c
echo == no arguments
call %1 rexx %2

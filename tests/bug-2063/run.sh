#!/bin/sh
# Bug #2063: run args.rex through one rxenv.sh. $1: the rxenv.sh, $2: args.rex
echo '== one argument: -h'
"$1" rexx "$2" -h
echo '== nine arguments: 1 2 3 4 5 6 7 8 9'
"$1" rexx "$2" 1 2 3 4 5 6 7 8 9
echo '== "a  b" c'
"$1" rexx "$2" "a  b" c
echo "== '*'"
"$1" rexx "$2" '*'
echo '== no arguments'
"$1" rexx "$2"

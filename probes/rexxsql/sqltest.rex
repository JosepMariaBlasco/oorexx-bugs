/* Rexx/SQL with SQLite3: the usual round of functions */
parse version v; say v
call RxFuncAdd 'SQLLoadFuncs', 'rexxsql', 'SQLLoadFuncs'
call SQLLoadFuncs
say 'version:' SQLVariable('VERSION')
dbfile = 'test.db'
call SysFileDelete dbfile
if SQLConnect('c1', , , dbfile) < 0 then call Abort 'connect'
call SQLGetInfo 'c1', 'DBMSNAME', 'desc.'; say 'dbms:' desc.1
if SQLCommand('cr', 'create table t (id integer, name varchar(20), price real)') < 0 then call Abort 'create'
do i = 1 to 5
  if SQLCommand('ins', "insert into t values (" i ", 'item" i "', " i * 1.5 ")") < 0 then call Abort 'insert'
end
say 'rows inserted:' sqlca.rowcount
/* a select into stems */
if SQLCommand('s1', 'select id, name, price from t order by id') < 0 then call Abort 'select'
say 'select rows:' s1.id.0 '- first:' s1.id.1 s1.name.1 s1.price.1 '- last:' s1.id.5 s1.name.5 s1.price.5
/* prepare / open / fetch with a bind variable */
if SQLPrepare('p1', 'select name from t where id > ?') < 0 then call Abort 'prepare'
if SQLOpen('p1', 'int', 3) < 0 then call Abort 'open'
names = ''
do forever
  rc = SQLFetch('p1')
  if rc < 0 then call Abort 'fetch'
  if rc = 0 then leave
  names = names p1.name
end
say 'fetched:' strip(names)
call SQLClose 'p1'; call SQLDispose 'p1'
/* describe */
if SQLDescribe('s2', 'select * from t') < 0 then nop
/* an error, reported in SQLCA */
rc = SQLCommand('bad', 'select * from no_such_table')
say 'bad sql rc:' rc '-' sqlca.sqlerrm
if SQLDisconnect('c1') < 0 then call Abort 'disconnect'
call SQLDropFuncs 'UNLOAD'
say 'done'
exit 0


Abort:
  say 'FAILED:' arg(1) '-' sqlca.sqlerrm sqlca.interrm
  exit 1

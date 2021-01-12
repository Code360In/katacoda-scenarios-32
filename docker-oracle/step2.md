<h1>Unlock HR account</h1>

SQLPlus in Linux environment does not support using up/down arrows for accessing the previous/next command.

The rlwrap (readline wrapper) utility provides a command history and editing of keyboard input for any other command. Start sqlplus with the rlwrap utility.

`rlwrap sqlplus / as sysdba`{{execute}}


Inside SQL Plus in the container shell, input:

`show con_name`{{execute}}

Oracle by default connects to the CDB$ROOT Container database.

To change to the xepdb1 container,

`alter  session  set  container  = xepdb1;`{{execute}}


The con_name parameter shows whether you have successfully changed the container 

`SHOW con_name`{{execute}}


By default, the HR sample account should be expired and locked.

`select username, account_status from dba_users where username='HR';`{{execute}}


To format the column width in sqlplus (where n is the the desired display width and columnname is a column of a table):

<pre> COLUMN columnname FORMAT An </pre>

Try:
`COLUMN username FORMAT a40`{{execute}}

`select username, account_status from dba_users where username='HR';`{{execute}}
 

To unlock the HR account:
`alter  user  hr identified  by hr account unlock;`{{execute}}


The HR account should now be opened.
`select username, account_status from dba_users where username='HR';`{{execute}}


Connect as HR as follows inside SQL Plus as follows.

`connect hr/hr@localhost/xepdb1`{{execute}}


Try the following commands in sqlplus to examine the tables in XEPDB1.

`select table_name from user_tables ;`{{execute}}

`describe jobs;`{{execute}}

`select * from employees;`{{execute}}

Exit the sqlplus environment.
`exit`{{execute}}


To connect to HR account using the sqlplus command line insider the Docker container shell, you may use the following command.

`sqlplus hr/hr@localhost/XEPDB1`{{execute}}


Exit the sqlplus environment.
`exit`{{execute}}

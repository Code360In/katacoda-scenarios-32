Connect to the Oracle database container as *system* user and perform the following tasks

* create  three local users u1, u2 and u3 (with password u1, u2, u3 respectively) in sqlplus. 
* Grant the create session privilege to the three users. 
* Grant create table privilege to u1 and grant u1 1MB quota on APP_DATA tablespace.


a) Login as  user u1 in sqlplus. Create a table t and insert a row into t.

`create table t (username varchar(10), pass varchar(10));`{{execute}}

`insert into t values ('alice', '123');`{{execute}}

Commit the change after table updates.

`commit;`{{execute}}

Select from the created table.

`select * from t;`{{execute}}

Sample output:

```
USERNAME   PASS
---------- ----------
alice      123
```

Grant user u2 the `SELECT` privilege on table t.

Login as user u2 and execute the following query to view the data.

`conn u2/u2`{{execute}}

`select * from u1.t;`{{execute}}


Can u2 grant the select privilege to others?  Explain your answer.

`grant select on u1.t to u3; `{{execute}}
 

 
b) The owner of an object can grant it to another user by specifying the **WITH GRANT OPTION** clause in the GRANT statement. 
The new grantee can further grant the same level of access to other users or roles.

As user u1, grant u2 the `SELECT` privilege `WITH GRANT` option.

`conn u1/u1`{{execute}}

`grant select on t to u2 with grant option;`{{execute}}


Review the object privilege of the granted object privileges.

Specify the column width for formatting the output (if you are using sqlplus).

`column grantee format a20;`{{execute}}

`column grantor format a20;`{{execute}}

`column owner format a20;`{{execute}}

`column table_name format a20;`{{execute}}

`column grantable format a20;`{{execute}}

`column privilege format a20;`{{execute}}

`set linesize 200;`{{execute}}


```
column grantee format a10;
column grantor format a10;
column owner format a10;
column table_name format a10;
column grantable format a10;
column privilege format a20;
set linesize 200;
```{{execute}}

View the object privileges.

`select GRANTEE, OWNER, TABLE_NAME, GRANTOR, PRIVILEGE, GRANTABLE from USER_TAB_PRIVS;`{{execute}}

Sample output:

```
GRANTEE    OWNER      TABLE_NAME GRANTOR    PRIVILEGE            GRANTABLE
---------- ---------- ---------- ---------- -------------------- ----------
U2         U1         T          U1         SELECT               YES
```

> Visit 
https://docs.oracle.com/en/database/oracle/oracle-database/18/refrn/DBA_TAB_PRIVS.html to understand the different columns related to object privileges.


As user u2, grant the SELECT privilege on u1.t to u3.


As user u3, verify that that the user `u2` can select from the table `u1.t`.

`select * from u1.t;`{{execute}}


c) As u1, revoke the SELECT privilege from U2.

`revoke select on u1.t from u2`{{execute}}

Review the object privileges of the various users after the revocation

`select * from USER_TAB_PRIVS;`{{execute}}


Exit the sqlplus environment.
`exit`{{execute}}


Exit the docker container shell.
`exit`{{execute}}


- - -

> **Checking and submission:**
>
> Execute the following command and input your student ID and name.
> 
> `input_name`{{execute}}
>
> Click **Continue** below to check if the tasks have been completed successfully.
>
>


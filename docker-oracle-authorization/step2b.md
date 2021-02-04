
Switch to terminal 1. 
As `SYSTEM` user, grant `micky` the "create session" permission.

`grant create session to mickey ;`{{execute T1}}


Show the granted system privileges by querying the DBA_SYS_PRIVS view.

`select * from DBA_SYS_PRIVS where GRANTEE = 'MICKEY';`{{execute T1}}


Describe the DBA_SYS_PRIVS table to understand  more about the attributes:

`describe DBA_SYS_PRIVS`{{execute T1}}

> Visit https://docs.oracle.com/en/database/oracle/oracle-database/19/refrn/DBA_SYS_PRIVS.html to understand  the different columns of DBA_SYS_PRIVS.


In terminal 2, login as mickey again. The login should be successful.

`sqlplus mickey/mickey`{{execute T2}}

Show the current logged in user:

`show user`{{execute T2}}

Sample output:
```
USER is "MICKEY"
```


As mickey, create a "customers" table .

`CREATE TABLE customers(customer_id NUMBER, name VARCHAR2(255) NOT NULL);`{{execute T2}}

You should receive the following error message as `Mickey` does not have the `Create Table` system privilege.

```
ERROR at line 1:
ORA-01031: insufficient privileges

```

We can either grant `Mickey` the `Create Table` system privilege or through the `RESOURCE` role.


In T1, as system user, show the system privilege associated with the "RESOURCE" role.

`select * from dba_sys_privs where grantee='RESOURCE';`{{execute T1}}

Sample out:

```
GRANTEE  PRIVILEGE                                ADM COM INH
-------- ---------------------------------------- --- --- ---
RESOURCE CREATE TABLE                             NO  NO  NO
RESOURCE CREATE TYPE                              NO  NO  NO
RESOURCE CREATE OPERATOR                          NO  NO  NO
RESOURCE CREATE INDEXTYPE                         NO  NO  NO
RESOURCE CREATE CLUSTER                           NO  NO  NO
RESOURCE CREATE PROCEDURE                         NO  NO  NO
RESOURCE CREATE SEQUENCE                          NO  NO  NO
RESOURCE CREATE TRIGGER                           NO  NO  NO
```

Grant the `Resource` role to Mickey.

`grant RESOURCE to mickey;`{{execute T1}}


Verify that the role is granted successfully to mickey (we first set the width of the columns for formatting the output with the `column` command). 

`column GRANTEE form A20`{{execute T1}}

`column GRANTED_ROLE form A20`{{execute T1}}

`SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'MICKEY';`{{execute T1}}


We can either grant `Mickey` the `Create Table` system privilege or through the `RESOURCE` role.


In T1, as system user, show the system privilege associated with the "RESOURCE" role.

`select * from dba_sys_privs where grantee='RESOURCE';`{{execute T1}}

Sample output:

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

> Visit https://docs.oracle.com/en/database/oracle/oracle-database/19/refrn/DBA_ROLE_PRIVS.html to understand  the different columns of DBA_SYS_PRIVS.


Grant the `Resource` role to Mickey.

`grant RESOURCE to mickey;`{{execute T1}}


Verify that the role is granted successfully to mickey (we first set the width of the columns for formatting the output with the `column` command). 

`column GRANTEE form A20`{{execute T1}}

`column GRANTED_ROLE form A20`{{execute T1}}

`SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'MICKEY';`{{execute T1}}
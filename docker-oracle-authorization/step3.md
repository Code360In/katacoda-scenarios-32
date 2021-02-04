
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

You may ignore the warning related to `PRODUCT_USER_PROFILE` and `pupbld.sql`.

```
Error accessing PRODUCT_USER_PROFILE
Warning:  Product user profile information not loaded!
You may need to run PUPBLD.SQL as SYSTEM
```

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

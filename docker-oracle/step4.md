<h1>Users and Privileges</h1>

Connect as **system** user in SALESPDB using sqlplus.

`rlwrap sqlplus system/12345@localhost/SALESPDB`{{execute T1}}


Check the current PDB: 

`show con_name`{{execute T1}}


As **system** user, create user mickey with password mickey in SALESPDB as the default tablespace.

`create user mickey identified by mickey default tablespace users temporary tablespace temp;`{{execute T1}}


Open another terminal. In terminal 2, login as mickey.
`docker exec -it oracle-xe /bin/sh`{{execute T2}
`su oracle`{{execute T2}
`sqlplus mickey/mickey@localhost/SALESPDB`{{execute T2}}

The mickey account currently doesn't have "Create Session" Privilege.


Switch to terminal 1. As SYSTEM user, grant micky the  "create session" permission.

`grant create session to mickey ;`{{execute T1}}


Show the granted system privileges by querying the DBA_SYS_PRIVS view.

`select * from DBA_SYS_PRIVS where GRANTEE = 'MICKEY';`{{execute T1}}


In terminal 2, login as mickey again. The login should be successful.

`sqlplus mickey/mickey@localhost/SALESPDB`{{execute T2}}


As mickey, create a "customers" table .

`CREATE TABLE customers(customer_id NUMBER, name VARCHAR2(255) NOT NULL);`{{execute T2}}


As system user, show the system privilege associated with the "RESOURCE" role.

`select * from dba_sys_privs where grantee='RESOURCE';`{{execute T1}}

``{{execute T1}}


Grant the Resource role to Mickey.

`grant RESOURCE to mickey;`{{execute T1}}


Verify that the role is granted successfully to mickey

`SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'MICKEY';`{{execute T1}}


We need to ensure our new user has disk space allocated in the system to actually create or modify tables and data. To grant micky 1Mb of quota, 

`ALTER USER mickey quota 1M on USERS;`{{execute T1}}

You may also grant unlimited quota to mickey as follows.

`grant unlimited tablespace to mickey;`{{execute T1}}


Logout from Mickey’s session and login again to refresh the permission.

`exit`{{execute T2}}

`sqlplus mickey/mickey@localhost/SALESPDB`{{execute T2}}


As Mickey, try to create a “customers” table again, insert data and select from it.
`CREATE TABLE customers(customer_id NUMBER, name VARCHAR2(255) NOT NULL);`{{execute}}

`INSERT into CUSTOMERS (CUSTOMER_ID,NAME) values (177,'United Continental Holdings'); `{{execute}}

`SELECT * FROM CUSTOMERS;`{{execute}}

Exit the sqlplus environment.
`exit`{{execute}}


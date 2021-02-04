
We need to ensure that the new user has disk space allocated in the system to  create or modify tables and data. 

To grant `mickey` 1Mb of quota on the `APP_DATA` tablespace,

`ALTER USER mickey quota 1M on APP_DATA;`{{execute T1}}

You may also grant unlimited quota to mickey as follows.

`grant unlimited tablespace to mickey;`{{execute T1}}


Logout from Mickey’s session and login again to refresh the permission.

`exit`{{execute T2}}

`sqlplus mickey/mickey`{{execute T2}}


As Mickey, try to create a "customers" table again, insert data and select from it.

`CREATE TABLE customers(customer_id NUMBER, name VARCHAR2(30) NOT NULL);`{{execute}}

`INSERT into CUSTOMERS (CUSTOMER_ID,NAME) values (177,'United Continental Holdings'); `{{execute}}

`SELECT * FROM CUSTOMERS;`{{execute}}

Exit the sqlplus environment.

`exit`{{execute}}

Exit the docker container shell.

`exit`{{execute}}


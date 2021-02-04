Connect to the database with sqlplus as *system* user. 

As system user, 
* create 3 three local users u1, u2 and u3 in SALESPDB in sqlplus. 
* Grant the create session privilege to the 3 users. 
* Grant create table privilege to u1 and grant u1 1MB quota on USERS tablespace.


a) As user u1, create a table t and insert a row into t.

`create table t (username varchar(10), pass varchar(10));`{{execute}}

`insert into t values ('alice', '123');`{{execute}}


Grant user u2 the SELECT privilege on table t.

Login as user u2 and execute the following query to view the data.

`select * from u1.t;`{{execute}}


Can u2 grant the select privilege to others?  Explain your answer.

`grant select on u1.t to u3; `{{execute}}
 
 
b) The owner of an object can grant it to another user by specifying the **WITH GRANT OPTION** clause in the GRANT statement. The new grantee can then grant the same level of access to other users or roles.

As user u1, grant u2 the SELECT privilege WITH GRANT option.

Review the object privilege of the granted object privileges.

`select * from USER_TAB_PRIVS;`{{execute}}

As user u2, grant the SELECT privilege on u1.t to u3.

As user u3, verify that that the user can select on the table u1.t.

`select * from u1.t;`{{execute}}


c) As u1, revoke the SELECT privilege from U2.

`revoke select on u1.t from u2`{{execute}}

Review the object privileges of the various users after the revocation

`select * from USER_TAB_PRIVS;`{{execute}}


Exit the sqlplus environment.
`exit`{{execute}}


Exit the docker container shell.
`exit`{{execute}}


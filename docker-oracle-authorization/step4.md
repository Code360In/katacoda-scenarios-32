As u1, revoke the SELECT privilege from U2.

`conn u1/u1`{{execute}}

`revoke select on u1.t from u2;`{{execute}}

Review the object privileges of the various users after the revocation

`select GRANTEE, OWNER, TABLE_NAME, GRANTOR, PRIVILEGE, GRANTABLE,type from USER_TAB_PRIVS where type='TABLE';`{{execute}}

Exit the sqlplus environment.
`exit`{{execute}}


Exit the docker container shell.
`exit`{{execute}}

Launch a shell in the Oracle18C XE container. 

`docker exec -it oracle-xe /bin/sh`{{execute}}


Change to "oracle" user.
 
`su oracle`{{execute}}


Connect to the database server as **sys** user.

`sqlplus / as  sysdba`{{execute}}


Change the password of the **system** user.

`alter user system identified by "12345";`{{execute}}


The user accounts in oracle are stored in all_users view.

`describe all_users`{{execute}}


Use the following SQL statement to show all usernames.

`select USERNAME from all_users;`{{execute}}

Exit the sqlplus environment.

`exit`{{execute}}
Open another terminal (terminal 2). Execute the following commands in terminal 2.

View the docker images and running containers.

`docker images`{{execute T2}}

`docker container ls`{{execute T2}}


Connect to the postgres DB which stores the vote count.

`docker exec -it db  /bin/sh`{{execute T2}}

`su postgres`{{execute T2}}

`psql`{{execute T2}}

Examine the Postgres database using the command line interface.

List the databases.
`\l`{{execute T2}}


Connect to the *postgres* database show the tables in the DB.
`\c postgres`{{execute T2}}


`\dt`{{execute T2}}


Select the rows from the votes table.
`select * from votes;`{{execute T2}}


Cast some votes using the voting app and examine the records in the table.


Quit the postgres CLI and exit the container after completing the above tasks.

`\q`{{execute T2}}

`exit`{{execute T2}}

`exit`{{execute T2}}




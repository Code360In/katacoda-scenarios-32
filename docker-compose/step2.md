<h1>Exploring the votes database</h1>

Open another terminal (terminal 2). 

Execute the following commands in terminal 2.

View the docker images and running containers.
`docker images`{{execute T2}}

`docker container ls`{{execute T2}}


Connect to the postgres DB which stores the votes.
`docker exec -it db  /bin/sh`{{execute T2}}
`su postgres`{{execute T2}}


Input the following commands inside the Postgres database command line interface.

List the databases.
`\l`{{execute T2}}



Connect to the postgres database.
`\c postgres`{{execute T2}}


Show the tables in postgres database.
`\dt`{{execute T2}}


Select the rows from the votes table.
`select * from votes;`{{execute T2}}


Cast some votes using the voting app and examine the records in the table.


Quiz the postgres CLI and exit the container.
`\q`{{execute T2}}
`exit`{{execute T2}}
`exit`{{execute T2}}



Reference:
1. https://www.freecodecamp.org/news/a-practical-introduction-to-docker-compose/
2. https://github.com/dockersamples/example-voting-app

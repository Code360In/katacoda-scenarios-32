
Clone the following github repository.

`git clone https://github.com/cswclui/docker-lamp`{{execute}}


View the docker compose file at `docker-lamp/docker-compose.yml` in the editor.

Start up the servers by using docker-compose.

Execute:
`cd docker-lamp`{{execute}}

`docker-compose up -d`{{execute}}}


View the PHP application at at `localhost:8001`
https://[[HOST_SUBDOMAIN]]-8000-[[KATACODA_HOST]].environments.katacoda.com


You may access the phpmyadmin tool at `localhost:8008` with the following username/password:

```
MYSQL_USER: user
MYSQL_PASSWORD: test
```
https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com


You may also access the databse using mysql client.

`docker run -it mysql mysql -u user -ptest`{{execute}}

`show databases`{{execute}}




Create a docker network for communication between redis servers (if not done so before).

`docker network create my-network`{{execute T1}}

Launch a Redis master DB server `redis1` with connection to `my-network`.

`docker run -d --network my-network --name redis1 -it redis`{{execute T1}}

Launch our first Redis slave DB server `redis2` with connection to `my-network`. 

`docker run -d --network my-network --name redis2 -it redis redis-server --slaveof redis1 6379`{{execute T1}}

Launch our second Redis slave DB server `redis3` with connection to `my-network`.

`docker run -d --network my-network --name redis3 -it redis redis-server --slaveof redis1 6379`{{execute T1}}

Check that the three Redis DB Server containers are running.

`docker ps`{{execute T1}}


Check the replication status of the three servers.

`docker exec -it redis1 redis-cli info replication`{{execute T1}}

`docker exec -it redis2 redis-cli info replication`{{execute T1}}

`docker exec -it redis3 redis-cli info replication`{{execute T1}}



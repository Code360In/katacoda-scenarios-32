Create a docker network for communication between redis servers (if not done so before).

`docker network create my-network`{{execute T1}}

Launch a Redis master DB server `redis1` with connection to `my-network`.

`docker run -d --network my-network --name redis1 -it redis`{{execute T1}}

Launch our first Redis slave DB server `redis2` with connection to `my-network`. 

`docker run -d --network my-network --name redis2 -it redis redis-server --slaveof redis1 6379`{{execute T1}}

Launch our second Redis slave DB server `redis3` with connection to `my-network`.

`docker run -d --network my-network --name redis3 -it redis redis-server --slaveof redis1 6379`{{execute T1}}


Check the replication status of the three servers.

`docker exec -it redis1 redis-cli replication`{{execute T1}}

`docker exec -it redis2 redis-cli replication`{{execute T2}}

`docker exec -it redis3 redis-cli replication`{{execute T3}}


In terminal 1, connect to Redis master and define a key.

`docker exec -it redis1 redis-cli`{{execute T1}}

`set message "This is a message from master"`{{execute T1}}

Open another terminal (T2).

In T2, connect to the Redis slave DB `redis2` and check if the key is present.

`docker exec -it redis2 redis-cli`{{execute T2}}

`keys *"`{{execute T2}}

`keys *"`{{execute T2}}

What happens if you try to create a key in the slave DB?

`set message "This is a message from slave"`{{execute T2}}


Repeat the above steps for the Redis slave DB `redis3`.


``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}
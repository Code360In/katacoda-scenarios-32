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


In terminal 1, connect to Redis master and define a key.

`docker exec -it redis1 redis-cli`{{execute T1}}

`set message1 "This is a redis1"`{{execute T1}}

Exit the redis-cli.

`exit`


Open another terminal (T2).

In T2, connect to the Redis slave DB `redis2` and check if the key is present.

`docker exec -it redis2 redis-cli`{{execute T2}}

`keys *"`{{execute T2}}

`keys *"`{{execute T2}}

What happens if you try to create a key in the slave DB?

`set message2 "This is redis2"`{{execute T2}}

Repeat the above steps for the Redis slave DB `redis3`.


In T1, simulate the scenario where the master Redis server `redis1` is down by stopping the container.

`docker stop redis1`{{execute T1}}

In T2, Check the log of the redis slaves.

`docker logs redis2'{{execute T2}}

`docker logs redis3'{{execute T2}}

Without the Redis master , we can only read from DB but not write to the DB.

In T1, restart the Redis master.

`docker start redis1`{{execute T1}}


In T2, Check the log of the redis slaves.

`docker logs redis2'{{execute T2}}

`docker logs redis3'{{execute T2}}


We will setup a Redis Sentinel Server to monitor the status of the Redis Master Server. One of the slaves will be promoted to master when the originla master is down.

In terminal T1, start another redis container `sentinel` and launch a bash shell in the container.

`docker run --network my-network --name sentinel -it redis bash `{{execute}}

Inside the container's bash shell, create the sentinel config file.

```cat <<EOT >sentinel.conf
sentinel monitor mymaster redis1 6379 1
sentinel down-after-milliseconds mymaster 5000
sentinel failover-timeout mymaster 5000
EOT
```{{execute T1}}

Launch the redis-server with `--sentinel` option.

`redis-server sentinel.conf --sentinel`{{execute T1}}

In terminal T2, stop the Redis master DB server. 

`docker stop `{{execute T1}}

Observe the log from the Redis sentinel server.

Check the replication status of `redis2` and `redis3` servers.

`docker exec -it redis2 redis-cli info replication`{{execute T2}}

`docker exec -it redis3 redis-cli info replication`{{execute T2}}

> Exercise: Define a key in the new Redis master and verify if the key is presence in the other slave server
.

Simulate the scenario that `redis1` is now up again. Check the replication status of the three redis DB servers.

`docker exec -it redis1 redis-cli info replication`{{execute T2}}

`docker exec -it redis2 redis-cli info replication`{{execute T2}}

`docker exec -it redis3 redis-cli info replication`{{execute T2}}



``{{execute}}

``{{execute}}

``{{execute}}
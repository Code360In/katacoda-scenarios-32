

We will setup a Redis Sentinel Server to monitor the status of the Redis Master Server. One of the slaves will be promoted to master when the original master is down.

In terminal T1, start another Redis container `sentinel` and launch a bash shell in the container.

`docker run --network my-network --name sentinel -it redis bash `{{execute}}

Inside the container's bash shell, create the sentinel config file.

```cat <<EOT >sentinel.conf
sentinel monitor mymaster redis1 6379 1
sentinel down-after-milliseconds mymaster 5000
sentinel failover-timeout mymaster 5000
EOT
```{{execute T1}}

Check the created config file.

`cat sentinel.conf`{{execute T1}}

Launch the redis-server with `--sentinel` option.

`redis-server sentinel.conf --sentinel`{{execute T1}}

In terminal T2, stop the Redis master DB server. 

`docker stop redis1`{{execute T2}}

Observe the log from the Redis sentinel server.

Check the replication status of `redis2` and `redis3` servers to check if any of them is promoted to master.

`docker exec -it redis2 redis-cli info replication`{{execute T2}}

`docker exec -it redis3 redis-cli info replication`{{execute T2}}

> **Exercise**: 
>
> Define a key in the new Redis master and verify if the data is replicated to the other slave server.
>
>


Suppose now the Redis server `redis1` is now up again. 

`docker start redis1`{{execute T2}}

Check the replication status of the three redis DB servers.

`docker exec -it redis1 redis-cli info replication`{{execute T2}}

`docker exec -it redis2 redis-cli info replication`{{execute T2}}

`docker exec -it redis3 redis-cli info replication`{{execute T2}}

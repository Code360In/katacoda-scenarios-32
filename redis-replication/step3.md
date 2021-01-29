

In T1, simulate the scenario where the master Redis server `redis1` is down by stopping the container.

`docker stop redis1`{{execute T1}}

In T2, Check the log and status of the Redis slaves.

`docker logs redis2`{{execute T2}}

`docker exec -it redis2 redis-cli info replication`{{execute T2}}



Without the Redis master , we can only read from DB but not write to the DB.

In T1, restart the Redis master.

`docker start redis1`{{execute T1}}


In T2, Check the log of the Redis slaves.

`docker logs redis2`{{execute T2}}

`docker logs redis3`{{execute T2}}
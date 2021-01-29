
In terminal 1, connect to Redis master and define a key.

`docker exec -it redis1 redis-cli`{{execute T1}}

`set message1 "This is a redis1"`{{execute T1}}

Exit the redis-cli.

`exit`{{execute T1}}


Open another terminal (T2).

In T2, connect to the Redis slave DB `redis2` and check if the key is present.

`docker exec -it redis2 redis-cli`{{execute T2}}

`keys *`{{execute T2}}


What happens if you try to create a key in the slave DB?

`set message2 "This is redis2"`{{execute T2}}

Exit the redis-cli.

`exit`{execute T2}}


Repeat the above steps for the Redis slave DB `redis3`.

Start a Redis server in docker and run in background.

`docker run --name redis -d -p 6379:6379 redis redis-server`{{execute T1}}

Install python modules with pip.

`pip install redis`{{execute T1}}

Execute redis-cli to and connect to Redis

`docker exec -it redis redis-cli`{{execute T1}}


Open two more terminals T2, T3 and T4. 


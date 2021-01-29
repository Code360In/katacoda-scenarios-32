Start a Redis server in docker and run in background.

`docker run --name redis -d redis redis-server`{{execute}}

Execute redis-cli in the container which connects to the Redis server at localhost port default port 6379.

`docker exec -it redis redis-cli`{{execute}}


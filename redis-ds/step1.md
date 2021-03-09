First, create a docker network.
`docker network create my-network`{{execute}}

Start a Redis server in docker and run in background.

`docker run --name redis -d --net my-network  redis redis-server`{{execute}}

Execute redis-cli in the container which connects to the Redis server at localhost port default port 6379.

`docker exec -it redis redis-cli`{{execute}}


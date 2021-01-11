<h1>Stopping and removing the running containers</h1>
Check the container id of the various containers:

`docker ps -a`{{execute}}

To stop and remove the running containers:
<pre>
docker container rm -f [container ID's prefix]
</pre>

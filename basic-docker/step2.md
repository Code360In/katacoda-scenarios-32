<h1>Running an Debian Linux Image</h1>
The following pull command fetches the busybox image from the Docker registry and saves it to our system. 

Try: `docker pull debian`{{execute}}


Run the ubuntu docker image:	<br/>
`docker run debian`{{execute}}

The container will stop immediately.

Show the running containers:
`docker ps`{{execute}}


Show all containers (including stopped one):<br/>
`docker ps -a`{{execute}}


Connect container to terminal with -it option:
`docker run -it debian`{{execute}}

In the docker container, type some commands, e.g.<br/>

`ls`{{execute}}


Exit the docker container.

`exit`{{execute}}


You may append a command to execute when the container starts:
`docker run debian echo "hello"`{{execute}}



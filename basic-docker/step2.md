<h1>Running a Debian Linux Image</h1>

The following pull command fetches the Debian official image from the Docker Hub and saves it to our system. 

Try: `docker pull debian:7`{{execute}}

Note:
- debian: The name of the Docker image that you want to run
- 7: The version/tag of the Docker image (The default is :latest)


More information about the Docker image is available at https://hub.docker.com/_/debian .


Run the Debian docker image:	<br/>
`docker run debian`{{execute}}

The container will stop immediately.

Show the running containers:
`docker ps`{{execute}}


Show all containers (including stopped one):<br/>
`docker ps -a`{{execute}}


You may append a command to execute when the container starts:

`docker run debian echo "hello"`{{execute}}



Connect container to terminal with -it option (which runs the docker container interactively):
`docker run -it debian`{{execute}}

In the docker container, type some commands, e.g.<br/>

`ls`{{execute}}

`curl` is a command line tool in Linux to transfer data to or from a server.


What's the output? Why?

Try to run figlet in our container.

`figlet hello`{{execute}}

The program is not installed in the image.

`apt` is a command-line utility for installing, updating, removing and managing deb packages on Ubuntu/Debian Linux. Execute the following command to install `curl` using `apt`.

Let's install it using `apt` utility. First, updates the list of available packages and their versions.

`apt update `{{execute}}

After that, install the `figlet` program.

`apt install figlet `{{execute}}

Execute the following command again.

` figlet hello`{{execute}}

 Sample output:

 ```
 _          _ _       
| |__   ___| | | ___  
| '_ \ / _ \ | |/ _ \ 
| | | |  __/ | | (_) |
|_| |_|\___|_|_|\___/ 

```                  


Exit the docker container.

`exit`{{execute}}





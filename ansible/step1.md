Define `docker-compose.yaml` file as follows to launch three SSH server.

<pre class="file" data-filename="docker-compose.yaml" data-target="replace">
version: "2.1"
services:
 server1:
    image: cswclui/pythonssh
    container_name: server1
    hostname: server1
 server2:
    image: cswclui/pythonssh
    container_name: server2
    hostname: server2

 server3:
    image: cswclui/pythonssh
    container_name: server3
    hostname: server3
   
</pre>

In terminal 1, execute 

`docker-compose up`{{execute T1}}




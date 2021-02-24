Define `docker-compose.yaml` file as follows to launch three SSH server.

<pre class="file" data-filename="docker-compose.yaml" data-target="replace">
version: "2.1"
services:
 server1:
    image: ghcr.io/linuxserver/openssh-server
    container_name: server1
    hostname: server1
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=123 #optional
      - USER_NAME=alice #optional
    ports:
      - 2222:2222
 server2:
    image: ghcr.io/linuxserver/openssh-server
    container_name: server2
    hostname: server2
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=123 #optional
      - USER_NAME=alice #optional
    ports:
      - 2223:2222
 server3:
    image: ghcr.io/linuxserver/openssh-server
    container_name: server3
    hostname: server3
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=123 #optional
      - USER_NAME=alice #optional
    ports:
      - 2224:2222
   
</pre>

In terminal 1, execute 

`docker-compose up`{{execute T1}}




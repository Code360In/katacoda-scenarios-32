Define `

<pre class="file" data-filename="docker-compose.yaml" data-target="replace">
version: "2.1"
services:
 server1:
    image: ghcr.io/linuxserver/openssh-server
    container_name: openssh-server
    hostname: server1
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=12345 #optional
      - USER_NAME=alice #optional
    ports:
      - 2222:2222
 server2:
    image: ghcr.io/linuxserver/openssh-server
    container_name: openssh-server
    hostname: server2
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=12345 #optional
      - USER_NAME=alice #optional
    ports:
      - 2223:2222
 server3:
    image: ghcr.io/linuxserver/openssh-server
    container_name: openssh-server
    hostname: server3
    environment:
      - SUDO_ACCESS=true #optional
      - PASSWORD_ACCESS=true #optional
      - USER_PASSWORD=12345 #optional
      - USER_NAME=alice #optional
    ports:
      - 2224:2222
   
</pre>

In terminal 1, execute 

`docker-compose up`{{execute T1}}

In terminal 2, execute 

`docker ps`{{execute T2}}

Establish a SSH connection to server1 

`ssh -p 2222 root@localhost `{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}


``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}




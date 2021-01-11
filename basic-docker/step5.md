<h1>Running a nginx web server</h1>
Execute
`docker run -p 20080:80 nginx`{{execute}}


Start three instances of nginx docker containers. Use the -d option runs the container in detached mode (the server will run in background).

`docker run -d -p 20080:80 --name ws1 nginx`{{execute}}

`docker run -d -p 20081:80 --name ws2 nginx`{{execute}}

`docker run -d -p 20082:80 --name ws3 nginx`{{execute}}

Check that there are three running nginx containers
`docker container ls`{{execute}}

`docker exec ws1 /bin/bash -c "echo 'This is server 1' > /usr/share/nginx/html/index.html"`{{execute}}

`docker exec ws2 /bin/bash -c "echo 'This is server 2' > /usr/share/nginx/html/index.html"`{{execute}}

`docker exec ws3 /bin/bash -c "echo 'This is server 3' > /usr/share/nginx/html/index.html"`{{execute}}

Access the three instances of webservers at
<pre>http://localhost:20080/, http://localhost:20081/, http://localhost:20082/</pre>

https://[[HOST_SUBDOMAIN]]-20080-[[KATACODA_HOST]].environments.katacoda.com/

https://[[HOST_SUBDOMAIN]]-20081-[[KATACODA_HOST]].environments.katacoda.com/

https://[[HOST_SUBDOMAIN]]-20082-[[KATACODA_HOST]].environments.katacoda.com/

Stop and remove the container after completing the exercise.


Run the image as a docker container. Note that the -p switch exposes port 80 externally in the host and map to port 8080 inside the container.

`docker run --name app -p 80:8080 mywebapp`{{execute}}


Open a second terminal and verify that the flask app can be accessed at localhost at port 80.

`curl localhost:80/`{{execute T2}}

`curl localhost:80/about`{{execute T2}}
 
Test the application in browser at:

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/about




<h1>Running the python flask app docker image</h1>

Run the image as a docker container. Note that the -p switch exposes port 80 externally in the host and map to port 8080 inside the container.

`docker run -p 80:8080 mywebapp`{{execute}}


Verify that the flask app can be accessed localhost at 80.
`curl localhost:80`{{execute}}}

Test the application in browser at http://localhost

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/
Stop the server with Ctrl+C.


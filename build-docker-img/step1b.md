Define the following  "DockerFile".

<pre class="file" data-filename="Dockerfile" data-target="replace">
# Use the latest debian linux image as a parent image
FROM debian:latest

# ENTRYPOINT specifies a command that will ALWAYS be executed when the container starts.
ENTRYPOINT ["echo"]

# CMD specifies arguments that will be fed to the ENTRYPOINT
CMD ["Hello World"]
</pre>

Wait until the above updates are saved. 

Build the docker image:

`docker build -t myimage .`{{execute}}


The following command will execute `echo hello` in the container.

`docker run myimage`{{execute}}

If arguments are provided after the image name, the specified argument will be fed to the ENTRYPOINT instead. The following command will execute `echo Docker is fun` in the container.

`docker run myimage "Docker is fun!"`{{execute}}




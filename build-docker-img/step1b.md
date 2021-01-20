
Create a file named "DockerFile" as follows:

The CMD specifies arguments that will be fed to the ENTRYPOINT.

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


Run the docker image:

`docker run myimage`{{execute}}

If arguments is provided after the image name, the specified argument will be fed to the ENTRYPOINT instead.

`docker run myimage "Docker is fun!"`{{execute}}




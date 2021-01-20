
Create a file named "DockerFile" as follows:

<pre class="file" data-filename="Dockerfile" data-target="replace">
# Use the latest debian linux image as a parent image
FROM debian:latest

# Create a folder 
RUN mkdir testing

# Run the command Echo "hello" when the container is launched
CMD ["Echo", "Hello"]
</pre>

RUN vs. CMD
* **RUN** lets you execute commands inside  your Docker image. The command executs once at build time and get written into your Docker image as a new layer.

* **CMD** lets you define a default command to run when your container starts. E.g. start your web application’s app server when the image is run (only one CMD command in the DockerFile).


Wait until the above updates are saved. 

Build the docker image:
`docker build -t myimage .`{{execute}}

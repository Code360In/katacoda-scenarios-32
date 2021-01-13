Define the following python flask application app.py:

<pre class="file" data-filename="app.py" data-target="replace">
import os
import socket
from flask import Flask,request,jsonify
app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome!"

@app.route('/about')
def hello():
    return 'I am '+socket.gethostname()

#TODO-add

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True, use_reloader=True)

</pre>


Create a file named "DockerFile" as follows:

<pre class="file" data-filename="Dockerfile" data-target="replace">
# Use an official Python runtime as a parent image
FROM python:slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]
</pre>

* **RUN** lets you execute commands inside  your Docker image. The command executs once at build time and get written into your Docker image as a new layer.

* **CMD** lets you define a default command to run when your container starts. E.g. start your web application’s app server when the image is run (only one CMD command in the DockerFile).


Define the file "requirements.txt" as follows.
<pre class="file" data-filename="requirements.txt" data-target="replace">
Flask
</pre>


Wait until the above updates are saved. 

Build docker image:
`docker build -t mywebapp .`{{execute}}

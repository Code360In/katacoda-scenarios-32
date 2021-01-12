<h1>Building a docker image for a python flask application</h1>

Define the following python flask application app.py:

<pre class="file" data-filename="app.py" data-target="replace">
import os
import socket
from flask import Flask
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
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]
</pre>

Define the file "requirements.txt" as follows.
<pre class="file" data-filename="requirements.txt" data-target="replace">
Flask
</pre>


Build docker image:
`docker build -t mywebapp .`{{execute}}

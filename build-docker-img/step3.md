<h1>Update the containerized application</h1>

Insert the following code after hello() in "app.py" to define a REST API endpoint for adding two numbers.
<pre class="file" data-filename="app.py" data-target="insert">
@app.route('/add', methods=['GET'])
def add():
    a = int(request.args['op1'])
    b = int(request.args['op2'])
    return jsonify({"operand 1": a, "operand 2": b, "sum":a+b}) #return JSON object
</pre>

Build and run the docker image:

`docker build -t mywebapp .`{{execute}}

`docker run -p 80:8080 mywebapp`{{execute}}


Access the the new endpoint "/add".

`curl localhost/add?3+5`{{execute T2}}}

`curl localhost/add?100+200`{{execute T2}}}

Test the application in browser at 

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/add?3+5
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/about/add?100+200

Stop the python flask server with Ctrl+C.


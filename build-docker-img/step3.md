<h1>Update the containerized application</h1>

Insert the following code after hello() in "app.py" to define a REST API endpoint for adding two numbers.
<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-add">

@app.route('/add', methods=['GET'])
def add():
    a = int(request.args['op1'])
    b = int(request.args['op2'])
    return jsonify({"operand 1": a, "operand 2": b, "sum":a+b}) #return JSON object
	
</pre>

Wait until the above updates are saved. 

Execute:
`docker cp app.py app:/app`{{execute}}


Test the application in browser at 

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/add?op1=3&op2=5
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/add?op1=100&op2=200

Stop the python flask server with Ctrl+C.

Stop and remove the app's docker container
`docker rm -f app`{{execute}}



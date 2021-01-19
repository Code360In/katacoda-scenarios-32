First, create a docker network.

`docker network create my-network`{{execute}}



Start mysql server container and connect to my-network.

`docker run --net my-network --name=mysql -e MYSQL_ROOT_PASSWORD="12345" -p 33306:3306 -d mysql:8`{{execute}}


Check the container log and wait until the database is initialized.

`docker logs mysql`{{execute}}

The container log should show the following message when the initialization is completed.
 
`MySQL init process done. Ready for start up.`




Define `app.py` as follows.
<pre class="file" data-filename="app.py" data-target="replace">
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost", 
  port=33306, #default mysql server port is 3306
  user="root",
  password="12345"
)
print(mydb)
</pre>

`docker run --name pythonapp -d python:slim /bin bash`{{execute}}

`docker cp app.py pythonapp:/`{{execute}}

`docker exec -it pythonapp /bin/bash`{{execute}}



Install mysql connector using pip 

`pip install mysql-connector-python`{{execute T1}}

Execute the python script inside python app container.
`python /app.py`{{execute T1}

Exit the pythonapp container.
`exit`{{execute}}

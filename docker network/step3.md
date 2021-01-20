

Define `app.py` as follows.
<pre class="file" data-filename="app.py" data-target="replace">
import mysql.connector

mydb = mysql.connector.connect(
  host="mysql",#the mysql server hostname
  port=3306, #default mysql server port is 3306
  user="root",
  password="12345"
)

cur = mydb.cursor()
cur.execute("SELECT VERSION()")
data = cur.fetchone()
print (f"Database version : {data} ")
mydb.close()
</pre>

The python script connects to the  MySQL Server "mysql". The docker network maps this to the internal IP address of the MySQL Server (with the container name "mysql").


Open a terminal T2.

In T2, Start docker container.

`docker run --net my-network --name pythonapp -it python:slim /bin/bash`{{execute T1}}

Install Python MySQL connection inside the container.

`pip install mysql-connector-python`{{execute T1}}

Open a third terminal (T3). 

To copy app.py from host machine to the python app container, execute in T3

`docker cp app.py pythonapp:/`{{execute T3}}

In Terminal T2, check that app.py exists at /.


`ls /`{{execute T2}}

Execute app.py inside the python app container:

`python /app.py`{{execute T2}}

Exit the python app container.

`exit`{{execute T2}}


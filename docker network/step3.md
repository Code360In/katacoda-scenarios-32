

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

`docker run --name pythonapp -it python:slim /bin/bash`{{execute T1}}

`pip install mysql-connector-python`{{execute T1}}

Open a second terminal (T2). 

Execute in T2:

`docker cp app.py pythonapp:/`{{execute}}


In T1, check that app.py exists at /.
`ls /`{{execute}

Execute the python script inside python app container.
`python /app.py`{{execute T1}

Exit the pythonapp container.
`exit`{{execute}}


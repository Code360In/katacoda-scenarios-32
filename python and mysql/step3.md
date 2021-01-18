
Define `interest.py` as follows.

<pre class="file" data-filename="interest.py" data-target="replace">
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost", 
  port=33306, #default mysql server port is 3306
  user="root",
  password="12345"
)

mycursor = mydb.cursor(dictionary=True)
mycursor.execute('DROP DATABASE IF EXISTS Sales');
mycursor.execute('CREATE DATABASE IF NOT EXISTS Sales');

#create Sales.INTEREST table


#insert data into Sales.INTEREST table


#Select from Sales.INTEREST table and output
mycursor.execute("select * from Sales.INTEREST")
myresult = mycursor.fetchall()
for x in myresult:
    print(x)
  
</pre>

Complete the code such that the script will create a table INTEREST under Sales database and insert the following sample data into the table. 

```
+------------+-------------+
| CustomerID | Interest    |
+------------+-------------+
| 1          | badminton   |
| 1          | tennis      |
| 2          | travel      |
| 2          | programming |
+------------+-------------+
```

Test your script:

`python3 interest.py`{{execute T1}}

Expected output of your python script:
```json
{'CustomerID': 1, 'Interest': 'badminton'}
{'CustomerID': 1, 'Interest': 'tennis'}
{'CustomerID': 2, 'Interest': 'travel'}
{'CustomerID': 2, 'Interest': 'programming'}

```

Check the database table using mysql client.

`docker exec -it mysql mysql -u root -p12345 -e "select * from Sales.INTEREST"`{{execute T1}}


Execute the following command and input your student ID and name.

`input_name`{{execute}}


Click **Continue** below to check your script for correctness.


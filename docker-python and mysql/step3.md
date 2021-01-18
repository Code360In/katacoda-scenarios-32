
Define `interest.py` as follows.

<pre class="file" data-filename="interest.py" data-target="replace">
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost", 
  port=33306, #default mysql server port is 3306
  user="root",
  password="12345"
)
print(mydb)
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



Test your script:
`python3 interest.py`{{execute T1}}


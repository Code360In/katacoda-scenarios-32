Define the SQL script "users.sql" to create a user tables and insert a number of users as follows.

```
CREATE DATABASE mydb;
USE mydb;
CREATE TABLE USER(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100),
	password VARCHAR(100),
	email VARCHAR(100),
	PRIMARY KEY (ID)
);

INSERT INTO USER (name, password, email) VALUES ('Admin','1581', 'Admin@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Alice','123','Alice@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Bob','555','Bob@abc.com');
INSERT INTO USER (name, password, email) VALUES ('Carol','3721','Carol@abc.com');
```{{copy}}

Copy the script into the docker container.

`docker cp users.sql mysql:/root`{{execute}}

Execute the above script in the mysql container.

` docker exec  mysql mysql -u root -p12345  -e "source /root/users.sql"`{{execute}}

Verify the created databases and tables.

` docker exec  mysql mysql -u root -p12345  -e "show databases"`{{execute}}

` docker exec  mysql mysql -u root -p12345  -e "select * from mydb.USER"`{{execute}}


Create login.php with the following code

```
<h1>Login</h1>
<form action="login.php" method="GET">
Username:
<input type="text" name="user_name"><br>
Password:
<input type="text" name="password"><br>
<input type="submit">
</form>


<?php
if (isset($_GET["user_name"]) && isset($_GET["password"])) {
  $servername = "mysql:3306";
   $username = "root";
   $password = "12345";
   // Create connection
   $conn = new mysqli($servername, $username, $password);
   // Check connection
   if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT name, password FROM mydb.USER WHERE name='"
        .$_GET["user_name"]."' and password='".$_GET["password"]."';";

    //$sql = "SELECT name, password FROM lab1.USER WHERE name='1'";
    printf("The SQL Statement:<br> $sql<br/></br>");


    $resultSet = $conn->query($sql);
      if (!$resultSet) {
        trigger_error('Invalid query: ' . $conn->error);
      }

      if ($resultSet->num_rows > 0) {
          $row = $resultSet ->fetch_assoc(); //fetch a result row as an associative array
            echo "<h2> Welcome: ".$row["name"]."</h2>";
      }
      else {
          echo "<h2>Invalid username/password!</h2>";
      }

    $conn->close();
}
?>

```{{copy}}

Copy login.php to the apache container.

`docker cp login.php apache:/var/www/html`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/login.php

Try:
* Login with username "Alice" and password "123"
* Login with an unknown user or wrong password


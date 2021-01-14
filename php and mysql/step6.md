<h2> SQL Injection</h2>
Malicious SQL statements are inserted by attackers to trick data-driven applications into executing unintended commands or bypassing security controls.
E.g. dump the database contents to the attackers, logging in without username and password, privilege escalation


In the login page, input the following username and submit the form
``` or 1=1 -- ```

This is an example of SQL Injection attack


> *Exercise*: 
>  Launch SQL injection to login as Bob without password


<h2> Prepared Statements</h2>

Modify login.php to make use of parametized query to defend against SQL injection.

```
<h1>Login</h1>
<form action="login2.php" method="GET">
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
	
	// prepare and bind
	$stmt = $conn->prepare("SELECT name, password FROM mydb.USER WHERE name=? and password=?");
	$stmt->bind_param("ss", $_GET["user_name"] , $_GET["password"]);

	//set parameters
	$user = $_GET["user_name"];
	$pw = $_GET["password"];
	
	//execute the prepared statement
	$result = $stmt->execute();

	//grab a result set
	$resultSet = $stmt->get_result();

	
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


Check that SQL injection no longer works.


> *Exercise*: 
>  Create a page addUser.php to allow users to be added to the Person table.
Defend against SQL injection by using parametrized query.

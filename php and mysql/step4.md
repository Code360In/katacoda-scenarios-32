Define "test3.php" in the host machine as follows.

```php

<?php
    $servername = "mysql:3306";
    $username = "root";
    $password = "12345";

    // Create connection
    $conn = new mysqli($servername, $username, $password);

    if ($conn->connect_error){
        die("Connection failed:".$conn->connect_error);
    }
    echo "Connected Successfullly"
?>

<H1>Show Actor Table</H1>
<?php

    $sql = "select * from sakila.actor ";
    $resultSet = $conn->query($sql);
    printf($resultSet->num_rows);
    
    print("<br/>")
    
    if ($resultSet->num_rows > 0) {
		
		// output data of each row
		while($row = $resultSet->fetch_assoc()) {
			//print_r($row);
			//printf($row['actor_id']);
			printf("ID: $row[actor_id], First Name: $row[first_name] <br/>");		
		}
	}

?>

<?php
    $conn->close();

?>
```

Copy test2.php to the apache container.

`docker cp test3.php apache:/var/www/html`{{execute}}

Test the PHP script.

`curl localhost/test3.php`{{execute}}

Visit localhost at port 80 with browser.
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/test3.php

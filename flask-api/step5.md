
Modify the API to support updating to a book.
Clients may send a HTTP PUT request to the endpoint to update a book. 
The updated book data in JSON should be sent in the body of the HTTP request.


In terminal 2, execute the following command to update the book information.

`curl -X PUT -H "Content-Type: application/json" -d '{"title": "Python programming (2nd Ed)", "author":"Author 5", "rating": 7.1}' localhost:5000/books/0`{{execute T2}}

The first book should be updated to
```json
{
	"title": "Python programming (2nd Ed)", 
	"author": "Author 5", 
	"rating": 7.1
	}
```

In terminal 2, use the following command to verify the result.

`curl http://localhost:5000/books`{{execute T2}}


Visit localhost:5000/books in browser to verify the result.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 
	
Click **Continue** below to check your script for correctness.


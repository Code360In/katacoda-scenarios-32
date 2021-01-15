> **Exercise:**
>
> Modify the API to support updating to a book.
> Application may send a HTTP PUT request to the endpoint to update a book. 
> The updated book data in JSON will be sent in the body of the HTTP request.


E.g. Suppose we want to  update the first book to 
```json
{
	"title": "Python programming (2nd Ed)", 
	"author": "Author 5", 
	"rating": 7.1
	}
```

Execute:

`curl -X PUT -H "Content-Type: application/json" -d '{"title": "Python programming (2nd Ed)", "author":"Author 5", "rating": 7.1}' localhost:5000/books/0`{{execute T2}}

Visit localhost:5000/books in browser to verify the result.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 
	
	
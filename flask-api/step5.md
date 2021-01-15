> **Exercise:**
>
> Modify the API to support updating to a book.
> Application may send a HTTP PUT request to the endpoint to update a book. 
> The updated book data in JSON will be sent in the body of the HTTP request.


E.g. To update the first book to {"title": "Python programming", "author":"author 5", "rating": 7.1}, execute:

`curl -X PUT -H "Content-Type: application/json" -d '{"title": "Python programming", "author":"author 5", "rating": 7.1}' https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books/0`{{execute T2}}

Visit localhost:5000/books in browser to verify the result.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 
	
	
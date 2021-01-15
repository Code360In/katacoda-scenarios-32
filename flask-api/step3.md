Add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-add_book">
@app.route('/books', methods=['POST'])
def add_books():
    print("add a book")
    data = request.json #json from request body
    new_book ={
         'title': data["title"],
         'author': data["author"],
         'rating': data["rating"]
    }
    books.append(new_book)
    return jsonify({'status':'success'}),200 
</pre>

Create books.json and define the following JSON object.

<pre class="file" data-filename="book.json" data-target="replace">
{
    "title": "Machine Learning",
    "author": "Author 3",
    "rating": 9.5
}
</pre>

Open a second terminal (T2). 

Add a book by running the following command in T2.

`curl -X POST -d @book.json -H "Content-Type: application/json" http://localhost:5000/books`{{execute T2}}

Visit localhost:5000/books in browser to list the books.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 

> **Exercise**:
> Use the API to create a book "MySQL in a Nutshell" with rating 9 and view the created book.


The above command generates an HTTP POST request to the /books endpoint with the following JSON object with the header `content-type=application/json`. You may view the HTTP request and response with -v option in curl.

`curl -v -X POST -d @book.json -H "Content-Type: application/json" http://localhost:5000/books`{{execute T2}}


If you are using Chrome browser, you may install one of the following REST API client plugin.

* [POSTMAN](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop/related?hl=en) 
* [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo). 

Specify  the HTTP header ```content-type=application/json```{{copy}}. Generete a POST request to the endpoint https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books . Check if new book is added.

Visit localhost:5000/books in browser to verify the result.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 



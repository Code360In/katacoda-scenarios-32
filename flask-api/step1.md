<h2>What is flask?</h2>
Flask is a web framework for Python, meaning that it provides functionality for building web applications, including managing HTTP requests and rendering templates.

<h2>Define and deploy a flask app</h2>
Define app.py as follows.

<pre class="file" data-filename="app.py" data-target="replace">
from flask import Flask, request,jsonify
import requests,json

#initialize flask app object
app = Flask(__name__)

books = [{
    "title": "Python programming",
    "author": "Author 1",
    "rating": 7.1
    },
    {
    "title": "Introduction to Database management",
    "author": "Author 2",
    "rating": 9
    }
]

@app.route('/books', methods=['GET'])
def get_books():
    print("get books")
    return jsonify(books),200 #200 is the response code

#TODO-add_book

#TODO-get_book_by_id

#TODO-delete_book_by_id

#start flask server
app.run(host='0.0.0.0', port=5000, debug=True)
</pre>


Install Flask using the pip package manager for Python (if not previously installed).

`pip install flask`{{execute}}

Execute the flask app.

`python app.py`{{execute}}

Visit localhost:5000/books in browser to list all the books.
https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 

hi

To support getting a book by book_id, add the following function to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-get_book_by_id">

@app.route('/books/\<book_id\>', methods=['GET'])
def get_book_by_id(book_id):
    book = books[int(book_id)]
    return jsonify(book),200 
</pre>

> Try:
> * https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books/0
> * https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books/1

To support adding new books, add the following code to app.py.

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

The above command generates an HTTP POST request to the /books endpoint with the following JSON object with the header `content-type=application/json`.

You may use the HTTP request and response with -v option.
`curl -v -X POST -d @book.json -H "Content-Type: application/json" http://localhost:5000/books`{{execute T2}}



If you are using Chrome browser, you may use REST API client such as [POSTMAN](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop/related?hl=en) or [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo).
Generate a HTTP post request to https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books and specify  the HTTP header ```content-type=application/json```{{copy}}.



After adding the new books, visit localhost:5000/books in browser to retrieve the updated book list.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books

``{{execute}}

To allow deleting book by book_id, add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-delete_book_by_id">
@app.route('/books/<book_id>', methods=['DELETE'])
def delete_book_by_id(book_id):
    del books[int(book_id)]
    return jsonify({'status':'success'}),200 
</pre>

``{{execute}}

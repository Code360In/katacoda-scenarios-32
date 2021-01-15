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


#set the request's content-type=application/json
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

#TODO-get_book_by_id

#TODO-delete_book_by_id

#start flask server
app.run(host='0.0.0.0', port=5000, debug=True)
</pre>


Install Flask using the pip package manager for Python (if not installed).

`pip install flask`{{execute}}

Execute the flask app.

`python app.py`{{execute}}

Visit localhost:5000/books in browser to list all the books.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books

To create a new book, create a HTTP POST request to the /books endpoint with the following JSON object. 

```
{
    "title": "Machine Learning",
    "author": "Author 3",
    "rating": 9.5
}
```{{copy}}

Set the header of the HTTP request:
```content-type=application/json```{{copy}}

If you are using Chrome browser, you may use REST API client such as [POSTMAN](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop/related?hl=en) or [Advanced REST client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo).

After adding the new books, visit localhost:5000/books in browser to retrieve the updated book list.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books

``{{execute}}

To allow getting book by book_id, add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-get_book_by_id">

@app.route('/books/<book_id>', methods=['GET'])
def get_book_by_id(book_id):
    book = books[int(book_id)]
    return jsonify(book),200 
</pre>

To allow deleting book by book_id, add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-delete_book_by_id">
@app.route('/books/<book_id>', methods=['DELETE'])
def delete_book_by_id(book_id):
    del books[int(book_id)]
    return jsonify({'status':'success'}),200 
</pre>

``{{execute}}

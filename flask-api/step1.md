Define app.py as follows.

<pre class="file" data-filename="app.py" data-target="replace">
from flask import Flask, request,jsonify
import requests,json

#initialize flask app object
app = Flask(__name__)

#book list
books = [{
    "title": "Python programming",
    "author": "Author 1",
    "rating": 7.1
    },
    {
    "title": "Introduction to DBMS",
    "author": "Author 2",
    "rating": 9
    }
]
@app.route('/me', methods=['GET'])
def about_me():
    my_info = {'id':'put your studentID ','name':'put your name'}
    return jsonify(my_info)
	
@app.route('/books', methods=['GET'])
def get_books():
    print("get books")
    return jsonify(books),200 	#200: HTTP response code

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

Send a HTTP GET to localhost:5000/books to retrieve all books' data.

`curl http://localhost:5000/books`{{execute}}

Visit localhost:5000/books in browser to list all the books.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 

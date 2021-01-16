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

@app.route('/books', methods=['GET'])
def get_books():
    print("get books")
    return jsonify(books),200 	#200: HTTP response code

#TODO-me
	
#TODO-add_book

#TODO-get_book_by_id

#TODO-delete_book_by_id

#start flask server
app.run(host='0.0.0.0', port=5000, debug=True)
</pre>

Install Flask using the pip package manager for Python (if not previously installed).

`pip install flask`{{execute T1}}

Execute the flask app.

`python app.py`{{execute T1}}

Open a second terminal.

In terminal 2, send HTTP GET requests to the following end points.

`curl http://localhost:5000/books`{{execute T2}}

Visit the end points in the browser at localhost:5000/books 

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books






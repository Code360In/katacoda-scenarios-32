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

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-get_book_by_id">

@app.route('/books/<book_id>', methods=['GET'])
def get_book_by_id(book_id):
    book = books[int(book_id)]
    return jsonify(book),200 
	
</pre>


<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-delete_book_by_id">
@app.route('/books/<book_id>', methods=['DELETE'])

def delete_book_by_id(book_id):
    del books[int(book_id)]
    return jsonify({'status':'success'}),200 
	
</pre>

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}
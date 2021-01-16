Modify `app.py` to add the following code at #TODO-get_books.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-get_books">
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
</pre>



In terminal 2, send HTTP GET requests to the following end points.

`curl http://localhost:5000/books`{{execute T2}}

Visit the end points in the browser at localhost:5000/books 

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books

Add the following function to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-get_book_by_id">

@app.route('/books/&lt;book_id>', methods=['GET'])
def get_book_by_id(book_id):
    book = books[int(book_id)]
    return jsonify(book),200 
</pre>

Access the endpoints /book/0 and /book/1 to retrieve data about the first and second book:

In terminal 2, send HTTP GET requests to the endpoints /book/0 and /book/1  to retrieve data about the first and second book.

`curl http://localhost:5000/books/0`{{execute T2}}

`curl http://localhost:5000/books/1`{{execute T2}}

You may also retrieve the data using a browser.

* https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books/0
* https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books/1

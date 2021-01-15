Add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-delete_book_by_id">
@app.route('/books/&lt;book_id>', methods=['DELETE'])
def delete_book_by_id(book_id):
    del books[int(book_id)]
    return jsonify({'status':'success'}),200 
</pre>


E.g. To delete the second book, execute in Terminal 2:

`curl -X DELETE  http://localhost:5000/books/1`{{execute T2}}


Visit localhost:5000/books in browser to verify the result.

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 

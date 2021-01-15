To allow deleting book by book_id, add the following code to app.py.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-delete_book_by_id">
@app.route('/books/&lt;book_id>', methods=['DELETE'])
def delete_book_by_id(book_id):
    del books[int(book_id)]
    return jsonify({'status':'success'}),200 
</pre>

``{{execute}}

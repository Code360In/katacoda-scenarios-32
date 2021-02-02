Define `app.py` as follows.

<pre class="file" data-filename="app.py" data-target="replace">
from flask import Flask, request,jsonify
import json

#initialize flask app object
app = Flask(__name__)

@app.route('/me', methods=['GET'])
def about_me():
	#Put your studentID and name in my_info variable
    my_info = {'id':'', 'name':''}
	return jsonify(my_info)

#TODO-get_books

#TODO-get_book_by_id
	
#TODO-add_book

#TODO-delete_book_by_id

#start flask server
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

</pre>

Install Flask using the pip package manager for Python (if not previously installed).

`pip install flask`{{execute T1}}

Execute the flask app.

`python app.py`{{execute T1}}




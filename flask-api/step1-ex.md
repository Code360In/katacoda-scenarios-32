Modify the code to add the about_me function. Put your studentID and name in my_info variable.

<pre class="file" data-filename="app.py" data-target="insert" data-marker="#TODO-me">
@app.route('/me', methods=['GET'])
def about_me():

	#Put your studentID and name in my_info variable
    my_info = {'id':'put your studentID ','name':'put your name'}
    
	return jsonify(my_info)
</pre>



> **Exercise:**
>
> Put your studentID and name in my_info variable
>
> Verify the result:
> `curl http://localhost:5000/me`{{execute}}
>
> https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books 
>
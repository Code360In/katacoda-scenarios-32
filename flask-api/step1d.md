
Suppose we want to allow the client to specify a minimum rating for the returned books.
E.g. `HTTP GET /books?min_rating=8` will return books with minimum rating of 8.


Modify the `get_books()` function in `app.py` as follows.

```
def get_books():
    result=[]
    if 'min_rating' in request.args:
        min_rating = request.args['min_rating']
        for i in books:
            if i['rating']>= int(min_rating):
                result.append(i)
    else:
        result=books
    return jsonify(result),200     
```{{copy}}


In terminal 2, send HTTP GET requests to the following end points.

`curl http://localhost:5000/books?min_rating=7`{{execute T2}}

`curl http://localhost:5000/books?min_rating=8`{{execute T2}}


You may also visit the endpoints in the browser:

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books?min_rating=7

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/books?min_rating=8


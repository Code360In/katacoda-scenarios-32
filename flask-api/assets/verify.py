from app import app
import json

new_book = {
	"title": "Python programming (2nd Ed)", 
	"author": "Author 5", 
	"rating": 7.1
}
    
client= app.test_client()
#actual = client.get('/books/0').json

h = {
        'Content-Type': 'application/json'
    }
r = client.put('/books/0', data=json.dumps(new_book), headers=h)
#print(r)
result = client.get('/books/0').json
#print(result)
if result == new_book:
    print("done")
else:    
    print("not completed")



from app import app
import json

new_book = {
	"title": "Python programming (2nd Ed)", 
	"author": "Author 5", 
	"rating": 7.1
}
    
client= app.test_client()

h = {
        'Content-Type': 'application/json'
    }
r = client.put('/books/0', data=json.dumps(new_book), headers=h)

result = client.get('/books/0').json

if result == new_book:
    exit(0) #done!
else:    
    exit(1) #not completed



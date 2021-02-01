Define `ex4.py`.

<pre class="file" data-filename="ex4.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#For the given order, print the order ID, userID, date, and total amount of the order
#return total_amount of the given order
def f4(order_id):
    #convert the list to dictionary for easy retrival of product price given ID
    catalog={}
    for i in products:
        product_id=i['id']
        catalog[product_id]={}
        catalog[product_id]["price"]=float(i['price'])
        catalog[product_id]["title"]=i['title']
    
    total_amount=0
    for i in orders: #search for the given order ID
        if i['id']==order_id:
            for j in i['products']: #for each products in the order
                prod_id=j['productId']
                quantity=j['quantity']
                price=catalog[prod_id]['price']
                                    
                total_amount +=price*quantity
            print(f"Order ID:{i['id']}, User:{i['userId']}, Date:{i['date']}, Total Amount:{total_amount}")
    return total_amount
print(f4(1))
print(f4(3))
</pre>


Execute the python script.

`python ex4.py`{{execute T1}}

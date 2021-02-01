import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#return the total quantity purchased for the given product_id in different orders
def f3(product_id):
    total_quantity=0
    for i in orders:
        for j in i['products']:
            if j['productId']==product_id:
                total_quantity+= j['quantity']
    return total_quantity
print(f3(101))
print(f3(103))

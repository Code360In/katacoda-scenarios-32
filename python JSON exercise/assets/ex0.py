import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#pretty print the orders
pprint(orders)

#comment the above line and uncomment the following line to view the products
#pprint(products)

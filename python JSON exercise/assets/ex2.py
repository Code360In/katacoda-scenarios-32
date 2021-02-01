import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#print the name and price of products with price higher than p
#the function should return the number of products 
def f2(p):
    count=0
    for i in products:
        if i['price']>p:
            print(f"{i['title']}:${i['price']}")     
            count +=1
    return count
print(f2(100))

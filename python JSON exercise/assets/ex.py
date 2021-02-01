import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")


orders = json.loads(f.read())
product_list = json.loads(f2.read())



pprint(orders)
pprint(product_list)


#convert the product list to python dictionary
catalog={}
for i in product_list:
    product_id=i['id']
    catalog[product_id]={}
    catalog[product_id]["price"]=float(i['price'])
    catalog[product_id]["title"]=i['title']


pprint(catalog)

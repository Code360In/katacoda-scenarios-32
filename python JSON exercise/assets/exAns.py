import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#uncomment the following lines to print the orders and product_lists
#pprint(orders)
#pprint(product_list)

#warm up: print first three products's name
def f1():
    for i in products[0:3]:
        print(i['title'])
#f1()

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

#return the total quantity purchased for the given product_id in different orders
def f3(product_id):
    total_quantity=0
    for i in orders:
        for j in i['products']:
            if j['productId']==product_id:
                total_quantity+= j['quantity']
    return total_quantity
#print(f3(101))
#print(f3(103))


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


        

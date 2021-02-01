import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#uncomment the following lines to print the orders and product_lists
#pprint(orders)
#pprint(product_list)

#print first three products 
def f1():
    for i in products[0:3]:
        pprint(i)
#f1()

#print all products with price higher than 50
def f2():
    for i in products:
        if i['price']>500:
            pprint(i)
#f2()

#for each product ID, print the total quantity purchased by different customers       
def f3():
    sales={}
    for i in orders:
        for j in i['products']:
            if j['productId'] in sales.keys():
                sales[j['productId']]+=j['quantity']
            else:
                sales[j['productId']]=j['quantity']
    print(sales)
#f3()

#For each order, print the order ID, userID, date, and total amount of the order
def f4():
    #convert the product list to dictionary for easy retrival of product price given ID
    catalog={}
    for i in products:
        product_id=i['id']
        catalog[product_id]={}
        catalog[product_id]["price"]=float(i['price'])
        catalog[product_id]["title"]=i['title']
    
    for i in orders: #for each order
        total = 0 #revenue
        for j in i['products']: #for each products in the order
            prod_id=j['productId']
            quantity=j['quantity']
            price=catalog[prod_id]['price']
                
            
            total +=price*quantity
        print(f"Order ID:{i['id']}, User:{i['userId']}, Date:{i['date']}, Total Amount:{total}")

f4()



        

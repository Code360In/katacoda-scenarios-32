
Examine the structure of the following JSON data files:

`products.json`{{open}}

`orders.json`{{open}}

Define `ex0.py`.

<pre class="file" data-filename="ex0.py" data-target="replace">
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

</pre>


Execute the python script.

`python demo.py`{{execute T1}}



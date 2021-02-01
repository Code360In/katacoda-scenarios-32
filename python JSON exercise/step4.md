Define `ex3.py` as follows. Complete the function `f3()` such that it will return the total quantity purchased for the given product_id.


<pre class="file" data-filename="ex3.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")
orders = json.loads(f.read())
products = json.loads(f2.read())

def f3(product_id):
    total_quantity=0
	
    #todo
	
    return total_quantity
print(f3(101))
print(f3(103))

</pre>


Execute the python script.

`python ex3.py`{{execute T1}}

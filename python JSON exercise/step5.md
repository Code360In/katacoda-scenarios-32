Define `ex4.py` as follows. Complete the function `f4()` such that it will

* print the order ID, userID, date, and total amount of the given order (specified by order_id)

* return the total amount of the given order

<pre class="file" data-filename="ex4.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")
orders = json.loads(f.read())
products = json.loads(f2.read())

#return total_amount of the given order
def f4(order_id):
    total_amount=0
	
	#todo
			
    return total_amount
print(f4(1))
print(f4(3))
</pre>


Execute the python script.

`python ex4.py`{{execute T1}}

>
> Click **Continue** below to check your script for correctness.
>
>
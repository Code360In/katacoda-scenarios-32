Define `ex1.py` as follows. Complete the function `f1()` such that it prints the first three products's name in `products.json`.

<pre class="file" data-filename="ex1.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

def f1():

	#todo
	
f1()
</pre>



Execute the python script:

`python ex1.py`{{execute T1}}

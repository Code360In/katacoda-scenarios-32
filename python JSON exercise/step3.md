Define `ex2.py` as follows. Complete the function `f2()` such that it will

* print the name and price of products with price higher than p
* return the number of products with price higher than p

<pre class="file" data-filename="ex2.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

def f2(p):
    count=0
    
	#todo
	
    return count
print(f2(500))
</pre>


Execute the python script.

`python ex2.py`{{execute T1}}


- - -

> 
> Execute the following command and input your student ID and name.
> 
> `input_name`{{execute T1}}
>
> Click **Continue** below to check your script for correctness.
>
>




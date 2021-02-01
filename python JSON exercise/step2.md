
Define `ex1.py`.

<pre class="file" data-filename="ex1.py" data-target="replace">
import json
from pprint import pprint 

f = open("orders.json", mode="r", encoding="utf-8")
f2 = open("products.json", mode="r", encoding="utf-8")

orders = json.loads(f.read())
products = json.loads(f2.read())

#print first three products's name
def f1():
    for i in products[0:3]:
        print(i['title'])
f1()
</pre>


Execute the python script.

`python ex1.py`{{execute T1}}

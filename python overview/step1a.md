

A list is a collection which is ordered and changeable. In Python lists are written with square brackets.

<pre class="file" data-filename="demo.py" data-target="replace">
fruits = [] 	#define an empty list
fruits.append("apple")	#append an item to a list
fruits.append("banana")
print(fruits)
</pre>


Try:

`python demo.py`{{execute T1}}





A for-loop can be used for iterating over a sequence (a list, a dictionary, a set, or a string, etc).


<pre class="file" data-filename="demo.py" data-target="replace">
fruits = ["apple", "banana", "cherry"]
for x in fruits:
	print(x)
</pre>

Try:

`python demo.py`{{execute T1}}


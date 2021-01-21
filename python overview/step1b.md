A dictionary is a collection which is unordered, changeable and indexed. 
In Python dictionaries are written with curly brackets, and they have keys and values.

<pre class="file" data-filename="demo.py" data-target="replace">
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(car)
</pre>

Try:

`python demo.py`{{execute T1}}


## Accessing Items

You may access an item from a list using the key. 

<pre class="file" data-filename="demo.py" data-target="replace">
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = car["model"]
print(x)
</pre>

Try:

`python demo.py`{{execute T1}}



**Example:** Changing Values

<pre class="file" data-filename="demo.py" data-target="replace">
car = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
car["year"] = 2018
print(car)
</pre>

Try:

`python demo.py`{{execute T1}}



## Looping through the keys and values in the Dictionary

You can loop through a dictionary by using a `for` loop. 

<pre class="file" data-filename="demo.py" data-target="replace">
car =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
for x in car:
	print("key: "+x)
	print("value:"+car[x])

</pre>

Try:

`python demo.py`{{execute T1}}


## Dictionary methods

The `keys()` returns a list containing the dictionary's keys

<pre class="file" data-filename="demo.py" data-target="replace">
car =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print (keys())

</pre>

Try:

`python demo.py`{{execute T1}}


**Example:** Check if a key exists in a dictionary

<pre class="file" data-filename="demo.py" data-target="replace">
car =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}

if "year" in keys:
	print("yes")
else:
	print("no")


</pre>



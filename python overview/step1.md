A list is a collection which is ordered and changeable. In Python lists are written with square brackets.


<pre class="file" data-filename="demo.py" data-target="replace">
thislist = ["apple", "banana", "cherry"]
print(thislist)
</pre>

*Ref: https://www.w3schools.com/python/python_lists.asp*

Try:

`python demo.py`{{execute T1}}

A for-loop can be used for iterating over a sequence (a list, a dictionary, a set, or a string, etc).
*Ref: https://www.w3schools.com/python/python_for_loops.asp*

<pre class="file" data-filename="demo.py" data-target="replace">
 for x in fruits:
  print(x)
</pre>

Try:

`python demo.py`{{execute T1}}



A dictionary is a collection which is unordered, changeable and indexed. In Python dictionaries are written with curly brackets, and they have keys and values.

<pre class="file" data-filename="demo.py" data-target="replace">
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(thisdict)
</pre>

*Ref: https://www.w3schools.com/python/python_dictionaries.asp*

Example 1: Accessing Items

<pre class="file" data-filename="demo.py" data-target="replace">
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = thisdict["model"]
</pre>

Try:

`python demo.py`{{execute T1}}



Example 2: Changing Values

<pre class="file" data-filename="demo.py" data-target="replace">
 thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
thisdict["year"] = 2018
</pre>

Try:

`python demo.py`{{execute T1}}


Example 3: Looping through the keys and values in the Dictionary

<pre class="file" data-filename="demo.py" data-target="replace">
 thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
for x in thisdict:
  print(thisdict[x])

</pre>

Try:

`python demo.py`{{execute T1}}


<h2> Handling JSON Data</h2>
Use json.loads convert from JSON to python dictionary.

<pre class="file" data-filename="demo.py" data-target="replace">
import json

# some JSON:
x =  '{ "name":"John", "age":30, "city":"New York"}'

# parse x:
y = json.loads(x)

# the result is a Python dictionary:
print(y["age"])
</pre>

Try:

`python demo.py`{{execute T1}}


Use json.dumps() to convert python dictionary type to JSON.


<pre class="file" data-filename="demo.py" data-target="replace">
# a Python object (dict):
x = {
  "name": "John",
  "age": 30,
  "city": "New York"
}

# convert into JSON:
y = json.dumps(x)

# the result is a JSON string:
print(y)

</pre>



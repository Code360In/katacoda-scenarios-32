
A dictionary is a collection which is unordered, changeable and indexed. In Python dictionaries are written with curly brackets, and they have keys and values.

<pre class="file" data-filename="demo.py" data-target="replace">
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(thisdict)
</pre>

Try:

`python demo.py`{{execute T1}}


Example 1: Accessing Items

<pre class="file" data-filename="demo.py" data-target="replace">
thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
x = thisdict["model"]
print(x)
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
print(x)
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



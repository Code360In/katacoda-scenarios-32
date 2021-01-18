
### JSON to Python Dictionary
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

### Python Dictionary to JSON

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


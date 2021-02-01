
Open the JSON data: 

`airbnb.json`{{open}}


Create a python script `airbnb.py` as follows. 
The json.load() function takes a JSON object and convert to python dictionary.


<pre class="file" data-filename="airbnb.py" data-target="replace">
import json
from pprint import pprint

# read file
with open('airbnb.json', 'r',encoding="utf8") as myfile:
    data=myfile.read()

# parse file
listing = json.loads(data)

#print the json object
pprint (listing)
</pre>


Try:

`python airbnb.py`{{execute T1}}


The listing variable is a python list. The first accommodation is listing[0], second accommodation is listing[2] and so on.

`pprint(listing[0])`{{copy}}

To print the name of the accommodation, 

`pprint(listing[0]["name"])`{{copy}}


To print the facilities, 

`pprint(listing[0]["amenities"])`{{copy}}





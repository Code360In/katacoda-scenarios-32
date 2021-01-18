
Open the JSON data: 

`airbnb.json`{{open}}


Create a python script airbnb.py as follows. 
The json.load() function takes a JSON object and convert to python dictionary.


<pre class="file" data-filename="demo.py" data-target="replace">
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



The listing variable is a python list. The first accommodation is listing[0], second accommodation is listing[2] and so on.

To print the name of the accommodation, 
`pprint(listing[0]["name"])`{{copy}}

To print the facilities, 
`pprint(listing[0][" amenities"])`{{copy}}





Exercise 1:
Write a python script airbnb_ex1.py which read the airbnb.json and prints the name and the number of reviews in the first 5 accommodation.

Sample output:
```
name: Ribeira Charming Duplex
number of reviews: 51

name: Horto flat with small garden
number of reviews: 0

name: Ocean View Waikiki Marina w/prkg
number of reviews: 96

name: Private Room in Bushwick
number of reviews: 1

name: Apt Linda Vista Lagoa - Rio
number of reviews: 0

name: New York City - Upper West Side Apt
number of reviews: 70

```



Exercise 2
Write a python script airbnb_ex2.py which read the airbnb.json and print the accommodation’s names and whether they have “Microwave” oven and “Coffee maker”.

Sample output:

```
Ribeira Charming Duplex
Microwave: yes
Coffee maker: yes

Horto flat with small garden
Microwave: no
Coffee maker: no

Ocean View Waikiki Marina w/prkg
Microwave: yes
Coffee maker: yes

Private Room in Bushwick
Microwave: no
Coffee maker: no

Apt Linda Vista Lagoa - Rio
Microwave: no
Coffee maker: no

New York City - Upper West Side Apt
Microwave: no
Coffee maker: no

```





A Redis hash can store a set of key value pairs

`hset player:100 Name Peter`{{execute}}

`hset player:100 Score 90`{{execute}}

`hset player:100 lastLoggedIn 2020-7-15`{{execute}}


To get all attributes of a given hash,

`hget player:100 Score`{{execute}}

`hget player:100 Name`{{execute}}

`hgetall player:100`{{execute}}


We can define multiple key value pairs for a hash in one command.

`hset player:101 Name Alice Score 80 lastLoggedIn 2020-7-18`{{execute}}

`hset player:102 Name Bob Score 76 lastLoggedIn 2020-7-19`{{execute}}


> Exercise:
>
> 1) To facilicate enumerating all players ID, define a set which consists of all the  player IDs.
>
> 2) How can we support efficient lookup of player's record by her his/name?
>
>






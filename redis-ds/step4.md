A Redis list is an ordered sequence of strings. 

`LPUSH tutorials redis `{{execute}}

`LPUSH tutorials mongodb `{{execute}}

`RPUSH tutorials mysql `{{execute}}

`RPUSH tutorials oracle `{{execute}}

`GET tutorials`{{execute}}

LRANGE gives a subset of the list given the starting and ending index. The value -1 means the last element, -2 means the second last, etc.

`LRANGE tutorials 0 2 `{{execute}}

`LRANGE tutorials 2 -1 `{{execute}}


Use LLEN to obtain the current length of the list.
`LLEN tutorials`{{execute}}


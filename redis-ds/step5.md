A set is an unordered collection of strings which does not allowing repeated members.



To add members to sets,

`SADD comics book1 book2 book3`{{execute}}

`SADD love book3 book4`{{execute}}

Check the elements in the sets.

`SMEMBERS love`{{execute}}

`SMEMBERS comics`{{execute}}

Check if an element exists in a SET.

`SISMEMBER love book3`{{execute}}

`SISMEMBER love book1`{{execute}}

SET union and intersection.

`SINTER comics love`{{execute}}

`SUNION comics love`{{execute}}

`
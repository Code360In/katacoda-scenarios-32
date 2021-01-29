Use `SET` command to store a value "Bobby" at key "myname" and `GET` command to retrieve the value of a key.

`SET myname "Bobby"`{{execute}}

`GET myname`{{execute}}


To test if a give key exists or not:

`exists myname`{{execute}}

`exists test`{{execute}}

To view all keys,

`KEYS *`

Redis String allows numbers to be stored. Use the `INCR` command to atomically increment an integer stored at a given key.

`SET counter 1`{{execute}}

`INCR counter `{{execute}}

Use `INCRBY ` to increment the number contained inside a key by a specific amount

`INCRBY counter 100`{{execute}}

`GET counter`{{execute}}


Instead of using INCR, can we use the following logic for incrementing a counter?

```
x = GET counter
x = x + 1
SET counter x
```



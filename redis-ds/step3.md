The `EXPIRE` command sets a timeout on key after n seconds
The `TTL` command Returns the remaining time to live of a key that has a timeout


Examples:

`SET mykey "Hello"`{{execute}}

`EXPIRE mykey 10`{{execute}}

`TTL mykey`{{execute}}


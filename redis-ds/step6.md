Redis Sorted Sets are non-repeating collections of String with scores for each members

Add three items to the sorted set with their score.

```
ZADD score 50 user1
ZADD score 90 user2
ZADD score 85 user3
```{{execute}}


Fetch the items according to its sorted position

`ZRANGE score 0 1`{{execute}}

`ZRANGE score 0 2`{{execute}}

`ZRANGE score 0 -1`{{execute}}

Fetch the items with scores according to its sorted position

`ZRANGEBYSCORE score 0 -``{{execute}}


To fetch the scores in reversed direction, 

`ZREVRANGE score 0 1`{{execute}}

To retrieve the score and rank for a certain member,

`ZSCORE user2`{{execute}}

`ZRANK user2`{{execute}}

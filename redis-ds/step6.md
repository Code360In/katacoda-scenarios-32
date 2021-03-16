Redis Sorted Sets are non-repeating collections of String with scores for each members.

Add three items to the sorted set with their score.

`ZADD score 50 user1`{{execute}}

`ZADD score 90 user2`{{execute}}

`ZADD score 85 user3`{{execute}}



Fetch the items according to its sorted position

`ZRANGE score 0 1`{{execute}}

`ZRANGE score 0 2`{{execute}}

`ZRANGE score 0 -1`{{execute}}

To returns all the elements in the sorted set at key with a score between min and max

`ZRANGEBYSCORE score 80 100`{{execute}}

`ZRANGEBYSCORE score -inf +inf`{{execute}}

To show elements with scores,

`ZRANGEBYSCORE score 80 100 WITHSCORES`{{execute}}


To fetch the elements in reversed direction, 

`ZREVRANGE score 0 1`{{execute}}

To retrieve the score and rank for a certain member,

`ZSCORE score user2`{{execute}}

`ZRANK score user2`{{execute}}

 
Check the following article to learn how sorted set can be used to represent time-series data.

https://redislabs.com/redis-best-practices/time-series/sorted-set-time-series/



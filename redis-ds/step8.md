RedisInsight provides an intuitive and efficient GUI for Redis which allows you to interact with your databases and manage your data.

Start a new terminal `T2`.

To start RedisInsight:

`docker run -d --net my-network -p 8001:8001 redislabs/redisinsight`{{execute T2}}

Wait for the application to start up. You may then access your Redis Insight Portal at `http://localhost:8001`.

 https://[[HOST_SUBDOMAIN]]-8001-[[KATACODA_HOST]].environments.katacoda.com
 
In RedisInsight:
* Accept the the EULA. 
* Select `I already have a database` and choose `Connect to a Redis Database`.
* Type `redis` as Host.
* Type `6379` as Port.
* Type `My-Redis` as Name. 

Select `Add Redis Database`.

Select `My_Redis` database. 

You may then access the `Browser` page to view the Redis keys and access the `CLI` page to input Redis commands to be executed in your database.





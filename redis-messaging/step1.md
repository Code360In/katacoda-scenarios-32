
Start a Redis server in docker and run in background.

`docker run --name redis -d -p 6379:6379 redis redis-server`{{execute}}

Install python modules with pip.

`pip install redis`{{execute}}

Define the message queue publisher script.

<pre class="file" data-filename="queue_publisher.py" data-target="replace">
import redis
import time

r = redis.Redis(host='localhost', port=6379)
r.set('test', 'It is working!!!')

for i in range(1000):
    print(f"Generate order {i}")
    r.rpush('queue1',f"order {i}")
    time.sleep(1)
</pre>

Define the message queue processor script.

<pre class="file" data-filename="queue_processor.py" data-target="replace">
import redis
import time

r = redis.Redis(host='localhost', port=6379)
r.set('test', 'It is working!!!')

while True:
    result = r.lpop('queue1')
    print(result)
    if result is not None:
        s = result.decode("utf-8") 
        print(f"Processing: {s}")
        time.sleep(1)
        print("Done!")
    else:
        break
</pre>


Open two more terminals T2 and T3. Execute the processor script in T2.

Execute the processor script in Terminal 1.

`python3 queue_publisher.py`{{execute T1}}

`python3 queue_processor.py`{{execute}}




Define the publisher script for a Publish-Subscribe channel.

<pre class="file" data-filename="pubsub_publisher.py" data-target="replace">
import redis
import time

r = redis.Redis(host='localhost', port=6379)
r.set('test', 'It is working!!!')

for i in range(1000):
    print(f"Generate order {i}")
    r.publish('channel1',f"order {i}")
    time.sleep(1)

</pre>

Define the processor script for a Publish-Subscribe channel.

<pre class="file" data-filename="pubsub_processor.py" data-target="replace">
import redis
import time

r = redis.Redis(host='localhost', port=6379)
r.set('test', 'It is working!!!')

pubsub=r.pubsub()
pubsub.subscribe(['channel1'])

for item in pubsub.listen():
    print(item)
    
    if item['type']=='message':
        data =item['data'].decode("utf-8") 
        print(f"processing: {data}")
        time.sleep(3)
        print(f"done: {data}")
  
</pre>

Execute the processor script and publisher scripts.

`python3 pubsub_processor.py`{{execute}}

`python3 pubsub_publisher.py`{{execute}}




You may also execute redis-cli to check the keys in the Redis Server.

`docker exec -it redis redis-cli`{{execute}}


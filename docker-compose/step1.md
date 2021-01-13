<h1>Overview</h1>

Docker compose is a tool for defining and running multi-container Docker application.

In this web, we will use Docker compose to launch a "Voting App" with the following components:
* **Voting-App**: Frontend of the application written in Python, used by users to cast their votes. Each vote cast on the Voting app is stored in the Redis in-memory database.
* **Result-App**: Frontend of the application written in Node.js, displays the voting results.
* **Redis**: In-memory database used as intermediate storage.
* **DB**: PostgreSQL database used as database.
* **Worker**: The .Net worker service fetches the vote and stores it in the Postgres DB which is accessed by the Node.js frontend.

Clone the project from github.
`git clone https://github.com/cswclui/example-voting-app`{{execute}}


Execute:
`cd example-voting-app/`{{execute}}

`docker-compose up`{{execute}}


View the docker compose file which configure your application's services.
`docker-compose.yml`{{open}}

<pre>
version: "3"

services:
  vote:
    build: ./vote
    command: python app.py
    volumes:
     - ./vote:/app
    ports:
      - "5000:80"
    networks:
      - front-tier
      - back-tier

  result:
    build: ./result
    command: nodemon server.js
    volumes:
      - ./result:/app
    ports:
      - "5001:80"
      - "5858:5858"
    networks:
      - front-tier
      - back-tier

  worker:
    build:
      context: ./worker
    depends_on:
      - "redis"
    networks:
      - back-tier

  redis:
    image: redis:alpine
    container_name: redis
    ports: ["6379"]
    networks:
      - back-tier

  db:
    image: postgres:9.4
    container_name: db
    volumes:
      - "db-data:/var/lib/postgresql/data"
    networks:
      - back-tier

volumes:
  db-data:

networks:
  front-tier:
  back-tier:
</pre>

View the voting app at localhost:5000:
https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

View the result app at localhost:5001:
https://[[HOST_SUBDOMAIN]]-5001-[[KATACODA_HOST]].environments.katacoda.com/



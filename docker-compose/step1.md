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

`example-voting-app/docker-compose up`{{execute}}


View the docker compose file which configure your application's services.
`example-voting-app/docker-compose.yml`{{open}}

Wait until the docker images are built and various containers have started up.


View the voting app at localhost:5000:
https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

View the result app at localhost:5001:
https://[[HOST_SUBDOMAIN]]-5001-[[KATACODA_HOST]].environments.katacoda.com/



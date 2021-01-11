<h1>Running a nginx web server</h1>
Execute
`docker run -p 20080:80 nginx`{{execute}}


<br/>
Access the localhost at port 20080. (Use "docker" to replace localhost in Katacoda)
`curl docker:20080`{{execute}}


Visit localhost:20080 in browser

</br>
Render port 20080:
https://[[HOST_SUBDOMAIN]]-20080-[[KATACODA_HOST]].environments.katacoda.com/
Stop the server with Ctrl+C

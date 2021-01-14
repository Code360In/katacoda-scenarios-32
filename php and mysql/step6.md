<h2> SQL Injection</h2>
Malicious SQL statements are inserted by attackers to trick data-driven applications into executing unintended commands or bypassing security controls (E.g. dump the database contents to the attackers, logging in without username and password, privilege escalation.)


In the login page, input the following username and submit the form

<pre> ' or 1=1 -- </pre>


Visit localhost at port 80 with browser.

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/login.php


Observe whether you can login successfully.


> **Exercise**: 
>  Launch SQL injection to login as Bob without password
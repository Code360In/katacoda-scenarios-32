Define `docker-compose.yaml` file as follows to launch three SSH server.

<pre class="file" data-filename="docker-compose.yaml" data-target="replace">
version: "2.1"
services:
 server1:
    image: cswclui/pythonssh
    container_name: server1
    hostname: server1
 server2:
    image: cswclui/pythonssh
    container_name: server2
    hostname: server2

 server3:
    image: cswclui/pythonssh
    container_name: server3
    hostname: server3
   
</pre>

In terminal 1, execute 

`docker-compose up`{{execute T1}}




***********************

cat <<EOF >deploy-mysql.yml
- hosts: myservers
  become: yes
  tasks:
    - name: install apche2
      apt: name=apache2 update_cache=yes state=latest	
EOF

ansible myservers --user alice -i hosts -m 'hostname'
ansible myservers --user alice -i hosts -m command -a "date"

sudo service apache2 start


ansible myservers --user alice -i hosts --become -m apt -a  "update_cache=yes"

ansible myservers --user alice -i hosts --become -m apt -a "name=apache2 state=present"
ansible database --user alice -i hosts -m service -a "name=apache2 state=started"

ansible myservers --user alice -i hosts --become -m apt -a "name=mysql-server state=present"
ansible myservers --user alice -i hosts --become -m service -a "name=mysql state=started"




 

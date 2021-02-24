
Open another terminal T2. Perform the folowing tasks in T2.

View the list of SSH servers containers.

`docker ps`{{execute T2}}

Launch a shell to `server1` (which will act as ansible host).

`docker exec -it server1 bash`{{execute T2}}

Establish a SSH connection to `server2`. 
Input `12345` as password.

`ssh  alice@server2`{{execute T2}}

Close the connection and return to the host machine.

`exit`{{execute T2}}

Similarly, you can establish SSH connection to `server3`.

Now, we will configure passwordless SSH such that the ansible at the host machine can connect to the various servers without using password.

First, we generate a SSH key on the Ansible host for authentication. 

` ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa`{{execute}}

The RSA public/private key pair will be located at `~/.ssh`.

`ls -al ~/.ssh`{{execute}}

In order for the server to verify the authenticity of the ansible host, we need to copy the public key to the three servers with the `ssh-copy-id` tool

`ssh-copy-id  alice@server2`{{execute}}

Type `yes` to to confirm the connection and `12345` as password.

`ssh-copy-id  alice@server3`{{execute}}

Type the `12345` as password.



Verify that you can login to the servers without using password from the ansible host.

Establish a SSH connection to `server2`. 

`ssh alice@server2`{{execute T2}}

Close the connection and return to the host machine.

`exit`{{execute T2}}


Install ansible in `server1`.

`pip install ansible==2.9.6`{{execute}}


First, we define our servers in the inventory file.


```
```

Execute:

```
cat <<EOF >hosts
[myservers]
server2 ansible_sudo_pass='12345'
server3 ansible_sudo_pass='12345'
EOF
```{{execute}}

Verify that the file is created:

`cat hosts`{{execute T2}}


Ansible role  allows reuse of common configuration steps. There are a number of MySQL Ansible roles available in the Ansible Galaxy. We will use the role "mysql" by geerlinggu.

Download the ansible role:

`ansible-galaxy install geerlingguy.mysql`{{execute T2}}


Define the  ansible playbook `deploy-mysql.yml` as follows.

```
- hosts: myservers
  become: yes
  vars_files:
    - main.yml
  roles:
    - { role: geerlingguy.mysql }
```

```
cat <<EOF >deploy-mysql.yml
- hosts: myservers
  become: yes
  roles:
    - { role: geerlingguy.mysql }
EOF
```{{execute T2}}

Verify that the file is created:

`cat deploy-mysql.yml`


Define `main.yaml` with the mysql root password.



`echo 'mysql_root_password: "12345"'> main.yml`{{execute T2}}


Verify that the file is created:

`cat main.yml`{{execute T2}}


Start the MySQL Server deployment:

`ansible-playbook -i hosts --user alice deploy-mysql.yml`{{execute T2}}



``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}





Reference:
- https://severalnines.com/database-blog/introduction-mysql-deployment-using-ansible-role
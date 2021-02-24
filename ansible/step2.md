
Open another terminal T2. Perform the folowing tasks in T2.

View the list of SSH servers containers.

`docker ps`{{execute T2}}

Establish a SSH connection to `server1` at `localhost:2222`. 
Input `123` as password.

`ssh -p 2222 alice@localhost`{{execute T2}}

Close the connection and return to the host machine.

`exit`{{execute T2}}

Similarly, you can establish SSH connection to `server2` and `server3` at `localhost:2223` and `localhost:2224` respectively.

Now, we will configure passwordless SSH such that the ansible at the host machine can connect to the various servers without using password.

First, we generate a SSH key on the Ansible host for authentication. Type 'y' to overrride the key.

` ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa`{{execute}}

The RSA public/private key pair will be located at `~/.ssh`.

`ls -al ~/.ssh`{{execute}}

In order for the server to verify the authenticity of the ansible host, we need to copy the public key to the three servers with the `ssh-copy-id` tool

`ssh-copy-id -p 2222 alice@localhost`{{execute}}

Type the `123` as password.

`ssh-copy-id -p 2223 alice@localhost`{{execute}}

Type the `123` as password.

`ssh-copy-id -p 2224 alice@localhost`{{execute}}

Type the `123` as password.


Verify that you can login to the servers without using password from the ansible host.

Establish a SSH connection to `server1` at `localhost:2222`. 

`ssh -p 2222 alice@localhost`{{execute T2}}

Close the connection and return to the host machine.

`exit`{{execute T2}}

First, we define the inventory file `inventory_file` which defines all the servers to be managed by ansible

```
[webservers]
web01.somedomain.com ansible_port=1234
```

Execute:

```
cat <<EOF >inventory_file
[db-mysql]
localhost ansible_port=2222 ansible_sudo_pass='123'
localhost ansible_port=2223 ansible_sudo_pass='123'
localhost ansible_port=2224 ansible_sudo_pass='123'
EOF
```{{execute}}

Verify that the file is created:

`cat inventory_file`

Ansible role  allows reuse of common configuration steps. There are a number of MySQL Ansible roles available in the Ansible Galaxy. We will use the role "mysql" by geerlinggu.

Download the ansible role:

`ansible-galaxy install geerlingguy.mysql`{{execute T2}

Define the  ansible playbook `deploy-mysql.yml` as follows.

```
- hosts: db-mysql
  become: yes
  vars_files:
    - vars/main.yml
  roles:
    - { role: geerlingguy.mysql }
```

```
cat <<EOF >deploy-mysql.yml
- hosts: db-mysql
  become: yes
  vars_files:
    - main.yml
  roles:
    - { role: geerlingguy.mysql }
EOF
```{{execute}}

Verify that the file is created:

`cat deploy-mysql.yml`


Define `main.yaml` with the mysql root password.

``{{execute}}
echo 'mysql_root_password: "123456"'> main.yml

Verify that the file is created:

`cat main.yml`


Start the MySQL Server deployment:

`ansible-playbook -i inventory_file deploy-mysql.yml`{{execute}}



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

Open another terminal T2. Perform the folowing tasks in T2.

View the list of SSH servers containers.

`docker ps`{{execute T2}}

Establish a SSH connection to `server1` at `localhost:2222`. Input `123` as password.

`ssh -p 2222 alice@localhost`{{execute T2}}

Close the connection and return to the host machine.
`exit`{{execute T2}}

Similarly, you can establish SSH connection to `server2` and `server3` at `localhost:2223` and `localhost:2224` respectively.

Now, we will configure passwordless SSH such that the ansible at the host machine can connect to the various servers without using password.

First, we generate a SSH key on the Ansible host for authentication:

` ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa`{{execute}}

The RSA public/private key pair will be located at `~/.ssh`.

`ls -al ~/.ssh`{{execute}}

In order for the server to verify the authenticity of the ansible host, we need to copy the public key to the three servers with the `ssh-copy-id` tool

`ssh-copy-id -p 2222 alice@localhost`{{execute}}

`ssh-copy-id -p 2223 alice@localhost`{{execute}}

`ssh-copy-id -p 2224 alice@localhost`{{execute}}

Verify that you can login to the servers without using password from the ansible host.

Establish a SSH connection to `server1` at `localhost:2222`. 

`ssh -p 2222 alice@localhost`{{execute T2}}

Close the connection and return to the host machine.
`exit`{{execute T2}}

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

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}





Reference:
- https://severalnines.com/database-blog/introduction-mysql-deployment-using-ansible-role
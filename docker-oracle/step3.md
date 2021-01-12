<h1>Creating Pluggable Database</h1>

Connect as sys user using sqlplus.

`rlwrap sqlplus / as sysdba`{{execute}}


Create a pluggable database named SALESPDB. 
We make use of the SEED pluggable database (/opt/oracle/oradata/XE/pdbseed) as a template for creating fresh pluggable databases and specify that the data files of the new PDB to be located at /opt/oracle/oradata/XE/SALESPDB inside the container.

`CREATE PLUGGABLE DATABASE SALESPDB ADMIN USER salesadm IDENTIFIED BY oracle FILE_NAME_CONVERT=('/opt/oracle/oradata/XE/pdbseed','/opt/oracle/oradata/XE/SALESPDB');`{{execute}}


Check the status after the PDB creation. You may format the column width of “Name” column to be 30 characters wide with the column command in sqlplus. 

`column name format a30`{{execute}}

`select  name, open_mode FROM v$PDBS;`{{execute}}


Execute the following statement to open the PDB for reading and writing.

`ALTER  PLUGGABLE  DATABASE  salespdb open;`{{execute}}

`select  name, open_mode FROM v$PDBS;`{{execute}}

Change to the pluggable database SALESPDB.

`alter session set container=SALESPDB;`{{execute}}


Show the tablespace inside the pluggable database SALESPDB
`select tablespace_name from dba_tablespaces;`{{execute}}


Create a new tablespace “USERS” to store user’s data

`CREATE TABLESPACE USERS DATAFILE '/opt/oracle/oradata/XE/SALESPDB/users.dbf'  SIZE 1m  ;`{{execute}}


The USERS tablespace will now appear in dba_tablespaces inside the pluggable database SALESPDB.

`select tablespace_name from dba_tablespaces;`{{execute}}


Show the data files associated with the created tablespace
`select file_name, tablespace_name from DBA_DATA_FILES;`{{execute}}


Exit the sqlplus environment.
`exit`{{execute}}

Exit the docker container 
`exit`{{execute}}


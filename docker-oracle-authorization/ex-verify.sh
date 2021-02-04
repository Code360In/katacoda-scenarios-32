
docker container ls >out.txt


url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1
event_type='oracle-authorization-ex'
myname=`cat .myname`
myid=`cat .myid`

if [[ $myname == "" ]] || [[ $myid == "" ]]
then
	echo "Error: Please input your name and ID">test_ex.log && exit 1
fi

cat <<EOF >.script.sql
SET HEADING OFF;
SPOOL /home/oracle/test
select GRANTEE, GRANTOR, PRIVILEGE,GRANTABLE from DBA_TAB_PRIVS where TABLE_NAME='T';
exit;
EOF

docker cp .script.sql oracle-xe:/home/oracle

#docker exec -it --user oracle  oracle-xe /opt/oracle/product/18c/dbhomeXE/bin/sqlplus -S / as sysdba @/.script.sql |  tr -d '[:space:]' >out2.txt

docker exec -it --user oracle  oracle-xe /opt/oracle/product/18c/dbhomeXE/bin/sqlplus -S / as sysdba @/home/oracle/.script.sql 

docker cp oracle-xe:/home/oracle/test.lst /root

cat /root/test.lst |tr -d '[:space:]' >out2.txt

if [ `cat out2.txt` != "U2U1SELECTYESU3U2SELECTNO" ] 
then
	echo "Error: The tasks are not completed.">test_ex.log  && exit 1
else
	echo "done"
	echo "task completed!">test_ex.log  
fi


curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null


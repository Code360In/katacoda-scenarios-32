
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
select GRANTEE, GRANTOR, PRIVILEGE,GRANTABLE from USER_TAB_PRIVS where TABLE_NAME='T';
exit;
EOF

docker cp .script.sql oracle-xe:/opt/oracle/product/18c/dbhomeXE

result=`docker exec -it --user oracle  oracle-xe bash -c  "/opt/oracle/product/18c/dbhomeXE/bin/sqlplus -S u2/u2 @.script.sql | xargs "`

#remove last strange char from sqlplus
result=`echo $result|sed 's/.$//'` 


echo $result >.output.txt


if [ "$result" != 'U2 U1 SELECT YES U3 U2 SELECT NO' ]
then
	echo "Error: The tasks are not completed.">test_ex.log  && exit 1
else
	echo "done"
	echo "task completed!">test_ex.log  
fi


curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null


url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1
event_type='oracle-authorization-ex'
myname=`cat .myname`
myid=`cat .myid`

if [[ $myname == "" ]] || [[ $myid == "" ]]
then
	echo "Error: Please input your name and ID">test_ex.log && exit 1
fi

cat <<EOF >script.sql
SET HEADING OFF;
select user from dual;
exit;
EOF

sqlplus -S system/12345 @script.sql | xargs >.output.txt
result=`cat .output.txt`

if [[ $result != 'SYSTEM' ]]
then
	echo "Error: The tasks are not completed.">test_ex.log  && exit 1
else
	echo "done"
fi


curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null



url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1
event_type='python_json-ex3'
myname=`cat myname`
myid=`cat myid`

if [[ $myname == "" ]] || [[ $myid == "" ]]
then
	echo "Error: Please input your name and ID">test_ex3.log && exit 0
fi


cp /tests/ex_test.py /root

pytest  -k test_ex3 >test_ex3.log && echo "done" && curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null

rm /root/ex_test.py




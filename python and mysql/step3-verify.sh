url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start10

[[ $myname != "" ]] && [[ $myid != "" ]]   && [[ `python3 interest.py | diff -w expected.txt -` == '' ]]  && curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" && echo "done" ||echo "not yet!"






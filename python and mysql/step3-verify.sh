url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start20
if [[ `python3 interest.py | diff -w expected.txt -` == '' ]]
then
	echo "interest.py correct"
	
fi


[[ $myname != "" ]] && [[ $myid != "" ]]    && curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null && echo "done"


#[[ $myname != "" ]] && [[ $myid != "" ]]   && [[ `python3 interest.py | diff -w expected.txt -` == '' ]]  && echo "done" 

#&& curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null






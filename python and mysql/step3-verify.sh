url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start24

python3 interest.py >out.txt

DIFF=$(diff out.txt expected.txt) 
if [ $DIFF == "" ] 
then
    echo "interest  correct"
	echo "interest.py correct">interest_ok
	[[ $myname != "" ]] && [[ $myid != "" ]]    && curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null && echo "done"
else
	echo "interest not correct"
	echo "interest.py correct">interest_not_ok
fi


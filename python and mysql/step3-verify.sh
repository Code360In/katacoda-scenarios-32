url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start36
if [ -f expected.txt ] 
then
	echo "start2">expected_found
	
	python3 interest.py > actual.txt

	diff actual.txt expected.txt> diff.txt

	DIFF=`cat diff.txt`
	DIFF=`ls`
	echo $DIFF > diff2.txt
	echo $myname > name_output.txt
	
	if  [ $DIFF == "" ] 
		then
			echo "interest  correct"
			echo "interest.py correct">interest_ok
			[[ $myname != "" ]] && [[ $myid != "" ]]    && curl -s -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null && echo "done"
		else
			echo "interest not correct"
			echo "interest.py correct">interest_not_ok
		fi
   
else
	
	echo expected_not_found
fi



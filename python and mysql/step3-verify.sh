url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start34
if [ -f expected.txt ] 
then
	echo "start2">expected_found
	
	python3 interest.py > actual.txt

	diff actual.txt expected.txt> diff.txt

	DIFF=`cat diff.txt`

	echo $DIFF > diff2.txt
	
   
else
	
	echo expected_not_found
fi



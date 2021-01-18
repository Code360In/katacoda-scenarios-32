url='https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1'
event_type='python-sql-step3-ex'
myname=`cat myname`
myid=`cat myid`

echo "start2">start32

python3 interest.py > actual.txt

diff out.txt expected.txt> diff.txt

DIFF=`cat diff.txt`

echo $DIFF > out2.txt

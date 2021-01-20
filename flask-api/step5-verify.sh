myname=`curl -s http://localhost:5000/me| jq  '.name' |tr -d '"'` 
myid=`curl -s http://localhost:5000/me| jq  '.id' | tr -d '"'`
url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1


[[ $myname != "" ]] && [[ $myid != "" ]]   && python .verify.py && curl -s -G --data-urlencode "type=flask-step5-ex" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null && echo "done"|| || echo "Please add an API endpoint books/<book_id> for updating a given book. Submit HTTP PUT request to update the first book as shown in the instruction." >error.log


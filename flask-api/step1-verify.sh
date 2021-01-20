myname=`curl -s http://localhost:5000/me| jq  '.name' |tr -d '"'` 
myid=`curl -s http://localhost:5000/me| jq  '.id' | tr -d '"'`
url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1

[[ $myname != "" ]] && [[ $myid != "" ]]   &&
curl -s -G --data-urlencode "type=flask-step1-ex" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >/dev/null && echo "done"|| echo "You should start your flask server and specify your ID and name in the python script" >error.log





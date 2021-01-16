myname=`curl -s http://localhost:5000/me| jq  '.name' |tr -d '"'` 
myid=`curl -s http://localhost:5000/me| jq  '.id' | tr -d '"'`
url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1

[[ $myname != "put your name" ]] && [[ $myid != "put your studentID" ]]  && echo "done" &&
curl -s -G --data-urlencode "type=flask-step1-ex" --data-urlencode "myid=${myid}" --data-urlencode "name=${name}" "$url" >/dev/null || echo "not completed"


# reporting url
# https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1

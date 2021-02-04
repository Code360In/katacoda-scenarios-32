
url=https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1
event_type='oracle-authorization-ex-start'
myname="Unknown"
myid="Unknown"

curl -v -G --data-urlencode "type=${event_type}" --data-urlencode "myid=${myid}" --data-urlencode "name=${myname}" "$url" >.curl_log

echo "exercise logged" >.logged

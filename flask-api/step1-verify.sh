[[ $(curl -s http://localhost:5000/me| jq  '.name'| tr -d '"') != "put your name" ]] && [[ $(curl -s http://localhost:5000/me| jq  '.id'| tr -d '"') != "put your studentID" ]] && echo "done" || echo "not done"



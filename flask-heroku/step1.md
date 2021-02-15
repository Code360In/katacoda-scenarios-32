
https://testdriven.io/blog/deploying-flask-to-heroku-with-docker-and-gitlab/


`git clone https://github.com/testdrivenio/flask-vue-crud`{{execute}}

`cd flask-vue-crud`{{execute}}

`cd server`{{execute}}

`apt-get install virtualenv`{{execute}}

Press Y to confirm installation

`virtualenv -p python3 env`{{execute}}

`source env/bin/activate`{{execute}}

`pip install -r requirements.txt`{{execute}}


modify app.py to run at host 0.0.0.0
app.run(host='0.0.0.0')



`python app.py`{{execute}}

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/ping

Open terminal 2.



`cd flask-vue-crud/client`{{execute T2}}

`npm install`{{execute T2}}

Configure Disable host checking.

```
cat <<EOF >vue.config.js

```
{{execute T2}}
module.exports = {
    devServer: {
        disableHostCheck: true,
    }
}
EOF
```{{execute T2}}

`npm run serve`{{execute T2}}



kubectl create service nodeport my-service --tcp=10080:80 --node-port=30000


port: 10080 (service's port)
80:target port



Try: https://www.katacoda.com/rwclui/scenarios/kubernetes


Your Interactive Bash Terminal.

controlplane $ launch.sh
Waiting for Kubernetes to start...
Kubernetes started



controlplane $ kubectl create deployment mywebserver --image=nginx:latest 
deployment.apps/mywebserver created
controlplane $ kubectl get all
NAME                               READY   STATUS              RESTARTS   AGE
pod/mywebserver-5cb858fd59-mjh72   0/1     ContainerCreating   0          11s

NAME                 TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
service/kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   9m22s

NAME                          READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/mywebserver   0/1     1            0           11s

NAME                                     DESIRED   CURRENT   READY   AGE
replicaset.apps/mywebserver-5cb858fd59   1         1         0       11s
controlplane $ get nodes

Command 'get' not found, but there are 18 similar ones.

controlplane $ kubectl get nodes
NAME           STATUS   ROLES    AGE     VERSION
controlplane   Ready    master   10m     v1.18.0
node01         Ready    <none>   9m32s   v1.18.0
controlplane $ kubectl version
Client Version: version.Info{Major:"1", Minor:"18", GitVersion:"v1.18.0", GitCommit:"9e991415386e4cf155a24b1da15becaa390438d8", GitTreeState:"clean", BuildDate:"2020-03-25T14:58:59Z", GoVersion:"go1.13.8", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"18", GitVersion:"v1.18.0", GitCommit:"9e991415386e4cf155a24b1da15becaa390438d8", GitTreeState:"clean", BuildDate:"2020-03-25T14:50:46Z", GoVersion:"go1.13.8", Compiler:"gc", Platform:"linux/amd64"}
controlplane $ kubectl describe mywebserver
error: the server doesn't have a resource type "mywebserver"
controlplane $ kubectl describe deployment mywebserver
Name:                   mywebserver
Namespace:              default
CreationTimestamp:      Thu, 08 Apr 2021 12:29:27 +0000
Labels:                 app=mywebserver
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               app=mywebserver
Replicas:               1 desired | 1 updated | 1 total | 1 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=mywebserver
  Containers:
   nginx:
    Image:        nginx:latest
    Port:         <none>
    Host Port:    <none>
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   mywebserver-5cb858fd59 (1/1 replicas created)
Events:
  Type    Reason             Age    From                   Message
  ----    ------             ----   ----                   -------
  Normal  ScalingReplicaSet  3m25s  deployment-controller  Scaled up replica set mywebserver-5cb858fd59 to 1
controlplane $ ^C
controlplane $ 





kubectl version

kubectl run http --image=nginx:latest 
kubectl expose deployment http --type=NodePort --name=http-server


kubectl create deployment mywebserver --image=nginx:latest 



``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}

``{{execute}}
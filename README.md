bonjour
=======

Dockerised flask app that displays "Bonjour Toute Le Monde".


To build:
$ docker build -t bonjour .


To run:
$ docker run -p 5000:5000 bonjour


DockerHub:
https://hub.docker.com/repository/docker/anclemen/bonjour/general



Now the fun into k8s minikube, assume minikube cluster has been created.

$ kubectl create deployment bonjour --image=anclemen/bonjour

$ kubectl expose deployment bonjour --type="NodePort" --port 5000

$ NODE_PORT=$(kubectl get services bonjour -o go-template='{{(index .spec.ports 0).nodePort}}' )

$ MINIKUBE_IP=$(minikube ip)

$ curl $MINIKUBE_IP:$NODE_PORT

Bonjour Toute Le Monde!


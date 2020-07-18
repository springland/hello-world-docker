
This is a sample project to build a hello world on docker



**Build**
docker build -t springland/hello-world-docker  .

**Run**
docker run -p 8080:8080  springland/hello-world-docker 

docker run -p 80:8080 -d  springland/hello-world-docker

don't forget to use docker inpsect to check the network setting

**Test**

http://localhost:8080/hello
curl http://localhost/hello


push to docker hub

docker login -u usrname -p password
docker push springland/hello-world-docker 
 

The below command can help to check what could be wrong

docker run -it --entrypoint /bin/bash  springland/hello-world-docker -s


kubernets

create deployment.yaml
kubectl create deployment demo --image=springguides/demo --dry-run -o=yaml > deployment.yaml

echo --- >> deployment.yaml 

kubectl create service clusterip hello-world-k8s --tcp=8080:8080 --dry-run -o=yaml >> deployment.yaml

Deploy
kubectl apply -f deployment.yaml

Forward port
kubectl port-forward service/hello-world-k8s 8080:8080

 


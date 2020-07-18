
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



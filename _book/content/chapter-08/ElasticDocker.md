# Creating a Docker Image & Running a Container #

* Docker images are build using Dockerfile definitions
* E.g. hello-world image:
```
FROM scratch
COPY hello /
CMD ["/hello"]
```
* Where 'scratch' is name:tag of base image, in this case most basic image 'scratch:latest'
* 'COPY' command copies executable file 'hello' to the root of file system
* 'CMD' is command executed when container is running
* Official Elastic Search <a href="https://github.com/docker-library/elasticsearch/blob/master/5/Dockerfile" target="_blank">Dockerfile</a> is not as simple
* To run official image:
```
sudo docker run -d -p 9201:9200 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" docker.elastic.co/elasticsearch/elasticsearch:5.4.1
```
* -d: run in a detached mode
* -e: define listener ip for API and for cluster communication
* -p: map host port to container port
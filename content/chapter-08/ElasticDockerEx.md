# Docker Setup Exercise #

* Login into your sandbox
* Since previously installed Elastic is running, we will use a different port: 9201 for api
```
 sudo docker run -d -p 9201:9200 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" docker.elastic.co/elasticsearch/elasticsearch:5.4.1
```
* -d: run detached not to take over command prompt
* -e: parameters accepted/expected by the image
* Give it few moments to start and then test:
```
 curl elastic:changeme@localhost:9201
```
* Expected output:
```
{
  "name" : "3kMnHFQ",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "E7Ag9a_1SX2FVPsMQGUCng",
  "version" : {
    "number" : "5.4.1",
    "build_hash" : "2cfe0df",
    "build_date" : "2017-05-29T16:05:51.443Z",
    "build_snapshot" : false,
    "lucene_version" : "6.5.1"
  },
  "tagline" : "You Know, for Search"
}
```
* Using docker cli to list containers:
```
sudo docker ps -a
```
* Expected output is list with two containers: hello-world and elastic
* To stop running container, copy container id to replace in the command below:

```
sudo docker stop 8ed07e81b59c

```
* Using docker cli to list containers to confirm none are running:
```
sudo docker ps -a
```
* Expected output is a list of two containers previously launched: hello-world and elasticsearch

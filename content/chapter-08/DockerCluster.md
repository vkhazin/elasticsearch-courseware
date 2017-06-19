# Docker Cluster #

* In our exercise we have used single docker host
* For production we rather use multiple hosts to run our containers
* <a>Docker Swarm</a> provides orchestration up-to 1,000 nodes and 30,000 containers
![Swarm Diagram](../../media/swarm-diagram.png)
* docker-compose orchestrates launching multiple containers at once using <a href="https://github.com/darienmt/airplane-adventures/blob/master/Docker/elk-containers/docker-compose.yml" target="_blank">docker-compose.yml</a>
* In addition to Docker Swarm there is also <a href="https://kubernetes.io/" target="_blank">Google Kubernetes</a>, <a href="http://mesos.apache.org/" target="_blank">Apache Mesos</a>, and likely others
* <a href="http://techgenix.com/swarm-kubernetes-mesos/" target="_blank">Comparison from techgenix</a>
* In addition to self-hosted version of docker there are <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html" target="_blank">Aws Cluster Service</a>, <a href="https://cloud.google.com/container-engine/" target="_blank">Google Container Engine</a>, and recently <a href="https://cloud.docker.com" target="_blank">Docker Cloud</a>

# VM vs Container #

* The VM model blends an application, a full guest OS, and disk emulation
* Container model uses just the application's dependencies and runs them directly on a host OS
![Virtual Machine vs. Container](../../media/vm-vs-container.jpg)
* Container model reduces the overhead associated with starting and running instances
* The same host can host 10-15 VM's compared to dozens-hunders containers
* The isolation from OS kernel provided by containers is less robust than that of virtual machines
* Some advocate <a href="https://blog.abevoelker.com/why-i-dont-use-docker-much-anymore/" target="_blank">leaving</a> the docker containers
* Some provide detailed walk-through on how to <a href="https://medium.appbase.io/how-to-scale-and-migrate-elasticsearch-with-docker-10179930d7c9" target="_blank">embrace</a> ElasticSearch in containers
* For me, I would test the two approaches for a specific deployment as reality is never what it seems

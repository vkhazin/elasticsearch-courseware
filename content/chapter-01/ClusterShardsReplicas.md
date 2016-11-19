# Cluster, Shards, and Replicas #

* How many nodes in the cluster?
* Shards cannot be split between nodes, a shard is a complete Lucene index
* The question therefore is how many shards per cluster and then per node
* Max Jvm Heap size recommended for ElasticSearch: 32GB
* Number of shards is often base on the dataset size and many organizations mistakenly over-allocate
* How many number of replicas should I have?
* You may have guessed the answer - it depends...
* Number of replicas affects more than fault tolerance: write performance, read performance, and <a href="https://github.com/elastic/elasticsearch/issues/2488" target="_blank">split-brain problem</a>
* Fault tolerance rule is N+1, therefore is you would like you data to be stored twice - replica settings should be equal to 3.
* Write performance - in extreme cases index request to cluster will time-out when number of available nodes is less than number of replicas configured for the index
* Read performance - search uses replicas as well, mode replicas should result in faster searches
* Split-brain problem - no permanent solution, designated nodes complicate cluster setup and operation, but offer more granular control.
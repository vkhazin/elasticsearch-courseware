# Cluster State #

* With ElasticSearch it is easy to create a lot of indices, nodes, and lots and lots of shards
* Cluster State contains all of the mapping for every index and every field in the cluster
* <a href="https://www.loggly.com/blog/nine-tips-configuring-elasticsearch-for-high-performance/" target="_blank">Loggly.com shared a story where they have a cluster with 900MB of cluster state</a>
* Cluster State is stored and replicated between every node in the cluster
* Since ElasticSearch 2.0, cluster state changes have been sent as differences rather than complete state
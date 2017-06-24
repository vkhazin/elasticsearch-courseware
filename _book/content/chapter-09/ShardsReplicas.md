# Shards and Replicas #

* General recommendation: n nodes = n shards, and n - 1 replicas
* Pitfall: can adjust number of replicas on the fly, cannot change number of shards on an existing index
* Common solution: over-allocate shards, by how much though?
* 
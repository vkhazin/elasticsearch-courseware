# Indices vs. Types #

* ElasticSearch allows multiple types in the same index
* Shards are allocated per index not per type
* Mapping must not conflict within an Index not within a Type
* Smaller shards are easier to distribute evenly between nodes
* Aliases and multi-index search facilitates in searching across multiple indexes
* Replicas help improving query performance by distributing data retrieval
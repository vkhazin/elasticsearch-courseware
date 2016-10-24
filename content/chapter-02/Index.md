# Index #

* Index is broken down, stored, and processed as collection of shards
* Each shard is a complete Lucene Index and cannot be scaled-out
* Form Lucene performance perspective larger index is faster than series of smaller indices
* Shards are allocated to nodes and are searched independently
* At the completion of search individual shards results must be aggregated - too many shards may impact performance
* Index cannot store documents directly - types are used as buckets to index documents
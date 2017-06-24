# Capacity Planning #

* How many nodes?
* The basic starting point is two nodes with 2 cores and 4GB of memory on each node
* For fault tolerance perspective three nodes is more appropriate for any <a href="http://stackoverflow.com/questions/2330562/do-i-absolutely-need-a-minimum-of-3-nodes-servers-for-a-cassandra-cluster-or-wil" target="_blank">cluster</a>
* What's better more nodes or bigger nodes?
* More nodes equals IO, Memory, and GC (garbage collector) distributed processing
* Common pitfall with distributed databases - stressing common storage e.g. SAN (system attached storage)
* Bigger nodes means more processing can be performed on a node with fast access to in-memory data and faster local IO
* Resizing node in production is likely more challenging than adding a new node to the cluster
* <a href="https://www.elastic.co/blog/found-elasticsearch-in-production" target="_blank">Elasticsearch is built for scaling out on commodity hardware, not up on single massive machine</a>
* How high can it go? <a href="https://grey-boundary.io/field-notes-elasticsearch-at-petabyte-scale-on-aws/" target="_blank">Pretty high<a>
* So which one it is going to be: more smaller nodes or less larger nodes?

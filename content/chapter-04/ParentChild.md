# Parent-Child Relationship #

* Similar in nature to the nested model: both allow you to associate one entity with another
* Parent-Child linked documents will be stored in the same shard, possible trouble with data distribution
* With nested datatype all data lives within the scope of parent document
* With parent-child: parent and each child are indexed separately
* Children can be queried, updated, and deleted separately from the parent and from each other
* With large number of child documents parent-child indexing is more effective
* Child documents can be incorporated into query criteria and into the query results
* Parent-Child maps are stored in so called <a href="https://www.elastic.co/guide/en/elasticsearch/guide/2.x/docvalues.html" target="_blank">doc values</a> quick in-memory processing and scalable split on disk
* There are still performance concerns voiced in Elastic documentation
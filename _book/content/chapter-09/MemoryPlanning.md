# Memory Planning #

* If I plan to store X documents with Y KB in size - what's the formula for memory requirements?
* Search engines including ElasticSearch perform the best when data and index are cached in memory
* How many aggregate queries vs. filtered queries vs. scan queries would you run?
* How many request per second of each type are you planning to support?
* How often will you be taking full snapshots and incremental snapshots?
* How much memory is enough memory?
* ElasticSearch is not a database per ce, hence it <a href="https://www.elastic.co/blog/found-elasticsearch-in-production#outofmemory-caused-crashes" target="_blank">'does not look before it leaps...'</a>
* Approach recommended by Elastic: "start out with more memory than you need and scale down to find the sweet spot"
* Do not enable memory disk swap - it is <a href="https://www.elastic.co/guide/en/elasticsearch/guide/current/heap-sizing.html#_swapping_is_the_death_of_performance" target="_blank">deadly</a> for ElasticSearch performance
* Swap file might need to be disabled for other NoSql as well e.g.:<a href="http://stackoverflow.com/questions/22988824/why-swap-needs-to-be-turned-off-in-datastax-cassandra" target="_blank">Cassandra</a>

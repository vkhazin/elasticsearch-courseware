# Memory Planning #

* If I plan to store X documents with Y KB in size - what's the formula for memory requirements?
* Search engines including ElasticSearch perform the best when data and index is cached in memory
* How many aggregate queries vs filtered queries vs scan queries would you run?
* How many request per second of each type are you planning to support?
* How often will you be taking full snapshots and incremental snapshots?
* How much memory is enough memory?
* ElasticSearch is not a database per ce, hence it <a href https://www.elastic.co/blog/found-elasticsearch-in-production#outofmemory-caused-crashes" target="_blank">'does not look before it leaps...'</a>
* Approach recommended by Elastic: "start out with more memory than you need and scale down to find the sweet spot"

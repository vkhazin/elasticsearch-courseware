# Transaction Log and Lucene Index #

* Lucene index is organized during commit phase - relatively heavy operation
* <a href="http://stackoverflow.com/questions/32269632/writing-to-lucene-index-one-document-at-a-time-slows-down-over-time" target="_blank"> Lucene does not have built-in transaction log capabilities</a>
* Change made between two commit operations is lost in case of a failure
* To minimize data loss each shard uses write ahead log or transaction log
* In case of crash recent operations can be replayed back to Lucene index
* Flush is performing Lucene commit and is starting new transaction log in the background
* Flush and transaction log settings are configured in <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules-translog.html" target="_blank">elasticsearch.yml</a>
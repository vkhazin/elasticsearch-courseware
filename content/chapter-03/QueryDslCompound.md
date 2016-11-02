# Query Dsl Compound Clause #

* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/2.4/compound-queries.html" target="_blank">Combing leaf query clauses</a>
* bool frequently used and is simple to use:
```
curl localhost:9200/ordering/orders/_search -d '{
	"query" : {
		"bool" : {
			"must" : {
				"term" : { "id" : "1" }
			},
			"must": {
				"query_string" : { 
					"query" : "trackingId:*" 
				}
			}
		}
	}
}'
```

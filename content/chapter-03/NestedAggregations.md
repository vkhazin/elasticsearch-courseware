# Nested Aggregations #

* Example of nested aggregation query:
```
curl -XPOST "http://localhost:9200/ordering/order/_search" -d'
{
	"size": 0, 
		"aggs": {
			"order-status": {
				"terms": {
					"field": "status"}
			},
			"aggs": {
				"placedOn": {
					"???": {
						"field": "???"}
				}
			}			
		}
	}

```
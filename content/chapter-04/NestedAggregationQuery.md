# Nested Aggregations #

* Example of nested aggregation query, terms and histogram:
```
curl -XPOST 'localhost:9200/orders/orders/_search?pretty=true' \
  -H 'content-type: application/json' \
  -d '
{
  "size": 0,
  "aggs": {
    "order-status": {
      "terms": {
      "field": "status.keyword"
      },
      "aggs": {
        "placedOnMonth": {
	        "date_histogram" : {
	          "field": "placedOn",
	          "interval": "month",
	          "format": "YYYY-MM"
	         }
        }
      }
    }
  }
}
'
```


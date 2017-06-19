# Nested Aggregations #

* Example of nested aggregation query, terms and histogram:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
{
  "size": 0,
  "aggs": {
    "order-status": {
      "terms": {
      "field": "status"
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


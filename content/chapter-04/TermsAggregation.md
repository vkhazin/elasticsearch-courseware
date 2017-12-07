# Terms Aggregation #

* Recall first aggregation query: 
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -H 'content-type: application/json' -d '
{
  "size": 0, 
  "aggregations": {
    "order-status": {
      "terms": {
        "field": "status"
      }
    }
  }
}'
```
* "size": 0 - suppress query results to fetch aggregations results only
* "aggregations" or "aggs" - part of ElasticSearch Dsl
* "order-status" - an arbitrary name for aggregation
* "terms" - type of aggregation to use
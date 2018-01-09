# Terms Aggregation #

* Recall first aggregation query: 
```
curl -XPOST 'localhost:9200/orders/orders/_search?pretty=true' \
  -H 'content-type: application/json' \
  -d '
{
  "size": 0, 
  "aggregations": {
    "order-status": {
      "terms": {
        "field": "status.keyword"
      }
    }
  }
}'
```
* size": 0 - suppress raw query results to return aggregations only
* "aggregations" or "aggs" - part of ElasticSearch Dsl
* "order-status" - an arbitrary name for aggregation
* "terms" - type of aggregation to use
* Why the field is "status.keyword" rather than "status"?
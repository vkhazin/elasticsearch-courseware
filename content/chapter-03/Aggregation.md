# Aggregation Query #

* First aggregation query: 
```
curl -XPOST 'http://localhost:9200/orders/orders/_search?pretty=true' \
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
* "size": 0 - suppress query results to fetch aggregations results only
* "aggregations" or "aggs" - part of ElasticSearch Dsl
* "order-status" - an arbitrary name for aggregation
* "terms" - type of aggregation to use
* "status.keyword" - multi-field mapping for text fields
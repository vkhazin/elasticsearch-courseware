# Range Aggregation #

* Statically defines buckets for aggregation using value ranges, 0-50, 51-100, 100-*:
```
curl -XPOST 'localhost:9200/orders/orders/_search?pretty=true' \
  -H 'content-type: application/json' \
  -d '{
  "aggs" : {
    "order-amount" : {
      "range" : {
        "field" : "order_amount",
        "ranges" : [
            { "to" : 50 },
            { "from" : 50, "to" : 100 },
            { "from" : 100 }
        ]
      }
    }
  }
}'
```
* Result:
```
{
  ...
  "aggregations": {
    "order-amount" : {
      "buckets": [
        {
            "to": 50,
            "doc_count": 2
        },
        {
            "from": 50,
            "to": 100,
            "doc_count": 4
        },
        {
            "from": 100,
            "doc_count": 4
        }
      ]
    }
  }
}
```
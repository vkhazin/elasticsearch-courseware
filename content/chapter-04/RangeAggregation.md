# Range Aggregation #

* Statically defines buckets for aggregation using value ranges, 0-50, 51-100, 100-*:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
{
  "aggs" : {
      "order_amount_ranges" : {
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
}
```
* Result:
```
{
  ...
  "aggregations": {
    "order_amount_ranges" : {
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
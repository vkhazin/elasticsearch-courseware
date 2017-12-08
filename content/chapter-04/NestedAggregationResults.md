# Nested Aggregations Results #

* Expected result (snippet):
```
{
  ...
  "aggregations" : {
      "order-status" : {
        "doc_count_error_upper_bound" : 0,
        "sum_other_doc_count" : 0,
        "buckets" : [ {
          "key" : "pending",
          "doc_count" : 1,
          "placedOnMonth" : {
            "buckets" : [ {
              "key_as_string" : "2017-01",
              "key" : 1483228800000,
              "doc_count" : 1
            } ]
          }
        },
        ...
```
* doc_count_error_upper_bound: documents count are approximate as every shard executes its own query
* sum_other_doc_count: count of documents that were not part of the top N buckets returned
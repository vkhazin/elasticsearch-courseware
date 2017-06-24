# Nested Aggregations Results #

* Expected result (snippet):
```
{
  "took" : 3, "timed_out" : false,
  "_shards" : { "total" : 5, "successful" : 5, "failed" : 0},
  "hits" : {
    "total" : 4,
    "max_score" : 0.0,
    "hits" : [ ]
  },
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
        }, {
...
```
* doc_count_error_upper_bound: documents count are approximate as every shard executes its own query
* sum_other_doc_count: count of documents that are not part of the top terms
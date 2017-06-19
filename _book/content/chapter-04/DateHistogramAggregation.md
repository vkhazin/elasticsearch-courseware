# Date Histogram Aggregation #

* Aggregation that can be applied on date/time field values extracted from the documents
* Builds fixed size buckets based on the interval dynamically:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
{
  "size": 0,
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
'
```
* Results:
```
{
  ...
  "aggregations" : {
    "placedOnMonth" : {
      "buckets" : [ {
        "key_as_string" : "2016-01",
        "key" : 1451606400000,
        "doc_count" : 1
      }, {
        "key_as_string" : "2016-02",
        "key" : 1454284800000,
        "doc_count" : 0
      }, {
        "key_as_string" : "2016-03",
        "key" : 1456790400000,
        "doc_count" : 0
      }, {
...
```
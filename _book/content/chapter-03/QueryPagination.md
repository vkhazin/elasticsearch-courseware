# Query Pagination #

* Query results are limited to page size of 10 by default
* Query pagination and page number controlled by From/Size parameters:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
{ "from":0, "size":2, "query": {"match_all":{}}}'
```
* Expected result:
```
{
  "took" : 3,
  "timed_out" : false,
  "_shards" : {
    "total" : 5,
    "successful" : 5,
    "failed" : 0
  },
  "hits" : {
    "total" : 3,
    "max_score" : 1.0,
    "hits" : [ {
      "_index" : "ordering",
      "_type" : "order",
      "_id" : "2",
      "_score" : 1.0,
      "_source" : {
        "id" : "2",
        "placedOn" : "2017-01-01T00:00:00Z",
        "status" : "pending"
      }
    }, {
      "_index" : "ordering",
      "_type" : "order",
      "_id" : "4",
      "_score" : 1.0,
      "_source" : {
        "id" : "4",
        "placedOn" : "2016-01-01T00:00:00Z",
        "status" : "received"
      }
    } ]
  }
}
```
* Note hits.total field, what it stands for?
* How results are sorted?

# Query Uri #

* In addition to json dsl there is <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/search-uri-request.html" target="_blank">URI Search</a>
* Support is more limited than json Dsl, but Kibana seems to be just fine with it
* <b>q</b> parameter allows to specify query in lucene formatted query:
```
curl 'localhost:9200/ordering/order/_search?q=status:shipped&pretty=true'
```
* Expected result:
```
{
  "took" : 19,
  "timed_out" : false,
  "_shards" : {
    "total" : 5,
    "successful" : 5,
    "failed" : 0
  },
  "hits" : {
    "total" : 1,
    "max_score" : 0.30685282,
    "hits" : [ {
      "_index" : "ordering",
      "_type" : "order",
      "_id" : "3",
      "_score" : 0.30685282,
      "_source" : {
        "id" : "3",
        "placedOn" : "2016-10-01T00:00:00Z",
        "status" : "shipped"
      }
    } ]
  }
}
```
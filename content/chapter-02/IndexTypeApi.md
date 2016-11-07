# Index and Type Api #

* How do we create an index?
* Index will be created lazily by ElasticSeach when we post a document:
```
curl -XPOST localhost:9200/ordering/order/1 -d '
{"id": "1", "placedOn": "2016-10-17T13:03:30.830Z"}'
```
* Type will be created lazily by the same operation
* To retrieve the document just posted:
```
curl 'localhost:9200/ordering/order/_search?pretty=true'
```
* Expected result:
```
{
  "_index" : "ordering",
  "_type" : "order",
  "_id" : "1",
  "_version" : 1,
  "found" : true,
  "_source" : {
    "id" : "1",
    "placedOn" : "2016-10-17T13:03:30.830Z"
  }
}
```
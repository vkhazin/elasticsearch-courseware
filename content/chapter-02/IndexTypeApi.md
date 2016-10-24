# Index and Type Api #

* How do we create an index?
* Index will be created lazily by ElasticSeach when we post a document:
```
curl -XPOST localhost:9200/ordering/order/1 -d \ 
'{"id": "1", "placedOn": "2016-10-17T13:03:30.830Z"}'
```
* Type will be created lazily by the same operation
* 
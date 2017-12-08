# Query Pagination #

* Query results are limited to page size of 10 by default
* Query pagination and page number controlled by From/Size parameters:
```
curl -XPOST 'localhost:9200/orders/orders/_search?pretty=true' \
  -H 'content-type: application/json' \
  -d '
  { 
    "from":0, 
    "size":2, 
    "query": {
      "match_all":{}
    }
  }'
```
* Expected result (partially presented):
```
{
  ...
  "hits" : {
    "total" : 1,
    "max_score" : 1.0,
    "hits" : [
      {
        "_index" : "orders",
        "_type" : "orders",
        "_id" : "1",
        "_score" : 1.0,
        "_source" : {
          "id" : "1",
          "placedOn" : "2016-10-17T13:03:30.830Z"
        }
      },
      ...
    ]
  }
}
```
* Note hits.total field, what it stands for?
* How results are sorted?

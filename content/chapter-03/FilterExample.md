# Filter Example #

* Query search:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
{
    "query" : {
        "match": { "status": "pending" }
    }
}'
```
* Filter search:
```
 curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
 {
   "query": {
     "filtered": {
       "query": {
         "match_all": {}
       },
       "filter": {
         "term": { "status": "pending" }
       }
     }
   }
 }'
```
* Results difference is hardly noticeable if any, but processing is quite different
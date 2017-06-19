# Query Dsl #

* Json defined query:
```
curl 'http://localhost:9200/ordering/order/_search?pretty=true' -d '
{
   "query": {
      "bool": {
         "must": {
         "query_string" : {
            "query": "id:1"
            }
         }
      }
   }
}'
```
# Query Dsl #

* Json defined query:
```
curl -XPOST 'http://localhost:9200/orders/orders/_search?pretty=true' \
        -H 'content-type:application/json' \
        -d '
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
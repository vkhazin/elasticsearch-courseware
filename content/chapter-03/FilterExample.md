# Filter Example #

* Query search:
```
curl -XPOST 'localhost:9200/sample-data/collisions/_search?pretty=true' -d '{
  "query": {
    "term": { "COUNTY_NAME": "worcester" }
  }
}'
```
* Filter search:
```
 curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
 {
   "query": {
     "filtered": {
       "filter": {
         "term": { "COUNTY_NAME": "worcester" }
       }
     }
   }
 }'
```
* Pss: convert term value to lower case!
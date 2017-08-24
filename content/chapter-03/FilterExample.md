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
    "bool": {
      "filter": {
        "term": { "COUNTY_NAME": "worcester" }
      }
    }
  }
 }'
```
* Psst: convert term value to lower case!
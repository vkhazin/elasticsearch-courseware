# Query Dsl Leaf Clause #

* Field(s) level ```where``` clause
* ```match_all``` the most simplistic query
```
curl -XPOST 'localhost:9200/_search?pretty=true' \
  -H 'content-type:application/json' \
  -d '{
   "query": {
      "match_all": {}
   }
}'
```
* Simple match query:
```
curl -XPOST 'localhost:9200/_search?pretty=true' \
  -H 'content-type:application/json' \
  -d '{
  "query": {
    "match": {
      "streetName": "name"
    }
  }
}'
```

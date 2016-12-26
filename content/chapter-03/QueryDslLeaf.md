# Query Dsl Leaf Clause #

* Field(s) level 'where' clause
* 'match_all' the most simplistic query
```
curl 'localhost:9200/_search?pretty=true' -d '{
   "query": {
      "match_all": {}
   }
}'
```
* Simple match query:
```
curl 'localhost:9200/_search?pretty=true' -d '{
  "query": {
    "match": {
      "streetName": "name"
    }
  }
}'
```

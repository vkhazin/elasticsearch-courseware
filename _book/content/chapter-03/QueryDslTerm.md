# Query Dsl Term #

* Frequently used to match on exact value
* Equivalent of sql statement:
```
select * from orders where id = "1"
```
* Example
```
curl 'localhost:9200/ordering/orders/_search?pretty=true' -d '{
  "query" : {
    "term": {
      "id": "1"
    }
  }
}'
```
* Note that 'from orders' part of the statement is part of the url rather than body
* Capable of handling numbers, booleans, dates, and text.
* Often used as a filter rather than for scoring, commonly used with 'constant_score':
```
curl 'localhost:9200/ordering/orders/_search?pretty=true' -d '{
  "query" : {
    "constant_score" : { 
      "filter" : {
        "term": {
          "id": "1"
        }
      }
    }
  }
}'
```

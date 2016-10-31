# Query Dsl Range #

* Used to match on any range of values
* Equivalent of sql statement:
```
select * from orders where id >= 1 and id <= 2
```
* Example
```
curl localhost:9200/ordering/orders/_search -d '{
	"query" : {
      "range" : {
        "id" : {
        "gte" : 1,
        "lte" : 2
        }
      }
    }
}'
```
* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/2.4/term-level-queries.html" taget="_blank">More leaf query options</a>
# Query Dsl Terms #

* Used to match on any of the values
* Equivalent of sql statement:
```
select * from orders where id = "1" or id = "2"
```
* Example
```
curl localhost:9200/ordering/orders/_search -d '{
	"query" : {
		"terms": {
			"id": [ "1", "2"]
		}
	}
}'
```
* Can be extended with lookup - where list of values is a reference to a doc:
```
curl localhost:9200/ordering/orders/_search -d '{
  "query" : {
    "terms": {
      "id": {
        "index" : "orders",
        "type" : "lateorders",
        "id" : "2017-01-01",
        "path" : "ids"
      }
    }
  }
}'
```
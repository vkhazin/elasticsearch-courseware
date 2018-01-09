# Highlighting #

* Due to the elastic search text analyzers it is not always obvious why document was a match
* Highlights search result on one or more document fields:
```
curl -XPOST 'localhost:9200/orders/orders/_search?pretty=true' \
	-H 'content-type: application/json' \
	-d '
{
    "query" : {
        "match": { "id": "1" }
    },
    "highlight" : {
        "fields" : {
            "id" : {}
        }
    }
}'
```
* Expected result:
```
{
...
	"hits" : {
		"total" : 1,
		"max_score" : 0.71231794,
		"hits" : [ {
		  "_index" : "orders",
		  "_type" : "orders",
		  "_id" : "1",
		  "_score" : 0.71231794,
		  "_source" : {
		    "id" : "1",
		    "placedOn" : "2016-10-17T13:03:30.830Z"
		  },
		  "highlight" : {
		    "id" : [ "<em>1</em>" ]
		  }
	  } ]
	}
}
```
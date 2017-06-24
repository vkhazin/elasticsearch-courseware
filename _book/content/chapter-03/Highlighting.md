# Highlighting #

* Highlights search result on one or more fields:
```
curl -XPOST 'localhost:9200/ordering/order/_search?pretty=true' -d '
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
	"took" : 13,
	"timed_out" : false,
	"_shards" : {
	  "total" : 5,
	  "successful" : 5,
	  "failed" : 0
	},
	"hits" : {
		"total" : 1,
		"max_score" : 0.71231794,
		"hits" : [ {
		  "_index" : "ordering",
		  "_type" : "order",
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
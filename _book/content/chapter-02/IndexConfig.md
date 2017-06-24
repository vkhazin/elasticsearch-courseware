# Index Configuration #

* elasticsearch.yml defines defaults for index configuration:
```
number_of_shards: 5
number_of_replicas: 1
```
* Each index can be configured with desired number of shard during creation:
```
curl -XPUT 'localhost:9200/ordering' -d '
{
	"settings": {
		"number_of_shards" :   1
		"number_of_replicas" : 0
	}
}'
```
* Do you recall discussion about multi-index search capabilities?
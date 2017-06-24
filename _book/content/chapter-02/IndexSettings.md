# Index Settings #

* Number of shards cannot be changed after index has been created
* Number of replicas can be updated on existing index:
```
PUT /index-name/_settings
{
	"number_of_replicas": 5
}
```
* Number of replicas can be configured dynamically:
```
index.auto_expand_replicas: 0-5
```
* Query size can be limited to conserve heap memory:
```
index.max_result_window: 10000
``` 
* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html" target="_blank">More index settings</a>
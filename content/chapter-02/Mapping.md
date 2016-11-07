# Mapping #

* Defines how document and its fields are stored and indexed
* Mapping can be derived dynamically by ElasticSearch
* Number core data types are <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html" target="_blank">supported</a>
* Mapping can be added to existing index for <a style="color:red">new fields</a>
* Existing field mapping not always possible to modify
* ElasticSearch will derive mapping for new type and for new fields:
```
curl -XPOST localhost:9200/ordering/order/1 -d '
{"id": "1", "placedOn": "2016-10-17T13:03:30.830Z"}'
```
* Retrieving existing mappings:  
```
curl localhost:9200/ordering/order/_mapping
{
	ordering: {
		mappings: {
			order: {
				properties: {
					id: {
						type: "string"
					},
					placedOn: {
						type: "strict_date_optional_time||epoch_millis"
					}
				}
			}
		}
	}
}  
```
* Rich support for <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-date-format.html#built-in-date-formats" target="_blank">date formats</a>
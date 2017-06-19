# Shrink Index #

* Number of shards cannot be changed after index has been created, but
* New in version 5.x - index can be shrunk to smaller number of shards
* Index must be in good health and in read-only state, can be achieved with following request:
```
PUT /index-name/_settings
{
  "settings": {
    "index.routing.allocation.require._name": "new-node-name", 
    "index.blocks.write": true 
  }
}
```
* Shrink Index is a single RESTful command:
```
POST source-index/_shrink/target-index
```
* Shrink Index is brand new in version 5.x, it is ready for prime time? https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-shrink-index.html

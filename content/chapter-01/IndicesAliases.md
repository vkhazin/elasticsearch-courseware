# Multi-Index Operations and Aliases #

* Entire cluster search:
```
curl 'localhost:9200/_search?q=id:1'
```
* Multiple indices search:
```
curl 'localhost:9200/index1,index2/_search?q=id:1'
```
* Wildcard search:
```
curl 'localhost:9200/index*/_search?q=id:*'
```
* Index alias - create an alias for index or for group of indexes:
```
curl -XPOST 'http://localhost:9200/_aliases' -d '
{
    "actions" : [
        { "add" : { "index" : "test1", "alias" : "alias1" } },
        { "add" : { "index" : "test2", "alias" : "alias1" } }
    ]
}'
```
* Why bother? Logical data partitioning, archiving by index, access control...
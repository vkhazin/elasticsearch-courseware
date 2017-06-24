# Search Exercise Tips #

* Sort with query string:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&sort=id'
```
* Search with payload
```
curl 'localhost:9200/ordering/order/_search?pretty=true' -d '{
   "sort": {"id":"desc"}
}'
```
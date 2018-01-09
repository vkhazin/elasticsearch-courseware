# Query Exercise #

* Login into your ElasticSearch sandbox
* Make sure elastic search is running:
```
sudo service elasticsearch restart
```
* Populate few orders:
```
curl -XPOST localhost:9200/orders/orders/2 \
  -H 'content-type: application/json' \
  -d '
{
  "id": "2", 
  "placedOn": "2017-01-01T00:00:00Z", 
  "status": "pending"
}'
```
```
curl -XPOST localhost:9200/orders/orders/3 \
  -H 'content-type: application/json' \
  -d '
{
  "id": "3", 
  "placedOn": 
  "2016-10-01T00:00:00Z", 
  "status": "shipped"
}'
```
```
curl -XPOST localhost:9200/orders/orders/4 \
  -H 'content-type: application/json' \
  -d '
{
  "id": "4", 
  "placedOn": "2016-01-01T00:00:00Z", 
  "status": "received"
}'
```
* Confirm there are some records to search on:
```
curl 'localhost:9200/orders/orders/_search?pretty=true'
```
* How many documents did you find?
* How do you know whether got all the documents or just first page of records?
* How do you find all orders that were shipped?
* What is the order of results?
* How do you <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/search-request-sort.html" target="_blank">sort</a> result using an arbitrary field?
* Pick couple of options and run your sort query
* Reformat your query to use query uri instead of query json
* You will be asked to present your sort findings to others...
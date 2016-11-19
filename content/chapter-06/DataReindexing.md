# Data Re-Indexing #

* Every so often you may run into changes required in mapping for existing fields
* As per our previous attempts updating mapping for existing fields is not possible
* The only solution I am aware of: create new index with new mapping and move data over
* To move data reliably in ETL (extract, transform, and load) like fashion - scan API is useful
* Initiating a scroll:
```
curl 'localhost:9200/logstash-2015.05.20/log/_search?scroll=1m'
```
* To continue with scroll until no records left:
```
curl -XGET  'localhost:9200/_search/scroll'  -d '
{
    "scroll" : "1m", 
    "scroll_id" : "c2Nhbjs2OzM0NDg1ODpzRlBLc0FXNlNyNm5JWUc1" 
}
'
```
* What do you do with the data you receive?
* How do you plan for re-indexing possibility without affecting ElasticSearch clients?
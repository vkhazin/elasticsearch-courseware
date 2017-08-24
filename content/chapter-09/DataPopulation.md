# Data Population #

* ElasticSearch is best as a secondary store
* Bulk Api is a must for most applications
* Payload for bulk load is a bit less than self-explanatory
* It is json but it is not proper json, first line is meta-data and second line is Json data
* The json on each line must be on one line, between two lines '\n' character is expected
* '\n' character is expected after last line as well
* Example using curl requires creating a file with not-so-json payload: 'request' first:
```
echo '{ "index" : { "_index" : "ordering", "_type" : "order", "_id" : "1" }}
{ "id" : "1", "placedOn": "2016-10-17T13:03:30.830Z" }
' > request
```
* Posting request data requires --data-binary switch to instruct curl to post the data as is
```
curl -s -XPOST localhost:9200/_bulk --data-binary "@request"
```
# Parent-Child Indexing #

* Index parent first:
```
curl -XPOST 'localhost:9200/politics/party/1' -d '
{
   "id": 1,
   "name": "The Heartless"
}'
```
```
curl -XPOST 'localhost:9200/politics/party/2' -d '
{
   "id": 2,
   "name": "The Brainless"
}'
```
* Index child/children second:
```
curl -XPUT 'localhost:9200/politics/supporter/101?parent=1&pretty=true' -d '
{
  "id": "101",
  "name":  "Jane Smith",
  "dob":   "1970-10-24"
}'
```
```
curl -XPUT 'localhost:9200/politics/supporter/201?parent=2&pretty=true' -d '
{
  "id": "201",
  "name":  "John Smith",
  "dob":   "1970-01-13"
}'
```

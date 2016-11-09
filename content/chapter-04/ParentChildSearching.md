# Parent-Child Searching #

* Searching for parent by child:
```
curl 'localhost:9200/politics/party/_search?pretty=true' -d '{
  "query": {
    "has_child": {
      "type": "supporter",
      "query": {
        "term": {
          "dob": "1970-10-24"
        }
      }
    }
  }
}'
```
* Search for children by parent:
```
curl 'localhost:9200/politics/supporter/_search?pretty=true' -d '{
{
  "query": {
    "has_parent": {
      "type": "party", 
      "query": {
        "match": {
          "name": "The Heartless"
        }
      }
    }
  }
}'
```

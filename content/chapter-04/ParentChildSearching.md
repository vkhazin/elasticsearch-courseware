# Parent-Child Searching #

* Searching for parent by child query:
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

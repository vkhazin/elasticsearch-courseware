# Nested Datatype Querying #

* The query against nested objects is executed as if the nested documents were indexed independently from the parent document:
```
{
  "nested" : {
    "path" : "user",
    "query" : {
      "bool" : {
        "must" : [
          {
              "match" : {"user.first" : "John"}
          },
          {
              "match" : {"user.last" : "Smith"}
          }
        ]
      }
    }
  }
}
```
* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/5.1/nested.html" target="_blank">Additional options available for nested datatype mapping, querying, and aggregation<a>
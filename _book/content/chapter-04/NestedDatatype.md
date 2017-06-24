# Nested Datatype #

* Nested is a specialized version of the 'object' datatype that allows querying of arrays of objects to be queried independently
* Lucene has no concept of inner objects and hence data is flattened when being indexed with not quite as expected behavior.
* Data posted
```
{
  "group" : "fans",
  "user" : [ 
    {
      "first" : "John",
      "last" :  "Smith"
    },
    {
      "first" : "Alice",
      "last" :  "White"
    }
  ]
}
```
* Indexed as:
```
{
  "group" :        "fans",
  "user.first" : [ "alice", "john" ],
  "user.last" :  [ "smith", "white" ]
}
```
* What you think would be a consequence of such indexing? 
* Should you be able to find person 'John White'?
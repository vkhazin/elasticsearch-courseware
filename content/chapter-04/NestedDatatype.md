# Nested Datatype #

* Lucene has no concept of inner objects and hence data is flattened when being indexed with not quite as expected behavior.
* Data posted
```
{
  "group" : "fans",
  "user" : [{
      "first" : "John", "last" :  "Smith"
    },{
      "first" : "Alice", "last" :  "White"
    }
  ]
}
```
* Indexed by Lucene as:
```
{
  "group" :        "fans",
  "user.first" : [ "alice", "john" ],
  "user.last" :  [ "smith", "white" ]
}
```
* What you think would be a consequence of such indexing? 
* Should you be able to find person ```user.first:john AND user.last:white```?
* Nested is a specialized version of the 'object' datatype that allows querying arrays of objects independently from each other addressing less than perfect search results
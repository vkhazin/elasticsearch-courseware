# Nested Datatype Mapping #

* To maintain granularity of 'user' array indexing - 'nested' datatype can be used to index each object as an independent, hidden document:
```
{
     "mappings": {
       "groups": {
         "properties": {
           "user": {
             "type": "nested" 
           }
         }
       } 
     }
}
```
* With above mapping user ```user.first:john AND user.last:white``` won't be found, with special query syntax
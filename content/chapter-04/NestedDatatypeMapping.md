# Nested Datatype Mapping #

* To maintain granularity of 'user' array indexing - 'nested' datatype can be used to index each object as independent, hidden document:
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
* With above mapping user 'John White' won't be found.
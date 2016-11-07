# Nested Datatype Mapping #

* To maintain independence of 'user' array in the object 'nested' datatype can be used to index each object as independent hidden document:
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
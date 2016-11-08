# Parent-Child Mapping #

* Requires mapping at the time of index creation or using <a href="https://gist.github.com/nicolashery/6317643" target="_blank">update-mapping</a>
* Creating new index with two types for parent-child relationship:
```
curl -XPUT 'localhost:9200/politics?pretty=true' -d '
{
   "mappings": {
     "party": {},
     "supporter": {
       "_parent": {
         "type": "party" 
       }
     }
   }
}'
```

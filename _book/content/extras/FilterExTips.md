# Filter Exercise Tips #

* Sample filter:
```
curl 'localhost:9200/ordering/order/_search?pretty=true' -d '
{
  "query": {
    "bool": {
      "filter": {
        "term": {
          "COUNTY_NAME": "worcester"
        }
      }
    }
  }
}
'
```
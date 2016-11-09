# Search Exercise #

* We have covered following data-model approaches: aggregation, nested objects, and parent-child relationship
* There is likely not enough time to cover all options in a single exercise
* Let's come up with a business data to map and discuss what's the best way to define mapping
* Create index using create index api:
```
curl -XPUT 'localhost:9200/<index-name>?pretty=true' -d '
{
  ...
}'
```
* Populate data
* Come up with query to run
* Execute and troubleshoot query
* If there is time - let's consider alternative data-modelling and discuss pros/cons between the two

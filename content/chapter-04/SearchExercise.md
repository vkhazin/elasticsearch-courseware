# Search Exercise #

* Log-in into your ElasticSearch sandbox
* Make sure elastic search is running:
```
sudo service elasticsearch restart
```
* We have covered following data-model approaches: aggregation, nested objects, and parent-child relationship
* There is likely not enough time to cover all options in a single exercise
* Pick a use case for data to map and discuss what's the best way to define mapping: simple, nested, or parent-child
* Create index using create index api:
```
curl -XPUT 'localhost:9200/<index-name>?pretty=true' \
  -H 'content-type:application:json' \
  -d '
{
  "mappings": {
    ...
  }
}'
```
* Populate test data
* Come up with queries to run
* Execute and troubleshoot queries using syntax specific to your use-case: simple, nested, parent-child
* If there is time - consider alternative data-modelling and discuss pros/cons between the two
* You will be asked to present your considerations and findings

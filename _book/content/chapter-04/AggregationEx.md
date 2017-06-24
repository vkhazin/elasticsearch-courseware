# Aggregation Exercise #

* Log-in into your ElasticSearch sandbox
* Populate few sample movie data:
```
curl https://elasticsearch-courseware.icssolutions.ca/examples/data-sets/movies.txt -o movies.txt
curl -XPOST 'localhost:9200/_bulk' --data-binary "@movies.txt"
```
* Confirm there are some records to search on:
```
curl 'localhost:9200/sample-data/movies/_search?pretty=true'
```
* Let's aggregate on actor name
```
curl 'localhost:9200/sample-data/movies/_search?pretty=true' -d '
{
  "size": 0,
  "aggs": {
    "actor_name": {
      "terms": {
        "field": "Starring.CastCrewName.keyword"
      }
    }
  }
}'
```
* What buckets did you get?
* How do I get more than 10 buckets? <a href="http://stackoverflow.com/questions/22927098/show-all-elasticsearch-aggregation-results-buckets-and-not-just-10" target="_blank">Check StackOverflow posting!</a>
* What is 'sum_other_doc_count' field?
* Let's find out average movie rating for the actor:
```
curl 'localhost:9200/sample-data/movies/_search?pretty=true' -d '
{
  "size": 0,
  "aggs": {
    "actor_name": {
      "terms": {
        "field": "Starring.CastCrewName.keyword"
      },
      "aggs": {
        "rating": {
          "avg": {
            "field": "StarRating"
          }
        }
      }
    }
  }
}
'
```
* Take a moment to understand the variety of <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/search-aggregations.html" target="_blank">aggregation types</a>
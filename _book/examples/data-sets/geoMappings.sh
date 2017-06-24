curl https://elasticsearch-courseware.icssolutions.ca/examples/data-sets/logs.json -o logs.json

curl -XDELETE localhost:9200/logstash-2015.05.20
curl -XPUT localhost:9200/logstash-2015.05.20 -d '
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}'


curl -XDELETE localhost:9200/logstash-2015.05.18
curl -XPUT localhost:9200/logstash-2015.05.18 -d '
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}'

curl -XDELETE localhost:9200/logstash-2015.05.19
curl -XPUT localhost:9200/logstash-2015.05.19 -d '
{
  "mappings": {
    "log": {
      "properties": {
        "geo": {
          "properties": {
            "coordinates": {
              "type": "geo_point"
            }
          }
        }
      }
    }
  }
}'

 curl -XPUT localhost:9200/_bulk --data-binary "@./logs.json"
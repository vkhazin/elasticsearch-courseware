# Not Analyzed & Multi-Fields Exercise #

* Login into <a href="https://www.nitrous.io/app/#/login" target="_blank">Nitrous.io<a> using credentials created during Exercise Setup
* Your sandbox is asleep: start workstation and then start project
* Select 'Open IDE' to get into your sandbox
* We have not yet configured elasticsearch service to start automatically, start using terminal window:
```
sudo service elasticsearch start
``` 
* Service will start but listener will a bit to start responding to incoming requests:
```
curl localhost:9200
```
* Give it few minutes before you get json response
* Post new document:
```
curl -XPOST localhost:9200/ordering/order/1 -d \
'{"id": "1", "placedOn": "2016-10-17T13:03:30.830Z"}'
```
* Fetch mapping:
```
curl 'localhost:9200/ordering/order/_mapping?pretty=true'
```
* Expected response:
```
{
  "ordering" : {
    "mappings" : {
      "order" : {
        "properties" : {
          "id" : {
            "type" : "string"
          },
          "placedOn" : {
            "type" : "date",
            "format" : "strict_date_optional_time||epoch_millis"
          }
        }
      }
    }
  }
}
```
* Add mapping for a new field
```
curl -XPUT localhost:9200/ordering/order/_mapping -d \ '
{
  "order" : {
    "properties" : {
      "id" : {
        "type" : "string"
      },
      "placedOn" : {
        "type" : "date",
        "format" : "strict_date_optional_time||epoch_millis"
      },
      "trackingId" : {
        "type" : "string",
        "index" : "not_analyzed"
      }
    }
  }
}'
```
* Expected response:
```
{"acknowledged":true}
```

* Populate new order with spaces in id and trackingId fields/properties:  
```
curl -XPOST localhost:9200/ordering/order/1 -d \
'{
  "id": "orderId with spaces", 
  "placedOn": "2016-10-17T13:03:30.830Z",
  "trackingId": "trackingId with spaces"

}'
```  
* Let's run first search:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=id:orderId'
```
* Did you get any results?
* Let's run second search:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=trackingId:trackingId'
```
* Did you get any results?  
* What's the difference in behaviour and why?  
* Adding mapping for multi-field:
```
curl -XPUT localhost:9200/ordering/order/_mapping -d \ '
{
  "order" : {
    "properties":{  
       "streetName":{  
          "type":"string",
          "fields":{  
             "notparsed":{  
                "type":"string",
                "index":"not_analyzed"
             }
          }
       }
    }
  }
}'
```
* Re-populate the data:
```
curl -XPOST localhost:9200/ordering/order/1 -d \
'{
  "id": "string with spaces", 
  "placedOn": "2016-10-17T13:03:30.830Z",
  "streetName": "name with spaces"
}'
```
* Let's search for the street name:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=streetName:name'
```
* Let's search for the street name on not-parsed field:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=streetName.notparsed:name'
```
* Let's search for the street name on not-parsed field again:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=streetName.notparsed:name%20with%20spaces'
```
* What are results in the search #1, #2, and #3; and what is the reason for these results?

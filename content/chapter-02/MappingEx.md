# Mapping Exercise #

* Login into your sandbox
* We have not yet configured elasticsearch service to start automatically, start using terminal window:
```
sudo service elasticsearch start
```
* Service will start but listener will take its time before responding to incoming requests:
```
curl localhost:9200
```
* Give it few minutes before you get json response
* Post new document:
```
curl -XPOST localhost:9200/orders/orders/1 \
  -H 'content-type: application/json' \
  -d '
{
  "id": "1", 
  "placedOn": "2016-10-17T13:03:30.830Z"
}'
```
* Fetch mapping:
```
curl 'localhost:9200/orders/orders/_mapping?pretty=true'
```
* Expected response:
```
{
  "orders" : {
    "mappings" : {
      "orders" : {
        "properties" : {
          "id" : {
            "type" : "text",
            "fields" : {
              "keyword" : {
                "type" : "keyword",
                "ignore_above" : 256
              }
            }
          },
          "placedOn" : {
            "type" : "date"
          }
        }
      }
    }
  }
}
```
* Try modifying existing mapping:
```
curl -XPUT 'localhost:9200/orders/_mapping?pretty=true' \
  -H 'content-type: application/json' \
  -d '
{
"orders" : {
  "mappings" : {
    "orders" : {
      "properties" : {
        "id" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          }
        },
        "placedOn" : {
          "type" : "date",
          "format" : "strict_date_optional_time||epoch_millis"
        }
      }
    }
  }
}
}'
```
* What's the outcome? And why?
* Try modifying existing type mapping:
```
curl -XPUT 'localhost:9200/orders/orders/_mapping?pretty=mapping' \
  -H 'content-type: application/json' \
  -d '{
  "orders" : {
    "mappings" : {
      "orders" : {
        "properties" : {
          "id" : {
            "type" : "text",
            "fields" : {
              "keyword" : {
                "type" : "keyword",
                "ignore_above" : 256
              }
            }
          },
          "placedOn" : {
            "type" : "date",
            "format" : "strict_date_optional_time||epoch_millis"
          }
        }
      }
    }
  }
}'
```
* What now? Why?
* Let us try again:
```
curl -XPUT 'localhost:9200/orders/orders/_mapping?pretty=mapping' \
  -H 'content-type: application/json' \
  -d '
{
  "orders" : {
    "properties" : {
      "id" : {
        "type" : "text",
        "fields" : {
          "keyword" : {
            "type" : "keyword",
            "ignore_above" : 256
          }
        }
      },
      "placedOn" : {
        "type" : "date",
        "format" : "strict_date_optional_time||epoch_millis"
      }
    }
  }
}'
```
* Did it work? What's the difference?
* Let's modify data type for existing field
```
curl -XPUT 'localhost:9200/orders/orders/_mapping?pretty=true' \
  -H 'content-type: application/json' 
  -d '
{
  "orders" : {
    "properties" : {
      "id" : {
        "type" : "double"
      },
      "placedOn" : {
        "type" : "date",
        "format" : "strict_date_optional_time||epoch_millis"
      }
    }
  }
}'
```
* Seriously, what now? Why? So much for the dynamic data mapping?
* What if we need to change data type after we have indexed the data?
* There is no (more) option to delete the mapping - delete and recreate index is the only option :-(
```
curl -XDELETE localhost:9200/orders
curl -XPUT localhost:9200/orders
```
* User json data from the previous step to define the mapping
* Watch out! There is no warning or confirmation using curl!
* Psst: look out for the proper response too:
```
{
  "acknowledged": true
}
```



# Mapping Exercise #

# One Node Setup Exercise #

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
curl -XPOST localhost:9200/ordering/order/1 -d \ 
'{"id": "1", "placedOn": "2016-10-17T13:03:30.830Z"}'
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
* Try modifying existing mapping
curl -XPUT localhost:9200/ordering/_mapping -d '
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
}'

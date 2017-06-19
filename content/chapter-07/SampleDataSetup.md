# Sample Data Setup #

* For discovery and visualization we will need some data
* Logs collected by logstash "schema":
```
{
  "@timestamp" : "2015-05-18T12:20:35.324Z",
  "ip" : "250.252.55.241",
  "extension" : "jpg",
  "response" : "200",
  "geo" : {
    "coordinates" : {
      "lat" : 42.10690806,
      "lon" : -111.9125389
    },
    "src" : "CN",
    "dest" : "BR",
    "srcdest" : "CN:BR"
  },
  "@tags" : [ "success", "security" ],
   ...more fields as logs are messy
}
```
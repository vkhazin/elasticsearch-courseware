# One Node Setup Exercise #

* Login into your sandbox
* Update distro using terminal window:
```
sudo apt-get update && sudo apt-get install apt-transport-https -y
```
* Install Java Runtime Environment using terminal window
```
sudo apt-get install default-jre -y
```
* Download and install Public Signing Key:
```
curl -o - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```
* Add repository definition:
```
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
```
* Install Elastic Search:
```
sudo apt-get update && sudo apt-get install elasticsearch
```
* Start Elastic Search service:
```
sudo service elasticsearch start
```
* Give it a moment to finish the initialization and verify it is running:
```
curl localhost:9200
```
* Expected response:
```
{
  "name" : "TBvpgLP",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "A7_ZS4BbTkWpJuv9ev8s1w",
  "version" : {
    "number" : "5.3.2",
    "build_hash" : "3068195",
    "build_date" : "2017-04-24T16:15:59.481Z",
    "build_snapshot" : false,
    "lucene_version" : "6.4.2"
  },
  "tagline" : "You Know, for Search"
}
```
* Posting first document:
```
curl -XPOST localhost:9200/ordering/order/1 -d ' {
  "id": "1", 
  "placedOn": "2016-10-17T13:03:30.830Z"
}'
```
* Expected Response:  
{"_index":"ordering","_type":"order","_id":"1","_version":1,"_shards":{"total":2,"successful":1,"failed":0},"created":true}
* First query:
```
curl 'localhost:9200/ordering/order/_search?pretty=true&q=id:1'
```
* Please review results - where are: doc id, document data, index name, type name, and search score? 
# Exercise: Setup Kibana #

* Login into your sand-box
* From terminal download and install Public Signing Key:
```
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```
* From terminal add repository definitions:
```
echo "deb https://packages.elastic.co/kibana/4.6/debian stable main" | sudo tee -a /etc/apt/sources.list.d/kibana.list
```
* Update repositories info and install Kibana:
```
sudo apt-get update && sudo apt-get -y install kibana
```
* Confirm or Start Kibana:
```
sudo service kibana status
```
or
```
sudo service kibana start
```
* Populating sample data:
```
wget https://elasticsearch-courseware.icssolutions.ca/examples/data-sets/logs.json
curl -XPOST 'localhost:9200/_bulk' --data-binary "@logs.json"
```
* Open browser to http://localhost:5601 or http://public-ip-address:5601
* Kibana requires configuration before it display data: index name pattern is required
* To find out what indices we have in the cluster:
```
curl localhost:9200/_cat/inidces
```
* After typing index name pattern with star as a wildcard tab out from the field to get the fields refreshed
* Kibana requires a date-time field to filter data on
* By default Kibana displays data for last 15 minutes and it simulated environment it is often an empty data-set
* Look at the top-right corner to adjust the timeframe
* You should be able to see some data now, if not common trouble is index pattern name and a timeframe selected
* There is a star icon on the top to set default settings
* Head to the 'Discover' link on the top
* Adjust time-frame in the top-right corner
* Use search box to locate some record
* Select 'add' link next to some field on the left to add them to the display
* Select any record and switch between text and json view
* Save search using icon under the time frame selector
* We will look into other tabs a bit later...
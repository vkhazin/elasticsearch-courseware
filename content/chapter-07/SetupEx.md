# Exercise: Setup Kibana #

* Log-in into your sand-box
* May need to start your elastic search service:
```
sudo service elasticsearch start
```
* From terminal download and install Public Signing Key:
```
curl https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```
* From terminal add repository definitions:
```
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
```
* Update repositories info and install Kibana:
```
sudo apt-get update && sudo apt-get install kibana
```
* Start Kibana service:
```
sudo service kibana start
```
* Populate sample data:
```
curl https://elasticsearch-courseware.icssolutions.ca/examples/data-sets/logs.json -o logs.json
curl -XPOST 'localhost:9200/_bulk' --data-binary "@logs.json"
```
* By default Kibana listens to localhost and it won't be really helpful in most environments
* Edit kibana.yml to set server.host: 0.0.0.0:
```
sudo nano /etc/kibana/kibana.yml
```
* Restart Kibana service:
```
sudo service kibana restart
```
* Open browser to http://domain-name:5601, where domain name is the same as for ssh connection
* Kibana requires configuration before it display data: index name pattern is required
* To find out what indices we have in the cluster:
```
curl 'localhost:9200/_cat/indices?format=json'
```
* After typing index name pattern with star as a wildcard tab out from the field to get the fields refreshed
* Kibana (by default) requires a date-time field to filter data on
* By default Kibana displays data for the last 15 minutes and in a simulated environment it is often an empty result set
* Look at the top-right corner to adjust the timeframe
* You should be able to see some data now, if not, common troubles are index pattern configuration and a timeframe selection
* There is a star icon at the top  of the page to preserve default settings
* Head to the 'Discover' link at the top
* Adjust time-frame in the top-right corner
* Use search box to locate some record
* Select 'add' link next to few fields to present selected fields on the results pane
* Select any record and switch between text and json views
* Save search using link on top of the page
* We will look into other links a bit later...
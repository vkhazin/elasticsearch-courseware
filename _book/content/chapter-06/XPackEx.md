# XPack Exercise #

* Installing X-Pack plug-in for ElasticSearch:
```
cd /usr/share/elasticsearch/
sudo ./bin/elasticsearch-plugin install x-pack
```
* Install X-Pack plug-in for Kibana (will take some time):
```
cd /usr/share/kibana/
sudo ./bin/kibana-plugin install x-pack
```
* Shutdown ElasticSearch and Kibana services:
```
sudo service kibana stop
sudo service elasticsearch stop
```
* Start ElasticSearch and Kibana services:
```
sudo service elasticsearch start
sudo service kibana start
```
* Navigate to http://ip-address:5601
* Login with default credentials: elastic/change
* Explore the 'Monitoring' and 'Management' links
* Feel free to install other monitoring plug-ins to find out which one you like more
* Links provided on the previous slide...
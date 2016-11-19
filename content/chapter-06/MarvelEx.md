# Marvel Exercise #

* Installing license and marvel agent plug-ins for ElasticSearch:
```
sudo cd /usr/share/elasticsearch/
sudo bin/plugin install license
sudo bin/plugin install marvel-agent
```
* Install marvel plug-in for Kibana:
```
sudo cd /opt/kibana/bin/kibana
sudo ./bin/kibana plugin --install elasticsearch/marvel/2.4.1
```
* Shutdown ElasticSearch and Kibana services:
```
sudo service kibana stop
sudo service elasticsearch stop
```
* Start ElasticSearch and Kibana services:
```
sudo service start elasticsearch
sudo service start kibana
```
* Navigate to http://ip-address:5601
* Switch to Marvel user interface by selecting 9-squares icon from top menu
* Explore Marvel User Interface
* Feel free to install other monitoring plug-ins to find out which one you like more
* Links provided on the previous slide...
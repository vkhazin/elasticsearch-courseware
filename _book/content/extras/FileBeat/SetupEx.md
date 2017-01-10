# Setup Exercise #

* Download public key for the repository:
```
curl -o - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```
* Add repository to the list:
```
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
```
* Install Filebeat from the repository:
```
sudo apt-get update && sudo apt-get install filebeat
```
* Start Filebeat service:
```
sudo service filebeat start
```
* Configure the logs location:
```
sudo nano /etc/filebeat/filebeat.yml
```
* Important settings:
```
- input_type: log
  paths:
    - /var/log/*.log

output.elasticsearch:
     hosts: ["localhost:9200"]
```

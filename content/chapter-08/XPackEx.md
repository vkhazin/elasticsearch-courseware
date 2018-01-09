# X-Pack Installation #

* Stop Elasticsearch and Kibana:
```
sudo systemctl stop kibana.service && sudo systemctl stop elasticsearch.service
```
* Installing X-Pack plug-in for Elasticsearch:
```
cd /usr/share/elasticsearch/
sudo ./bin/elasticsearch-plugin install x-pack
```
Accept adding permissions with `"y"`

* Install X-Pack plug-in for Kibana (will take some time for rebuilding):
```
cd /usr/share/kibana/
sudo ./bin/kibana-plugin install x-pack
```
* Generate certificates
```
cd /usr/share/elasticsearch/bin/x-pack/
sudo ./certgen
```
Enter output file location, example:
```
/root/certificate-bundle.zip
```
Enter instance name, should be the hostname, example:
```
ubuntu3
```
Accept all defaults for next questions  

* Unpack the certificates bundle and copy to the destination: 
```
cd ~
sudo unzip /root/certificate-bundle.zip
sudo mkdir /etc/elasticsearch/certs
sudo cp -R ca /etc/elasticsearch/certs
sudo cp -R ubuntu3/ /etc/elasticsearch/certs
```
NOTE: You may need to install `unzip` utility with `sudo apt install unzip`

* Add lines in `/etc/elasticsearch/elasticsearch.yml`  
```
xpack.ssl.key: certs/ubuntu3/ubuntu3.key 
xpack.ssl.certificate: certs/ubuntu3/ubuntu3.crt 
xpack.ssl.certificate_authorities: certs/ca/ca.crt 
xpack.security.transport.ssl.enabled: true
```
* Generate passwords:
```
cd /usr/share/elasticsearch/bin/x-pack/
sudo ./setup-passwords interactive
```
Confirm that you would like to continue `"y"` and enter passwords for 3 default users.

* Modify /etc/kibana/kibana.yml:
```
sudo nano /etc/kibana/kibana.yml
```
Values to change:
```
elasticsearch.username: "kibana"
elasticsearch.password: <password>
```
* Start ElasticSearch and Kibana services:
```
sudo systemctl restart elasticsearch.service && sudo systemctl restart kibana.service   
```
* Navigate to http://ip-address:5601/
* Login with credentials for `elastic` user

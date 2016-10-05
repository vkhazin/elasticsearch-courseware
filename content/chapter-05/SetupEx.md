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
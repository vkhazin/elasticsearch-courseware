# Setup Excercise #

* Download and install the Public Signing Key:  
```
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
```
* Add repository definition:  
```
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
```
* Install logstash from repository:  
```
sudo apt-get update && sudo apt-get install logstash
```
* Create a manual pipeline for Logstash
    ```
    cd /usr/share/logstash
    sudo bin/logstash -e 'input { stdin { } } output { stdout {} }'
    ```
* -e: enable specifying configuration directly from the command line
* stdin: file handle that process reads to get information from you, human
* stdout: process writes log information to this file handle
* After pipeline has started  
```
The stdin plugin is now waiting for input:
```
type:
  ```
  Hello World!
  ```
And press enter
* Expected response:
    ```
    2017-06-20T01:22:14.405+0000 ubuntu Hello World!
    ```
* Logstash adds a timestamp and hostname to the message we sent
* To exit Logstash use keyboard combination ctrl-d

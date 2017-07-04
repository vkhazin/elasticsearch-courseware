# Log Processing Exercise #

* Create configuration file:
  ```
  sudo nano /etc/logstash/conf.d/cloud-init.conf
  ```
* Copy-paste settings we have reviewed during previous slide:
  ```
  input {
    file {
      path => "/var/log/cloud-init.log"
      start_position => "beginning"
      type => "logs"
    }
  }

  filter {
    grok {
      match=> {
        "message"=>"%{TIMESTAMP_ISO8601:datetime}%{SPACE}%{SPACE}-%{SPACE} (?<module>(?<= - )(.+)(?=\[))(\[)(?<loglevel>(.+)(?=\]))(\]: )%{GREEDYDATA:message}"
      }
    }
  }

  output {
    elasticsearch {
      hosts => ["http://localhost:9200"]
      index => "cloud-init"
    }
  }
  ```
* Logstash loads all files in the /etc/logstash/conf.d directory, store no extra files there
* Make sure ElasticSearch service is running:
  ```
  sudo service elasticsearch restart
  ```
* Restart logstash service and monitor messages:
  ```
  sudo service logstash start && sudo tail -f -n 10 /var/log/logstash/logstash-plain.log &
  ```
* Check the data has been populated into elastic search:
  ```
  curl localhost:9200/cloud-init/_search?pretty=true
  ```
* Expected results is list of parsed log events
* Logstash records position for each file processed, to restart processing locate sincedb files and delete them:
```
sudo find / -name *.*sincedb*
```

# Log Processing Exercise #

* Log-in into your ElasticSearch sandbox
* Make sure elastic search is running:
  ```
  sudo service elasticsearch restart
  ```
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
* Restart logstash service and monitor messages:
  ```
  sudo service logstash start && sudo tail -f -n 100 /var/log/logstash/logstash-plain.log &
  ```
* Check the data has been populated into elastic search:
  ```
  curl localhost:9200/cloud-init/_search?pretty=true
  ```
* Expected results is a long list of parsed log events
* Logstash records position for each file processed, to restart processing locate sincedb files:
```
sudo find / -name *.*sincedb*
```
* And delete desired sincedb files to restart the ingest process

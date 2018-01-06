# Logs Processing - Output #

 * Last phase in the logstash pipeline specifies where the parsed logs should go
 * Configuration:
  ```
  output {
  elasticsearch {
    hosts => ["localhost:9200"]
    index => "cloud-init"
  }
}
  ```

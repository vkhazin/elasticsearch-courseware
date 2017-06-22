# Logs Processing - Grok Filter #

* ```grok``` filter plugin is to parse the unstructured log data into something query-able
* Log data:
  ```
  2017-06-21 22:18:25,276 - util.py[DEBUG]: Reading from /proc/uptime (quiet=False)
  ```
* <a href="https://github.com/elastic/logstash/blob/v1.4.0/patterns/grok-patterns" target="_blank">Predefined match patterns</a>
* Custom pattern added:
  ```
  For module: (?<= - )(.+)(?=\[)
  For loglevel (?<=\[)(.+)(?=\])
  ```
* Capture into a field:  ```%{TIMESTAMP_ISO8601:datetime}``` where ```datetime``` is a field name
* Full capture pattern:
  ```
  %{TIMESTAMP_ISO8601:datetime}%{SPACE}%{SPACE}-%{SPACE}%{MODULE:module}(\[)%{LOGLEVEL:loglevel}(\])(: )%{GREEDYDATA:message}
  ```
* Transformed data:   
  ```
  {
    "datetime": "2017-06-21 22:18:25,276",
    "module": "util.py",
    "loglevel": "DEBUG",
    "message": "2017-06-21 22:18:25,276 - util.py[DEBUG]: Reading from /proc/uptime (quiet=False)"
  }


  ```
* Configuration settings:
  ```
  filter {
    grok {
      match=> {
      "message"=>"%{TIMESTAMP_ISO8601:datetime}%{SPACE}%{SPACE}-%{SPACE}%{MODULE:module}(\[)%{LOGLEVEL:loglevel}(\])(: )%{GREEDYDATA:message}"
    }
  }
  ```
* Invaluable tools: <a href="http://grokconstructor.appspot.com/do/construction" target="_blank">grok constructor</a>, <a href="http://grokdebug.herokuapp.com/" target="_blank">grok debugger<a/>, and <a href="https://regex101.com/" target="_blank">regex tester</a>
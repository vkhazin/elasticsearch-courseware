# Logs Processing - Input #

* Typical pipeline is a bit more than hello-world example: one or more input, filter, and output plugins
* We will configure Logstash to pickup log files and to send data to Elasticsearch
* Log file: /var/log/cloud-init.log file, snippet of data:
  ```
  2017-06-21 22:18:25,270 - helpers.py[DEBUG]: config-keys-to-console already ran (freq=once-per-instance)
  2017-06-21 22:18:25,266 - helpers.py[DEBUG]: config-mcollective already ran (freq=once-per-instance)
  2017-06-21 22:18:25,276 - util.py[DEBUG]: Reading from /proc/uptime (quiet=False)
  2017-06-21 22:18:25,276 - util.py[DEBUG]: Read 10 bytes from /proc/uptime
  2017-06-21 22:18:25,276 - util.py[DEBUG]: cloud-init mode 'modules' took 0.102 seconds (0.10)
  2017-06-21 22:18:25,276 - handlers.py[DEBUG]: finish: modules-final: SUCCESS: running modules for final
  ```
* Input configuration:
  ```
  input {
    file {
      path => "/var/log/cloud-init.log"
      start_position => "beginning"
      type => "logs"
    }
  }
  ```

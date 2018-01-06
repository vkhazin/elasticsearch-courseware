# Setup #

* Logstash requires Java 8 Oracle or OpenJDK, Java 9 is not supported
* Linux distribution repository is available similary to other Elastic.co products
* A [Docker image](https://www.elastic.co/guide/en/logstash/current/docker.html) has been made available by Elastic.co, more about docker later...
* If installing manually - do not install into a directory path that contains colon (:) characters
* Pipeline configuration files define the default Logstash processing pipeline: ALL files in /etc/logstash/conf.d folder  
NOTE: Logstash 6.0 and higher has support for running multiple pipelines which defined in pipelines.yml file.
* Settings files specify options for Logstash startup and execution:
    * /etc/logstash/logstash.yml - configuration flags
    * /etc/logstash/jvm.options - contains JVM configuration flags
    * /etc/logstash/startup.options - used by system-install to create logstash service or services
* Basic pipeline with Logstash  

![Basic Pipeline](../../media/basic_logstash_pipeline.png)

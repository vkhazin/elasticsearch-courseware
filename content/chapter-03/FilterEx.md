# Filter Exercise #

* Login into your ElasticSearch sandbox
* Make sure elastic search is running:
```
sudo service elasticsearch restart
```
* Populate few sample data borrowed from <a href="https://catalog.data.gov/dataset" target="_blank">data.gov</a>:
```
curl https://elasticsearch-courseware.icssolutions.ca/examples/data-sets/collisions.txt -o collisions.txt
curl -XPOST 'localhost:9200/_bulk' --data-binary "@collisions.txt"
```
* Confirm there are some records to search on:
```
curl 'localhost:9200/sample-data/collisions/_search?pretty=true'
```
* How many documents did you find?
* Pick couple of options to search on: different leaf and compound clauses, different field types
* Rewrite your queries into filtered query
* You will be asked to present your findings to others


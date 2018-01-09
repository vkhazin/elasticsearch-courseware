# Watcher Exercise #

* Double-check Elasticsearch, Filebat and Kibana are running:
```
sudo systemctl start elasticsearch && sudo systemctl start filebeat && sudo systemctl start kibana
```
* Navigate to http://ip-address:5601/
* Login with `elastic` user credentials
* Navigate to Management -> Elasticsearch -> Watcher
* Select 'Create new watch' -> 'Advanced Watch' to create new Watch
* First is trigger, let's set interval to 30s
* Second is a query to execute, duplicate browser tab and use Dev Tools for composing query, e.g.:
```
{
  "size": 10,
  "query": {
    "bool": {
      "filter": {
        "query_string": {
          "query": "@timestamp:[now-1h TO now]"
        }
      }
    }
  }
}
```
* Execute the query to make sure it produces results
* Replace ```input.search.request.body``` portion of the watcher configuration with the query tested in the console
* Modify ```indices``` portion of the input to list: ```filebeat*```
* Review condition portion of the json configuration
* Type-in new watch id and name
* Simulate the new watch to review results
* And save the new watch
* Give it 30 secs to fire
* Now how do we make use of the results?
* First find what index stores the data
* Then define a new index pattern using the Management link on the left
* Use discover to explore the data
* Proceed to Visualization tab to present results
* Please share your findings and visualization selection with others
* Explore [other actions](https://www.elastic.co/guide/en/x-pack/current/actions.html) available in the watcher

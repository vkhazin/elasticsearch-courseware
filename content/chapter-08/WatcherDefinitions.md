# Watcher Definitions #

* Trigger - determines when the watch is checked
* Input - data to be loaded into the context, if not defined empty payload will be loaded into the context:
  * Simple - loads static payload
  * Search - loads elastic search results
  * Http - loads result of Http Request
  * Chain - uses series of inputs to load data
* Conditions - when a watch is triggered:
  * Always - actions are always executed
  * Never - actions are never executed
  * Compare - compare against values
  * Array Compare - compare an array of values
  * Script - use a script to evaluate condition
* Transform - process watch payload before passing it on to watch actions
* Actions - what happens when conditions are met
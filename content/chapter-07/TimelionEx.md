# Timelion Exercise #

* Access Kibana user interface with browser: http://domain-name:5601/
* Select Timelion on the left hand navigation bar
* Switch to full screen using the icon on the chart
* In the formula area type: ```.es(*)```
* Select time range of last 5 years
* Select play button to update the presentation to present a typical time-series chart
* Zoom-in to more active time period of the chart before next steps
* In the formula area extend the expression to ```.es(*).derivative()```
* Select '1h' for the time interval from drop-down list
* And select the play button again - variation for number of events on hourly basis will be presented
* Modify the formula: ```.es(*), .es(*,offset=-1h)``` to compare count of events to previous hour and select play button
* Add some custom color to the time series: ```.es(*), .es(*,offset=-1h).color(yellow)``` and select play button
* Convert line to bars: ```.es(*), .es(*,offset=-1h).bars().color(yellow)``` and select play button again
* Add secondary data source to correlate number of events in log files to population of Israel: ```.es(*).bars(), .wbi(country=ISR).divide(100000)```
* Adding another metric to the chart: ``` .es(), .es(metric=max:memory).divide(100)```
* You are getting the rough idea of a potential...
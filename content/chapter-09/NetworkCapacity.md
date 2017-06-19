# Network Capacity #

* I have had a great experience of taking non-prod environment down at shomi.com
* By running a lot of elastic search and index requests
* Some people still grimace when they see me
* It was not the bandwidth
* Number of sockets opened on the server, on the client, on the network appliance
* There was a bug in firmware that would crash network appliance under specific type of load
* There were subsequent tests where client reached tens of thousands of open tcp/ip sockets pending
* Server was alright, client running heavy batch job was not
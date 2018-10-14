# Notes

## Tips for Instructor

* Elastic releases new minor versions crazy fast, be prepared for things in a lab or two not working as expected
* Warn students about the potential setbacks ahead of time
* Use the setbacks as an opportunity to educate on how to recover using Elastic Search documentation and a Google search
* Do not rush to answer questions, steer to the guidance on what keywords you would have used to find the answer to get the students to self-sufficiency early
* Do not jump into resolving an issue with an installation, point to where to look for the problems: linux logs, _cat end-points, documentation
* The overall idea is not to demo instructor's knowledge, but to instill confidence that students will run into trouble and will find a way to recover on their own

## VM Setup

* Launch Ubuntu Server 16.04 LTS on Aws VM for each student
* Instance type I have been using: t2.medium as ElasticSearch by default requires 4GB of RAM
* Configure access to the instances with a key-pair and send students the [public](https://drive.google.com/file/d/0BzVXruaTwGflcFlQdGRpd2lGT0k/view?usp=sharing) and [private](https://drive.google.com/file/d/0BzVXruaTwGflN01PV25zS2pmSms/view?usp=sharing) keys
* Send student both keys ahead of time
* Students may have troubles accessing the VM's with their laptops using, as the last resort I have been using codeanywhere.com for the students to connect to the VM from a remote container
* For the students VM's I configure Elastic IP's and shut down the VM's for the night to reduce the charges

## Consideration for Revision

* X-Pack exercise add instructions for JMeter or see another note in this list
* Watcher restart FileBeat
* Extract X-Pack to its own chapter and add Watcher?
* Remove Vlad's aspect of the course?
* Do not add public key and repository to the list in for every product
* Capacity planning - turn into stress test and monitor exercise?
* Split Timelion into its own chapter?
* Add graph chapter
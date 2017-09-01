# nodeForPI
Setup environment for NodeJS development on Raspberry PI.

This shell script will set up a basic NodeJS development environment on Raspberry PI devices.

What this script will do:
* Create a folder for the NodeJS projects.
* Install NodeJS 4.0.0 (Currently this is the latest NodeJS version which had been builded for ARM processors.).
* Install Pure-FTPd server to modify the projects remotely.
* Create `ftpgroup` user group.
* Create `ftpuser` and add it to the previously created `ftpgroup` user group.
* Ask for a username and password for the Pure-FTPd.

Already tested on the following devices:
* Raspberry PI Model B
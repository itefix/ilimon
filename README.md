# ilimon
A simple and modular monitoring system.

![ilimon architecture](https://github.com/itefix/ilimon/blob/master/ilimon-generic.jpg)

** ROADMAP

*** Version 0.1 - Barebone showcase (July 2020)

Provider|Implementation
--------|--------------
Configuration store|XML file
Log store|Plain file
Trend store|File directory
Notification|E-mail
View|HTML read only
Queue|File
Worker|receive via ssh transport

*** Version 0.2 - SQL showcase

Provider|Implementation
--------|--------------
Configuration store|MySQL
Log store|MySQL
Trend store|MySQL
Notification|E-mail
View|HTML with action
Queue|MySQL
Worker|receive/send via ssh transport

> **Note:** The documentation  is being constructed. It can constains some errors or wrong sentences.


#transmissionbt-notifications

This is a small shell script that allows you send a notification when a download is done.

The notification can be:
* E-mail
* Push Notification 
* SMS

...and what you want.

###Installation
To install this simple application you only need put it the folder where you want, on your home folder .e.g, and change the transmission-daemon settings to configure the script that will be invoked when a download is done.

#####Properties:
> **Note:** The transmission-daemon setting is a json file and it's normally on transmition-daemon installation folder.

```json


"script-torrent-done-enabled": true,
"script-torrent-done-filename":"/home/user/transmissionbt-notifitations/notificationProvider.sh"

```
> **Note:** The property `script-torrent-done-enabled` allows transmission-daemon run your script. The property `script-torrent-done-filename` define the location of your script.


###Configuration
There is a file `conf/config.properties` that contains all configurations. The main goal is centralizing all configuration on a unique configuration file.

Currently, the file contains only one entry, the logger file path. This configuration must be used to persist another configuration that will be used by another notification sender.

###How it works?
Basically the transamission-daemon allows us to define a script that is executed after a download is done, given us some information such as: Torrent ID, Torrent Name, and other information. All that information is exported as environment variables, see all available [Variables][]. 

####Notification Provider
This is the start point of the application, it is executed by the transmission-daemon and after it do all needed work. So, the notification provider when is executed, it gets all sender scripts from folder `senders` and execute one by one at time.

###New Senders
You can create your custom sender. To do that, you only need create the shell script and put it on senders folder and it will be automatically executed by the notification provider.

###Useful/External Links
* [Transmission-rpc][]
* [Configuration Misc][]
* [Variables][]



[Transmission-rpc]: https://trac.transmissionbt.com/wiki/rpc
[Configuration Misc]: https://trac.transmissionbt.com/wiki/EditConfigFiles#Misc
[Variables]: https://trac.transmissionbt.com/wiki/Scripts

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/a8852347a93a51c87eb39ca0f1376761 "githalytics.com")](http://githalytics.com/rmrodrigues/transmissionbt-notifications)

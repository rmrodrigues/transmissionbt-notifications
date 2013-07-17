#transmissionbt-notifications

This is a small shell script that allows you send notification when a download finish. The notification can be an email, Push Notification and what you want.

###Installation
To intall this simple application you only need put the folder where you want, on your home folder .e.g, and change the transmission-daemon settings to configure the script that will be invoked when a download is done.

#####Properties:
> **Note:** This property allows transmission-daemon run your script.

set `script-torrent-done-enabled`: true

> **Note:** This property define the location of your script.

set `script-torrent-done-filename`: file_path


###Configuration
There is a file `conf/config.properties` that contains all configurations. The main goal is centralizing all configuraion on a unique configuration file.

Currently, the file contains only one entry, the logger file path. This configuration must be used to persiste another configuration that will be used by another notification sender.

###How it works?
Basically the transamission-daemon allows us to define a script that is executed after a download is done, given us some information such as: torrent ID, Torrent File Path, and other information. These information exported and we access it with environment variables, see all available [Variables][]. 


###New Senders

###Useful/External Links
[Transmission-rpc][]

[Configuration Misc][]



[Transmission-rpc]: https://trac.transmissionbt.com/wiki/rpc
[Configuration Misc]: https://trac.transmissionbt.com/wiki/EditConfigFiles#Misc
[Variables]: https://trac.transmissionbt.com/wiki/Scripts

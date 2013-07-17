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
Basically the transamission-daemon allows us to define a script that is executed after a download is done, given us some information such as: Torrent ID, Torrent Name, and other information. All that information is exported as environment variables, see all available [Variables][]. 

####Notification Provider
This is the start point of the application, it is executed by the transmission-daemon and after it do all needed work. So, the notification provadir when is executed, it get all sender scripts from folder `senders` and execute one by one at time.

###New Senders
You can create your custom sender. To do that, you only need create the shell script and put it on senders folder and it will be automatically executed by the notification provider.

###Useful/External Links
[Transmission-rpc][]

[Configuration Misc][]

[Variables][]



[Transmission-rpc]: https://trac.transmissionbt.com/wiki/rpc
[Configuration Misc]: https://trac.transmissionbt.com/wiki/EditConfigFiles#Misc
[Variables]: https://trac.transmissionbt.com/wiki/Scripts

#!/bin/bash

###################################################################
#                                                                 #
#                     RMRodrigues © 2013                          #
#                         12/07/2012                              #
#                                                                 #
###################################################################

#import the logger (To use the function log)
source utils/logger.sh
source conf/config.properties

echo 'Name: '$name

log 'Initializing provider.'

#Get all Senders from folder senders/
for file in senders/*
do
	log 'Executing Sender: '$file
  	sh $file
done

log 'All notifications were sent by each available provider.'
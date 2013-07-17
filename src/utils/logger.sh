#!/bin/bash

###################################################################
#                                                                 #
#                     RMRodrigues © 2013                          #
#                         12/07/2012                              #
#                                                                 #
###################################################################

#Logger file path + logger name
. conf/config.properties
LOGFILE=$logger_file_path

log(){
    message="$@"
    echo $message
    echo $message >>$LOGFILE
}
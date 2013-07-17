#!/bin/bash

###################################################################
#                                                                 #
#                     RMRodrigues © 2013                          #
#                         12/07/2012                              #
#                                                                 #
###################################################################

#import the logger (To use the function log)
source utils/logger.sh


log "Initializing SSMTP Sender processing."
TMP_FILE_NAME=/tmp/$RANDOM.txt
echo $TMP_FILE_NAME

log 'Creating a temp file: $TMP_FILE_NAME'
touch $TMP_FILE_NAME
echo 'To: to@yourmail.com' >> $TMP_FILE_NAME
echo 'From: from@yourmail.com' >> $TMP_FILE_NAME
echo 'Subject: TMI Notification' >> $TMP_FILE_NAME
echo >> $TMP_FILE_NAME
echo 'The torrent: '$TR_TORRENT_NAME' is done!!!' >> $TMP_FILE_NAME

cat $TMP_FILE_NAME

log 'Sending email notification using SSMTP service...'
ssmtp xyz@yourmail.com < $TMP_FILE_NAME
log 'Email sent.'

log 'Removing temporary file.'
rm $TMP_FILE_NAME

log 'Report:'
log $TR_TORRENT_DIR
log $TR_TORRENT_NAME
log 'Process complete.'
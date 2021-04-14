#! /bin/bash

time=`date +"%Y%m%d"`
grep "not allowed because not listed in AllowUsers" /var/log/secure |sort |awk -F'[ ]' '{print $1"-"$3":"$4,$7":"$8,"IPadd:"$10}' >> "/tmp/access_check_${time}.log"
if [ $? ]; then chown ****:**** "/tmp/access_check_${time}.log" ; fi

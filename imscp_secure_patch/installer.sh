#!/bin/sh
chmod 700 ~/imscp_patch/imscp_secure_patch/patch.sh
aptitude update && aptitude install htpasswd
### You may change the name "admin" to whatever you want ###
htpasswd -c /root/imscp_secure_patch/.htpasswd admin
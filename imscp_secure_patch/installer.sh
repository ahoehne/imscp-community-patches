#!/bin/sh
chmod 700 ~/imscp_patch/imscp_secure_patch/patch.sh
aptitude update && aptitude safe-upgrade
aptitude install -y htpasswd
### You may change the name "admin" to whatever you want ###
htpasswd -c /root/imscp_secure_patch/.htpasswd admin
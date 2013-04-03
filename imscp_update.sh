#!/bin/sh
cd /root/imscp_patch/
if [ ! -d /root/imscp_patch/.git ]; then
	git pull
	mkdir -p /usr/local/src/imscp
	if [ ! -d /usr/local/src/imscp/.git ]; then
		cd /usr/local/src/imscp
		git pull
		# Todo: Check ob installer ausgeführt wurde (Modulare Config)
		# Pre Patching
		cd /root/imscp_patch/
		/root/imscp_patch/pre_patch.sh
		# start imscp installer
		cd /usr/local/src/imscp/
		perl /usr/local/src/imscp/imscp-autoinstall 
		# Post Patching
		cd /root/imscp_patch/
		/root/imscp_patch/post_patch.sh
	else
		echo 'Please start first_config.sh first'
	fi
else
	echo 'Cannot find git informations for /root/imscp_patch/ , this script is not installed properly'
fi
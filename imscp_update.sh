#!/bin/sh
if [ ! -d /root/imscp_patch/.git ]; then
	cd /root/imscp_patch/
	echo "#### Get actual Community Patcher ####"
	git pull
	mkdir -p /usr/local/src/imscp
	if [ ! -d /usr/local/src/imscp/.git ]; then
		echo "#### CLONING i-MSCP git/master branch ####"
		cd /usr/local/src/imscp
		git pull
		# Todo: Check ob installer ausgeführt wurde (Modulare Config)
		echo "#### pre-patching i-mscp ####"
		cd /root/imscp_patch/
		/root/imscp_patch/pre_patch.sh
		echo "#### starting i-mscp installer ####"
		cd /usr/local/src/imscp/
		perl /usr/local/src/imscp/imscp-autoinstall 
		echo "#### post-patching i-mscp ####"
		cd /root/imscp_patch/
		/root/imscp_patch/post_patch.sh
	else
		echo 'Please start first_config.sh first'
	fi
else
	echo 'Cannot find git informations for /root/imscp_patch/ , this script is not installed properly'
fi
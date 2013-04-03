#!/bin/sh
# imscp_master repo base from: gOOvER

# Requirement: preinstalled community-patcher in /root/imscp_patch ; logged in as root #
cd /root/imscp_patch/
git pull
#==== Install/ Patching of Debian Packages ====
aptitude update && aptitude safe-upgrade
aptitude install -y git lsb-release
#==== Get actual State of git master ====
echo "#### KLONE i-MSCP git/master branch ####"
mkdir -p /usr/local/src/imscp
if [ ! -d /usr/local/src/imscp/.git ]; then
	git clone git://github.com/i-MSCP/imscp.git /usr/local/src/imscp
else
	cd /usr/local/src/imscp
	git pull
fi

# Todo: Modularer Aufbau für Community Patches



#perl /usr/local/src/imscp/imscp-autoinstall 
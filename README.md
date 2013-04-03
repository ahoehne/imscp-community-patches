imscp-community-patches
=======================

Community Patches for imscp

requirements:
- logged in as root
- debian system (ubuntu coming soon)

place this repo in /root/imscp_patch

Listing to install this script (this listing has to be run as root):

aptitude update && aptitude safe-upgrade && aptitude install -y git lsb-release 
mkdir -p /root/imscp_patch/
git clone https://github.com/ahoehne/imscp-community-patches /root/imscp_patch
chmod 700 /root/imscp_patch/first_config.sh
chmod 700 /root/imscp_patch/imscp_update.sh
/root/imscp_patch/first_config.sh

#!/bin/bash
mkdir /var/www/secure
cp ~/imscp_patch/imscp_secure_patch/.htpasswd /var/www/secure/
cp ~/imscp_patch/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/pma
cp ~/imscp_patch/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/webmail
cp ~/imscp_patch/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/filemanager
cp ~/imscp_patch/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/
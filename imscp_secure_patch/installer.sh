#!/bin/sh
chmod 700 ~/imscp_patch/imscp_secure_patch/patch.sh
aptitude update && aptitude safe-upgrade
aptitude install -y apache2-utils
echo "#!/bin/bash
if [ ! -d /var/www/secure ]; then
else
	mkdir /var/www/secure
fi
cp ~/imscp_secure_patch/.htpasswd /var/www/secure/
cp ~/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/pma
cp ~/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/webmail
cp ~/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/tools/filemanager
cp ~/imscp_secure_patch/.htaccess /var/www/imscp/gui/public/
" > /root/imscp_patch/imscp_secure_patch/pre_patch.sh
### You may change the name "admin" to whatever you want ###
if [ ! -d /var/www/secure ]; then
else
	htpasswd -c /root/imscp_secure_patch/.htpasswd admin
fi
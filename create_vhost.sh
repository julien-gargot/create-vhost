o#!/bin/bash

# Default configuration
vhostConfigurationDirectoryPath="/etc/httpd/conf/vhosts/"
errogLogDirectoryPath="/var/log/httpd/"
hostsPath="/etc/hosts"
websitesDirectoryPath="/path/to/sites/directory/$1/www/"
localDomainNamePrefix="dev"

# The script
echo "******************"
echo "* Creating vhost *"
echo "******************"

echo "Step 1/2: Creating a new vhost file conf in «$vhostConfigurationDirectoryPath..."

cat <<EOF >$vhostConfigurationDirectoryPath$1.conf
<VirtualHost *:80>
  DocumentRoot      $websitesDirectoryPath
  ServerName        $localDomainNamePrefix.$1
  ErrorLog          $errogLogDirectoryPath$1.error_log
</VirtualHost>
EOF

echo "Step 1, done."

echo "Step 2/2: Adding a new local redirection in «$hostsPath»..."

cat <<EOF >> $hostsPath
127.0.0.1    $localDomainNamePrefix.$1
EOF

echo "Step 2, done."

echo "Create a new vhost, done."

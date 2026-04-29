#!/bin/bash
set -euo pipefail

yum update -y
yum install -y httpd php php-mysqlnd mariadb105 unzip wget

systemctl enable httpd
systemctl start httpd

cd /var/www/html
rm -f index.html

wget https://wordpress.org/latest.zip
unzip latest.zip
cp -r wordpress/* .
rm -rf wordpress latest.zip

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html
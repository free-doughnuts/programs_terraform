#! /bin/bash

# install web-server
# get admin privileges
sudo su

# install httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello From Terraform $(hostname -f)" > /var/www/html/index.html
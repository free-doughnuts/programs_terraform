#! /bin/bash

# take admin priveleges
sudo su

# update machine repo 
yum update -y

# packages to be installed
yum install git -y

yum install httpd.x86_64 -y

# starting the web-server
systemctl start httpd.service
systemctl enable httpd.service

# git
git clone https://github.com/free-doughnuts/programs_terraform.git /home/ec2-user/tf/

# change file to be executable mode
chmod +x /home/ec2-user/tf/modules/ec2/install_package.sh

# execute the script
sh /home/ec2-user/tf/modules/ec2/install_package.sh

# web-server hello message or make web-server show your private ip
echo "<h1>Hello From Terraform</h1>" > /var/www/html/index.html
#echo "Hello From Terraform, Your Private $(hostname -f)" > /var/www/html/index.html

# append alias to bash
echo "alias ltr='ls -ltrh'"  >>  /home/ec2-user/.bashrc

# reload bashrc configs
source ~/.bashrc

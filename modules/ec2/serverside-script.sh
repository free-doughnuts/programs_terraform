#! /bin/bash

# take admin priveleges
sudo su

# update machine repo 
yum update -y
sleep 5s

# packages to be installed
yum install git -y
sleep 5s

yum install httpd.x86_64 -y
sleep 5s

# starting the web-server
systemctl start httpd.service
systemctl enable httpd.service
sleep 5s

# git
git clone https://github.com/free-doughnuts/programs_terraform.git /home/ec2-user/tf/
sleep 5s

# change file to be executable mode
chmod +x /home/ec2-user/tf/modules/ec2/install_package.sh
sleep 5s

# execute the script
sh /home/ec2-user/tf/modules/ec2/install_package.sh
sleep 10

# web-server hello message or make web-server show your private ip
echo "<h1>Hello From Terraform</h1>" > /var/www/html/index.html
#echo "Hello From Terraform, Your Private $(hostname -f)" > /var/www/html/index.html
sleep 5s

# append alias to bash
echo "alias ltr='ls -ltrh'"  >>  /home/ec2-user/.bashrc
sleep 5s

# reload bashrc configs
source ~/.bashrc

#! /bin/bash

# take admin privileges
sudo su

# update repo & install packages
yum update -y
sleep 10s

yum install git -y
sleep 10s

yum install httpd.x86_64 -y
sleep 10s

# starting the web-server
systemctl start httpd.service
systemctl enable httpd.service
sleep 10s

# git
git clone -b pre-main https://github.com/free-doughnuts/programs_terraform.git /home/ec2-user/tf/
sleep 10s

# change file mode
chmod +x /home/ec2-user/tf/modules/ec2/install_package.sh
sleep 5s

sh /home/ec2-user/tf/modules/ec2/install_package.sh
sleep 10

# make web-server show your private ip by html file
echo "<h1>Hello From Terraform</h1>" > /var/www/html/index.html
#echo "Hello From Terraform, Your Private $(hostname -f)" > /var/www/html/index.html
sleep 5s

# append to bash
echo "alias ltr='ls -ltrh'"  >>  /home/ec2-user/.bashrc

# reload bashrc configs
source ~/.bashrc

#! /bin/bash

# install web-server
# get admin privileges
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
git clone <your_github_repo.git>  </home/ec2-user/project_directory/>
sleep 10s

# change file mode
chmod +x </home/ec2-user/project_directory/yourbashscript.sh>
sleep 10s

# execute the bashscript.sh
sh yourbashscript.sh
sleep 10s

# make web-server show your private ip by html file when you browse the ec2 public ip
echo "Hello From Terraform, Your Private $(hostname -f)" > /var/www/html/index.html

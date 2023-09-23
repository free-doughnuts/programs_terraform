# ChangeLog (new status = added \ previous status = added)

*Q.how to read changelog file ?* 

*A.the correct reading order is from the bottom to top*
#

- **??/??/2023** 
	> checking code = **code works!**

	> adding "disable_api_termination" parameter to protect an accidentally terminating to service-ec2 properties 

	> adding "monitoring" parameter to enable enhanced-monitoring to service-ec2 properties

- **25/08/2023** 
	> checking code = **code works!**

	> adding ability to create more then 1 instance by "count" & "length" parameters to service-ec2 properties 

- **12/08/2023** 
	> checking code = **code works!**

	> adding "root_block_device" to service-ec2 properties

	> adding "ssh_key_name" to service-ec2 properties

- **29/07/2023** 
	> checking code in both services = **code works!**

	> adding backend to service-s3bucket in main.tf file

	> adding backend to service-ec2 in main.tf file 

	> changing the sub-folders name to "service-service_name"

	> changing the main folder name to "services-aws"

- **21/07/2023** 
	> checking ec2 service = **code works!**

	> on the 2nd bash-script: installing htop on server

	> adding bashrc "ls -ltrh" alias to "user_data" on ec2 service

	> adding "machine_id" to output.tf file on ec2 service after running "apply"

- **14/07/2023** 
	> checking ec2 service = **code works!**

	> user_data: install & run a web-server, install git & clone this project, execute 2nd bash script

	> adding "user_data" (serverside-script.sh) to ec2 service

	> adding "public" & "private" ips to output.tf file on ec2 service after running "apply"

	> adding "EIP" resource to ec2 service

- **07/07/2023** 
	> checking ec2 & s3-bucket services = **code works!**

	> adding "Encryption" resource to s3-bucket service

	> adding "Versioning" resource to s3-bucket service

	> adding "Security Groups ID" to ec2 service

- **03/07/2023** 
	> checking ec2 & s3-bucket services = **code works!**

	> adding second service code - s3-bucket


- **30/06/2023** 
	> adding first service code - ec2

	> repository has been created 

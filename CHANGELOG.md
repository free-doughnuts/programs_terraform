# ChangeLog (new status = removed + added \ previous status = added)

*Q.how to read changelog file ?* 

*A.the correct reading order is from the bottom to top*
#

- **29/07/2023** 
	> checking code in both services = **code works!**

	> adding backend to service-s3bucket in main.tf file

	> adding backend to service-ec2 in main.tf file 

	> changing the sub-folders name to "service-service_name"

	> changing the main folder name to "services-aws"

- **21/07/2023** 
	> checking ec2 module = **code works!**

	> on the 2nd bash-script: installing htop on server

	> adding bashrc "ls -ltrh" alias to "user_data" on ec2 module

	> adding "machine_id" to output.tf file on ec2 module after running "apply"

- **14/07/2023** 
	> checking ec2 module = **code works!**

	> user_data: install & run a web-server, install git & clone this project, execute 2nd bash script

	> adding "user_data" (bash-script) to ec2 module

	> adding "public" & "private" ips to output.tf file on ec2 module after running "apply"

	> adding "EIP" resource to ec2 module

- **07/07/2023** 
	> checking ec2 & s3-bucket modules = **code works!**

	> adding "Encryption" resource to s3-bucket module

	> adding "Versioning" resource to s3-bucket module

	> adding "Security Groups ID" to ec2 module

- **03/07/2023** 
	> checking ec2 & s3-bucket modules = **code works!**

	> adding second module code - s3-bucket


- **30/06/2023** 
	> adding first module code - ec2

	> repository has been created 

![program_terraform](https://img.shields.io/badge/WORKING%20MACHINES-Ubuntu%20&%20Manjaro-purple)
![program_terraform](https://img.shields.io/badge/PROGRAM_TERRAFORM%20VERSION-1.0.2-purple)
![program_terraform](https://img.shields.io/badge/CHANGELOG%20STATUS-Removed%20+%20Added-purple)
![program_terraform](https://img.shields.io/badge/PROVIDER%20-AWS-purple)


# About This Program
- the program sperated by services.
- each service has its own:
	> main.tf

	> variables.tf 

	> output.tf

	> punchvars.tfvars

> [!NOTE]   
> every massive change, my **programs_terraform** repo will get a new ver

> comment-out resources that you don't want to use

> branch "main" will update every Friday

> aws working machine = Amazon Linux 2023 AMI

## Code In-Progress
- [x] ec2
	- [ ] parsing to modules
- [x] s3-bucket
	- [ ] parsing to modules
- [ ] iam account

## How to use the code ?
1. git clone the program
2. cd to the desired service directory
3. add your own data to **punchvars.tfvars** file
4. run the following commands:
	
	> **first command:** `terraform init`
	
	> **second command:** `terraform apply -var-file="punchvars.tfvars"`

## Logs Information
- On each Terraform apply, terraform creating \ updating .tfstate file
- This help Terraform to know which resources are under its control and when to update or destroy them
- The recomendation is to store the .tfstate files in a place where it will not be lost or damaged
- This is the reason I added s3-bucket as a "backend" in main.tf file of each service
- This action make sure that .tfstate file will be automaticaly saved in s3-bucket and not in our local pc

## Conntecing to AWS
- I recommended to not add `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` to the TFs, this is a BIG NO NO !
- The recomendation is to use the Provider Vault to store your ACCESS & SECRET keys.

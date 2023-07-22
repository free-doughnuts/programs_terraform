![program_terraform](https://img.shields.io/badge/WORKING%20MACHINES-Ubuntu%20&%20Manjaro-purple)
![program_terraform](https://img.shields.io/badge/PROGRAM_TERRAFORM%20VERSION-1.0.1-purple)
![program_terraform](https://img.shields.io/badge/CHANGELOG%20STATUS-Added-purple)
![program_terraform](https://img.shields.io/badge/PROVIDER%20-AWS-purple)


# About
- the program sperated by modules.
- each module has its own:
	> main.tf

	> variables.tf 

	> punchvars.tfvars

- *NOTE-1: every massive change, my **programs_terraform** repo will get a new ver*
- *NOTE-2: comment-out resources that you don't want to use*
- *NOTE-3: branch "main" will update every Friday*
- *NOTE-4: aws working machine = Amazon Linux 2023 AMI*

## Code In-Progress
- [x] ec2
- [x] s3-bucket
- [ ] create an iam account

## How to use the code ?
1. git clone the program
2. cd to the desired module directory
3. add your own data to **punchvars.tfvars** file
4. run the following commands:
	
	> **first command:** `terraform init`
	
	> **second command:** `terraform apply -var-file="punchvars.tfvars"`

## Conntecing to AWS
- I recommended to not add `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` to the TFs, this is a BIG NO NO !
- The recomendation is to use the Provider Vault to store your ACCESS & SECRET keys.

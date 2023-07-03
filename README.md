# About
- the program sperated by modules.
- each module has its own:
	> main.tf

	> variables.tf 

	> punchvars.tfvars

- NOTE: the number that attached to "punchvars.tfvars" discribe the version

## Code In-Progress
- [x] ec2
- [x] s3-buckets

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

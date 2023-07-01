# About
- the program sperated by modules.
- each module has its own:
	> main.tf

	> variables.tf 

	> punchvars.tfvars

## Code In-Progress
- ec2

## Next Code
- s3-buckets

## How to use the code ?
1. git clone the program
2. cd to the desired module directory
3. add your own data to **punchvars.tfvars** file
4. run the commands `terraform init && terraform apply -var-file="punchvars.tfvars"`

## Conntecing to AWS
- I recommended to not add `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` to the TFs, this is a BIG NO NO !
- The recomendation is to use the Provider Vault to store your ACCESS & SECRET keys.
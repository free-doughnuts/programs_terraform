# About

this programs is sperated by modules.
- each module has its own:
> - main.tf
> - vriables.t 
> - punchvars.tfvars

## Code In-Progress
- ec2

## Next Code
- s3-buckets

## How to use the code ?
1. git clone the project
2. go into the desired module directory
3. run the command `terraform apply -var-file="punchvars.tfvars"`

## Conntecing to AWS
- I recomended to not add `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` to the TFs, this is a BIG NO NO !
- The recomendation is to use the Provider Vault to store your ACCESS & SECRET keys.
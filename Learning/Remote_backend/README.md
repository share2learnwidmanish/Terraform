Prerequisite: 
===============
AWS CLI configured, 
Terraform cloud account ,
Terraform version > 1.2.x

Steps:
=====
1. Create a AWS IAM role with its access and secret key. 
2. Configure the access key either in ~/.aws/credential 
OR
3. Using "aws configure" CLI utility
4. Run(init, plan, apply) "first_main.tf"  
5. You will have one EC2 intance created in AWS 

Migrating the local state file to Terraform cloud 
=================================================
1. Login to terraform cloud 
2. Create a new workspace 
3. Add following environment variables with respective values:
  AWS_ACCESS_KEY_ID=<respective value> 
  AWS_DEFAULT_REGION=<respective value>
  AWS_SECRET_ACCESS_KEY= <respective value>
4. Replace first_main.tf with final_main.tf 
5. Run terraform apply command
6. Terraform state file will be migrated to Terraform cloud.
7. Login to Terraform cloud and validate 

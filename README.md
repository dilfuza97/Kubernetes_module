# Terraform-aws-kubernetes

First inititlize terraform: 
``` 
terraform init 
```

you can modify add resource you wish, then create tfvars file for the variables. Then: 
```
terraform plan -var-file=TFVARFILE 
```
then apply your terraform: 
```
terraform apply -var-file=TFVARFILE 
```
your kubernetes env will be up and running :) 

more info :
https://github.com/scholzj/terraform-aws-kubernetes







run
'''''
export KUBECONFIG=/home/centos/kubeconfig

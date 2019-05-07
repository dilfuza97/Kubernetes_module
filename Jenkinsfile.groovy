node{
  stage("Pulling Repo"){
    git 'git@github.com:dilfuza97/Terraform-aws-K8_modules.git'
  }

  stage("Terraform"){
    sh "terraform init"
    sh "terraform apply -var-file=dev.tfvars --auto-approve"
  }
}

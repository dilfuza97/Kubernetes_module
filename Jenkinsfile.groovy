node{
  stage{
    git git@github.com:dilfuza97/Terraform-aws-K8_modules.git
  }

  stage{
    sh "terraform init"
    sh "terraform apply --auto-approve"
  }
}

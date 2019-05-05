node{
    properties([parameters([string(defaultValue: '', description: 'please input IP', name: "ENV", trim: false)])])
    git "https://github.com/dilfuza97/Terraform-aws-K8_modules.git"
    stage("Install Terraform"){
        sh "sudo yum install wget unzip zip -y"
        sh "wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip"
        sh "unzip terraform_0.11.13_linux_amd64.zip"
        sh "mv terraform /bin/"
    }
    stage("Terraform init"){
        sh "terraform init"
        sh "terraform plan"
        sh "terraform apply"
    }     
}      
        
                

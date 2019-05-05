node{
    properties([parameters([string(defaultValue: '', description: 'please input IP', name: "ENV", trim: false)])])
    git "https://github.com/dilfuza97/Terraform-aws-K8_modules.git"
    // stage("Install Terraform"){
    //     sh "yum install wget unzip zip -y"
    //     sh "wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip"
    //     sh "unzip terraform_0.11.13_linux_amd64.zip"
    //     sh "mv terraform /bin/"
    }
    stage("Copy tf files"){
        sh "scp -r * ec2-user@${ENV}:/tmp/"
    }    
    stage("Terraform init"){
        sh "ssh ec2-user@${ENV} cd /tmp/ && terraform init"
        sh "ssh ec2-user@${ENV} cd /tmp/ && terraform plan"
        sh "ssh ec2-user@${ENV} cd /tmp/ && terraform apply"
    } 
    
      
        
                

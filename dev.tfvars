aws_region = "eu-west-1"

cluster_name = "aws-kubernetes"

master_instance_type = "t2.medium"

worker_instance_type = "t2.medium"

ssh_public_key = "~/.ssh/id_rsa.pub"

ssh_access_cidr = ["0.0.0.0/0"]

api_access_cidr = ["0.0.0.0/0"]

min_worker_count = 2

max_worker_count = 5

hosted_zone = "dilfuza.net"

hosted_zone_private = false

master_subnet_id = "subnet-55bfdf33"

worker_subnet_ids1 = "subnet-55bfdf33"

worker_subnet_ids2 = "subnet-e9c36eb3"

backend_name = "s3"

#clbucket_name = "dev.dilfuza.com"


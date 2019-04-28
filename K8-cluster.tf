module "kubernetes" {
  source = "scholzj/kubernetes/aws"

  aws_region           = "${var.aws_region}"
  cluster_name         = "${var.cluster_name}"
  master_instance_type = "${var.master_instance_type}"
  worker_instance_type = "${var.worker_instance_type}"
  ssh_public_key       = "~/.ssh/id_rsa.pub"
  ssh_access_cidr      = ["0.0.0.0/0"]
  api_access_cidr      = ["0.0.0.0/0"]
  min_worker_count     = "${var.min_worker_count}"
  max_worker_count     = "${var.max_worker_count}"
  hosted_zone          = "${var.hosted_zone}"
  hosted_zone_private  = "${var.hosted_zone_private}"

  master_subnet_id = "${var.master_subnet_id}"

  worker_subnet_ids = [
    "${var.worker_subnet_ids1}",
    "${var.worker_subnet_ids2}",
  ]

  # Tags
  tags = {
    Application = "AWS-Kubernetes"
  }

  # Tags in a different format for Auto Scaling Group
  tags2 = [
    {
      key                 = "Application"
      value               = "AWS-Kubernetes"
      propagate_at_launch = true
    },
  ]

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/external-dns.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-kubernetes/master/addons/autoscaler.yaml",
  ]
}

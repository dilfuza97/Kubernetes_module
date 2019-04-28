terraform {
  backend "s3" {
    bucket = "terraform-state-december-dilfuza2"
    key    = "infra.state"
    region = "eu-west-1"
  }
}

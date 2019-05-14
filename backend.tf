terraform {
  backend "s3" {
    bucket = "dilfuza-terraform"
    key    = "infra.state"
    region = "eu-west-1"
  }
}

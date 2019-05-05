terraform {
  backend "s3" {
    bucket = "terrafor-january-dilfuza2"
    key    = "infra.state"
    region = "eu-west-1"
  }
}

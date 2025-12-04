terraform {
  backend "s3" {
    bucket       = "clc14-mari-terraform"
    key          = "network/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
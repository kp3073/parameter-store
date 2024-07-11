terraform {
  backend "s3" {
    bucket = "terraform-d75"
    key    = "parameter/terrraform.tfstate"
    region = "us-east-1"
  }
}
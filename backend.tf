terraform {
  backend "s3" {
    bucket         = "backend-s3-demo-siba" # change this
    key            = "siba/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

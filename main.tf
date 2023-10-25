provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" # change this
  subnet_id = "subnet-0a731633e15e51e11" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "backend-s3-demo-siba" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

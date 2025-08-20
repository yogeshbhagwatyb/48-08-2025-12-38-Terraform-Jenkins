terraform {
  backend "s3" {
    bucket         = "acme-tfstate-prod-123456789012" # same backend bucket
    key            = "env/stage/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "acme-terraform-locks"
    encrypt        = true
  }
}

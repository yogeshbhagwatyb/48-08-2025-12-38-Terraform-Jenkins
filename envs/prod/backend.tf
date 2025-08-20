terraform {
  backend "s3" {
    bucket         = "acme-tfstate-prod-123456789012"
    key            = "env/prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "acme-terraform-locks"
    encrypt        = true
  }
}

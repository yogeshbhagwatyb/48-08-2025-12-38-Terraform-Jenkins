provider "aws" {
  region = var.region

  assume_role {
    role_arn     = "arn:aws:iam::108782070605:role/Jenkins-role"
    session_name = "jenkins-terraform"
  }

  default_tags {
    tags = {
      Project     = "acme"
      Environment = "prod"
      Owner       = "platform-team"
    }
  }
}

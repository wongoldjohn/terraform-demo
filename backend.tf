terraform {
  backend "s3" {
    bucket         = "tf-state-wongoldjohn"    #  S3 bucket name
    key            = "terraform-demo/prod/terraform.tfstate"  # 
    region         = "us-east-2"
    dynamodb_table = "tf-state-lock"           # DynamoDB table
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

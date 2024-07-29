#----------------------------------------
# Home Assignment Moveo
# 1. VPC with public and private subnets.
# 2. EC2 Instance in the private subnet with dockerized NGINX. 
# 3. Dynamic Security Groups for maintainability.
# 4. ALB for public subnets for load balancing EC2 instances. 
# 5. NAT Gateway to ensure security and internet access for private subnets without giving them public ip.
# 
# Daniel Tsoref --- 29.07.2024
#----------------------------------------



terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

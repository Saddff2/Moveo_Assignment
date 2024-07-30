## NGINX Instance Deployment using Terraform

### Overview

This setup demonstrates the deployment of a Dockerized NGINX instance using Terraform and AWS resources. 
The goal is to set up an NGINX server that is publicly accessible and displays the text “yo this is nginx” when accessed. 
The deployment uses a combination of AWS infrastructure, Docker, and Terraform to achieve this.

### AWS Infrastructure Setup

* **Virtual Private Cloud (VPC)**: Contains public and private subnets.
* **EC2 Instance**: Deployed in the private subnet with dockerized NGINX.
* **Security Groups**: To ensure secure communication.
* **Internet Gateway**: Grants public subnets access to the internet.
* **NAT Gateway**: Allows private subnet to reach the internet without directly exposing it.
* **Application Load Balances (ALB)**: Balances incoming traffic to the EC2 instance. 

## NGINX Instance Deployment using Terraform

## Overview

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


### Infrastructure Diagram

![diagram-export-30-07-2024-16_24_28](https://github.com/user-attachments/assets/4df06d1b-19e6-4d1d-b634-4a7057cc5318)


## Prerequisites 

* Install Terraform
* Install and configure AWS CLI
* AWS Account with sufficient permissions

## Deployment Steps

1. Clone the repository.
```
git clone https://github.com/Saddff2/Moveo_Assignment.git
git cd Moveo_Assignment
```

2. Deploy Infrastructure

```
terraform init
terraform apply
```
3. Verify Deployment
Once the deployment is complete, access the public DNS of the Application Load Balancer (ALB) in your web browser. You should see the text “yo this is nginx” displayed.

4. Clean Up
```
terraform destroy
```

## Final Results 

1. A deployed instance of the application accessible from the public.
<img width="767" alt="Screenshot" src="https://github.com/user-attachments/assets/f6e81cc3-8260-4692-8db7-19e3b94e8970">


2. Dockerized Nginx that can run locally.
<img width="773" alt="Screenshot" src="https://github.com/user-attachments/assets/5089edd7-b4a9-45c3-ab62-f7d5305c7997">



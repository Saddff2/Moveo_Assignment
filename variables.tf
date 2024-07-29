variable "region" {
  description = "Default region"
  default     = "il-central-1"
}

variable "elb_ingress_ports" {
  description = "Allowed ingress ports for elb"
  default     = [80]
}

variable "nginx_ingress_ports" {
  description = "Allowed ingress ports for nginx"
  default     = [80]
}

variable "vpc_cidr_block" {
  description = "CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR Blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR Blocks for private subnets"
  default     = ["10.0.3.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["il-central-1a", "il-central-1b", "il-central-1c"]
}

variable "ingress_ports" {
  description = "List of ports to allow in the security group"
  type        = list(number)
  default     = [80]
}

variable "ami_id" {
  description = "Ubuntu FREE TIER AMI ID"
  type        = string
  default     = "ami-0de6215d9c2342df5"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "region" {
  description = "Default region"
  default     = "il-central-1"
}

variable "elb_ingress_ports" {
  description = "Allowed ingress ports for elb"
  type        = list(number)
  default     = [80]
}

variable "nginx_ingress_ports" {
  description = "Allowed ingress ports for nginx"
  type        = list(number)
  default     = [80]
}

variable "ami_id" {
  description = "Ubuntu Free Tier AMI ID"
  type        = string
  default     = "ami-0de6215d9c2342df5"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

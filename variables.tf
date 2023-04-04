variable "vpc_id" {
  type        = string
  description = "var for VPC ID"
  default     = "vpc-061d0ed89bba832ab"
}

variable "cidr_open" {
  type        = string
  description = "CIDR block to allow traffic from anywhere"
  default     = "0.0.0.0/0"
}

variable "cidr_my" {
  type        = string
  description = "CIDR block to allow traffic from local machine"
  default     = "119.160.97.137/32"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket"
  default     = "rashidjenkins"
}

variable "instance_type" {
  type        = string
  description = "var for instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  type        = string
  description = "var for AMI ID"
  default     = "ami-0a695f0d95cefc163"
}
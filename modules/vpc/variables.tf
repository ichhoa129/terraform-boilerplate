variable "project" {
  description = "Name of the project"
  type        = string
  default = "my-project"
}

variable "environment" {
  description = "Name of the environment"
  type        = string
  default = "dev"
}

variable "region" {
  description = "Region to deploy the resources"
  type        = string
  default = "us-central1" 
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.1.10.0/24" 
}
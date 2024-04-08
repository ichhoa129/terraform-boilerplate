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

variable "backend_bucket_name" {
  description = "Name of the S3 bucket to store the terraform state file"
  type        = string
  default     = "my-terraform-state-bucket"
}
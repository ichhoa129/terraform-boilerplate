module "vpc" {
  source = "./modules/vpc"

  project = var.project
  environment = var.environment
  region = var.region
  cidr_block = var.cidr_block
}

module "security_group" {
  source = "./modules/security-group"

  depends_on = [ 
    module.vpc 
  ]

  project = var.project
  environment = var.environment
  region = var.region
  cidr_block = var.cidr_block
  vpc_id = module.vpc.vpc_id
}
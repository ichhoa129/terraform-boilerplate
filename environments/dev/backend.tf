module "backend_bucket" {
  source = "./modules/backend"

  backend_bucket_name = var.backend_bucket_name
  region = var.region
}

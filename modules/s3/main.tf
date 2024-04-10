resource "aws_s3_bucket" "backend_bucket" {
    bucket = format("%s-%s-%s", var.project, var.environment, var.backend_bucket_name)
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
    tags = {
        Project = var.project
        Environment = var.environment
    }
}
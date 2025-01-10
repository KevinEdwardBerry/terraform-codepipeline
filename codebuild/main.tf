provider "aws" {
  region = var.aws_region
}

module "codebuild_module" {
  source = "../modules/code-build"

  codebuild_name           = var.codebuild_name
  codebuild_s3_bucket      = var.codebuild_s3_bucket
  codebuild_s3_name        = var.codebuild_s3_name
  codebuild_s3_path        = var.codebuild_s3_path
  codebuild_service_role   = var.codebuild_service_role
  codebuild_encryption_key = var.codebuild_encryption_key
  source_location          = var.source_location
}

resource "aws_codebuild_project" "codebuild" {
  name           = var.codebuild_name
  service_role   = var.codebuild_service_role
  encryption_key = var.codebuild_encryption_key

  source {
    type            = "GITHUB"
    location        = var.source_location
    git_clone_depth = 1
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/amazonlinux-x86_64-standard:5.0"
    type         = "LINUX_CONTAINER"

    image_pull_credentials_type = "CODEBUILD"
  }

  artifacts {
    type      = "S3"
    location  = var.codebuild_s3_bucket
    name      = var.codebuild_s3_name
    path      = var.codebuild_s3_path
    packaging = "ZIP"
  }
}

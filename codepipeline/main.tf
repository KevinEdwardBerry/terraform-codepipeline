provider "aws" {
  region = var.aws_region
}

module "codepipeline_module" {
  source = "../modules/code-pipeline"

  codepipeline_name      = var.codepipeline_name
  codepipeline_role_arn  = var.codepipeline_role_arn
  codepipeline_s3_bucket = var.codepipeline_s3_bucket

  source_connection_arn = var.source_connection_arn
  source_repository     = var.source_repository
  source_branch_name    = var.source_branch_name
  source_detect_changes = var.source_detect_changes

  codebuild_name        = var.codebuild_name
  codedeploy_app_name   = var.codedeploy_app_name
  codedeploy_group_name = var.codedeploy_group_name
}

variable "aws_region" { }

variable "codepipeline_name"      { }
variable "codepipeline_role_arn"  { }
variable "codepipeline_s3_bucket" { }

variable "source_connection_arn" { }
variable "source_repository"     { }
variable "source_branch_name"    { }
variable "source_detect_changes" { }

variable "codebuild_name"        { }
variable "codedeploy_app_name"   { }
variable "codedeploy_group_name" { }

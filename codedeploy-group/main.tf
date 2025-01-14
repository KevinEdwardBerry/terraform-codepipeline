provider "aws" {
  region = var.aws_region
}

module "codedeploy_group_module" {
  source = "../modules/code-deploy-group"

  codedeploy_app_name         = var.codedeploy_app_name
  codedeploy_group_name       = var.codedeploy_group_name
  codedeploy_service_role_arn = var.codedeploy_service_role_arn
  
  ec2_tag_key   = var.ec2_tag_key
  ec2_tag_value = var.ec2_tag_value
}

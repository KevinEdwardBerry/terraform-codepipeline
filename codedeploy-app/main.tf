provider "aws" {
  region = var.aws_region
}

module "codedeploy_app_module" {
  source = "../modules/code-deploy-app"

  codedeploy_app_name = var.codedeploy_app_name
}

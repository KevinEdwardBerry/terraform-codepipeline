resource "aws_codedeploy_deployment_group" "codedeploy_group" {
  app_name              = var.codedeploy_app_name
  deployment_group_name = var.codedeploy_group_name
  service_role_arn      = var.codedeploy_service_role_arn

  ec2_tag_set {
    ec2_tag_filter {
      key   = var.ec2_tag_key
      type  = "KEY_AND_VALUE"
      value = var.ec2_tag_value
    }
  }
}

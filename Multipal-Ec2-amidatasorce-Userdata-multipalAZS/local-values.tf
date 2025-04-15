locals {
  owners = var.business
  environment = var.environment
  name = "${var.business} - ${var.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment

  }

}
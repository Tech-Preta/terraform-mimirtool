provider "mimirtool" {
  alias     = "preprod"
  address   = var.environments["preprod"].address
  tenant_id = var.environments["preprod"].tenant_id
}

provider "mimirtool" {
  alias     = "prod"
  address   = var.environments["prod"].address
  tenant_id = var.environments["prod"].tenant_id
}

module "mimirtool_preprod" {
  source = "./modules/mimirtool"
  providers = {
    mimirtool = mimirtool.preprod
  }
  environments             = var.environments
  alertmanager_config      = var.environments["preprod"].alertmanager_config
  alertmanager_rules_files = var.environments["preprod"].alertmanager_rules_files
}

module "mimirtool_prod" {
  source = "./modules/mimirtool"
  providers = {
    mimirtool = mimirtool.prod
  }
  environments             = var.environments
  alertmanager_config      = var.environments["prod"].alertmanager_config
  alertmanager_rules_files = var.environments["prod"].alertmanager_rules_files
}

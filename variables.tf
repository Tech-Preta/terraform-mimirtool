variable "environments" {
  description = "Configurações para diferentes ambientes"
  type = map(object({
    address                  = string
    tenant_id                = string
    alertmanager_rules_files = list(string)
    alertmanager_config      = list(string)
  }))
  default = {
    preprod = {
      address                  = "https://mimir-tools.preprod.nataliagranato.xyz"
      tenant_id                = "anonymous"
      alertmanager_rules_files = ["environments/preprod/config/alertmanager_rules.yaml"]
      alertmanager_config      = ["environments/preprod/config/alertmanager_config.yaml"]
    }
    prod = {
      address                  = "https://mimir-tools.prod.nataliagranato.xyz"
      tenant_id                = "anonymous"
      alertmanager_rules_files = ["environments/prod/config/alertmanager_rules.yaml"]
      alertmanager_config      = ["environments/prod/config/alertmanager_config.yaml"]
    }
  }
}

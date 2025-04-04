variable "alertmanager_config" {
  description = "Caminho para o arquivo de configuração do Alertmanager"
  type        = list(string)
}

variable "alertmanager_rules_files" {
  description = "Lista de arquivos de regras do Alertmanager"
  type        = list(string)
}

variable "environments" {
  description = "Configurações para diferentes ambientes"
  type = map(object({
    address   = string
    tenant_id = string
  }))
}

resource "local_file" "alertmanager_config" {
  content  = "conteúdo do arquivo"
  filename = "environments/preprod/config/alertmanager_config.yaml"
}

resource "mimirtool_alertmanager" "this" {
  provider    = mimirtool
  config_yaml = local_file.alertmanager_config.filename
}

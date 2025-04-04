resource "mimirtool_alertmanager" "this" {
  provider    = mimirtool
  config_yaml = file(var.alertmanager_config[0])
}

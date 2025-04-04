# # Módulo para configuração do Alertmanager do Mimirtool

Este módulo é responsável por configurar o Alertmanager do Mimirtool em diferentes ambientes (preprod e prod). Ele utiliza o provider `mimirtool` para gerenciar as configurações do Alertmanager

### Estrutura do Módulo

O módulo é dividido em duas partes principais, cada uma correspondendo a um ambiente (preprod e prod). Cada parte contém as seguintes configurações

- `address`: O endereço do Alertmanager para o ambiente específico

- `tenant_id`: O ID do tenant associado ao ambiente

- `alertmanager_rules_files`: Uma lista de arquivos de regras do Alertmanager

- `alertmanager_config`: Uma lista de arquivos de configuração do Alertmanager

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_mimirtool"></a> [mimirtool](#requirement\_mimirtool) | 1.0.5 |
| <a name="requirement_rgw"></a> [rgw](#requirement\_rgw) | ~> 1.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mimirtool.preprod"></a> [mimirtool.preprod](#provider\_mimirtool.preprod) | 1.0.5 |
| <a name="provider_mimirtool.prod"></a> [mimirtool.prod](#provider\_mimirtool.prod) | 1.0.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mimirtool_alertmanager.preprod](https://registry.terraform.io/providers/nijave/mimirtool/1.0.5/docs/resources/alertmanager) | resource |
| [mimirtool_alertmanager.prod](https://registry.terraform.io/providers/nijave/mimirtool/1.0.5/docs/resources/alertmanager) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Ambiente para o qual o módulo será configurado (ex: preprod, prod) | `string` | n/a | yes |
| <a name="input_environments"></a> [environments](#input\_environments) | Configurações para diferentes ambientes | <pre>map(object({<br>    address                  = string<br>    tenant_id                = string<br>    alertmanager_rules_files = list(string)<br>    alertmanager_config      = list(string)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.

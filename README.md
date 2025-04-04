# Criando regras de alertas e configurações para o Alertmanager do Mimir

# Estrutura de diretórios

```plaintext

terraform-mimirtool/
├── modules/
│   └── mimirtool/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── preprod/
│   │   ├── terraform.tfvars
│   │   └── backend.hcl
│   └── prod/
│       ├── terraform.tfvars
│       └── backend.hcl
├── scripts/
│   └── generate.sh
├── main.tf
├── variables.tf
└── README.md

```

```

```

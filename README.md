# Terraform Mimirtool

Este projeto utiliza o Terraform para gerenciar configurações e regras de alertas para o Alertmanager do Mimir. Ele foi projetado para ser genérico e reutilizável, permitindo a configuração de múltiplos ambientes, como `preprod` e `prod`.

## Estrutura do Projeto

A estrutura do projeto está organizada da seguinte forma:

```
terraform-mimirtool/
├── main.tf                # Arquivo principal para configuração dos módulos e providers
├── variables.tf           # Variáveis globais para configuração dos ambientes
├── versions.tf            # Declaração dos providers e suas versões
├── modules/
│   └── mimirtool/         # Módulo genérico para configuração do Alertmanager
│       ├── main.tf        # Configuração do recurso mimirtool_alertmanager
│       ├── variables.tf   # Variáveis específicas do módulo
│       └── versions.tf    # Declaração dos providers no módulo
├── environments/          # Diretório contendo arquivos de configuração específicos de cada ambiente
│   ├── preprod/
│   │   └── config/
│   │       ├── alertmanager_rules.yaml
│   │       └── alertmanager_config.yaml
│   └── prod/
│       └── config/
│           ├── alertmanager_rules.yaml
│           └── alertmanager_config.yaml
└── README.md              # Documentação do projeto
```

## Funcionalidades

- Configuração de múltiplos ambientes (`preprod` e `prod`) para o Alertmanager do Mimir.
- Gerenciamento de regras de alertas e configurações do Alertmanager.
- Modularização para facilitar a reutilização e manutenção.

## Objetivos

- Automatizar a configuração do Alertmanager do Mimir usando Terraform.
- Tornar o projeto genérico e reutilizável para diferentes ambientes.
- Facilitar a manutenção e a escalabilidade das configurações.

## Pré-requisitos

- Terraform instalado na máquina.
- Arquivos de configuração YAML para o Alertmanager disponíveis nos diretórios `environments/preprod/config` e `environments/prod/config`.

## Como usar

1. **Clone o repositório**:
   ```bash
   git clone [<URL_DO_REPOSITORIO>](https://github.com/Tech-Preta/terraform-mimirtool.git)
   cd terraform-mimirtool
   ```

2. **Configure os arquivos YAML**:
   Certifique-se de que os arquivos `alertmanager_rules.yaml` e `alertmanager_config.yaml` estão presentes nos diretórios `environments/preprod/config` e `environments/prod/config`.

3. **Inicialize o Terraform**:
   ```bash
   terraform init
   ```

4. **Valide a configuração**:
   ```bash
   terraform validate
   ```

5. **Planeje a aplicação**:
   ```bash
   terraform plan
   ```

6. **Aplique a configuração**:
   ```bash
   terraform apply
   ```

## Testes

Este projeto utiliza o Terratest para validar as configurações do Terraform.

### Para executar os testes:

1. **Inicialize um módulo Go no diretório do projeto**:
   No terminal, navegue até o diretório do projeto e execute:

   ```bash
   go mod tidy
   ```

2. **Adicione o pacote necessário**:
   Após inicializar o módulo, execute o comando para adicionar o pacote:

   ```bash
   go get github.com/gruntwork-io/terratest/modules/terraform
   ```

3. **Execute os testes**:
   Agora, execute os testes para verificar se o projeto está funcionando corretamente:

   ```bash
   go test -v
   ```

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Consulte o arquivo `LICENSE` para mais informações.
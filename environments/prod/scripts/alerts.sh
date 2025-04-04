#!/bin/bash

# Gera a lista de arquivos YAML no diretório rules
files=$(find ~/environments/prod/rules -type f -name "*.yaml" -o -name "*.yml" | sed 's/^/    "/; s/$/",/')

# Atualiza o arquivo terraform.tfvars
cat <<EOL > terraform.tfvars
alertmanager_rules_files = [
$files
]
EOL
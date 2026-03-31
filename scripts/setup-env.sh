#!/bin/bash
# Script de configuração inicial para o ambiente Apache Jena Fuseki

# Carregar variáveis do .env de forma segura
if [ -f .env ]; then
    export $(grep -v '^#' .env | grep -v '^[[:space:]]*$' | xargs)
fi

echo "--- Iniciando configuração do ambiente ---"

# 1. Criar estrutura de diretórios no host
echo "[1/3] Criando diretórios para volumes e configurando Shiro..."
# Fuseki
mkdir -p fuseki-data/databases
mkdir -p fuseki-data/configuration
mkdir -p fuseki-data/logs
mkdir -p fuseki-data/backups

# Gerar shiro.ini dinâmico
cat <<EOF > fuseki-data/shiro.ini
[main]
# Use basic authentication
plainMatcher=org.apache.shiro.authc.credential.SimpleCredentialsMatcher
iniRealm.credentialsMatcher = \$plainMatcher

[users]
# Admin (total) e Usuário personalizado
${FUSEKI_ADMIN_USER:-admin} = ${FUSEKI_ADMIN_PASS:-admin}, administrator
${FUSEKI_USER:-user} = ${FUSEKI_PASS:-password}, reader

[roles]
administrator = *
reader = *

[urls]
## Controles públicos
/$/status = anon
/$/ping   = anon

## Restringe funções de admin
/\$/** = authcBasic, user[${FUSEKI_ADMIN_USER:-admin}]

## Restringe datasets
/** = authcBasic
EOF

# WebProtégé & Mongo
mkdir -p webprotege-data
mkdir -p mongo-data

# Garantir permissões básicas
chmod -R 777 fuseki-data/ webprotege-data/ mongo-data/

# 2. Verificar se o comando docker-compose está disponível
if ! command -v docker-compose &> /dev/null
then
    echo "AVISO: docker-compose não encontrado."
else
    echo "[2/3] Docker-compose detectado."
fi

# 3. Informações finais
echo "[3/3] Configuração concluída."

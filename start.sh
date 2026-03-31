#!/bin/bash
# Script de inicialização automática

# Carregar variáveis do .env de forma segura
if [ -f .env ]; then
    # Remove comentários, linhas vazias e exporta cada linha
    export $(grep -v '^#' .env | grep -v '^[[:space:]]*$' | xargs)
fi

echo "--- Iniciando Ambiente Semântico ---"

# 1. Configurar diretórios
if [ -f "scripts/setup-env.sh" ]; then
    bash scripts/setup-env.sh
else
    echo "ERRO: scripts/setup-env.sh não encontrado."
    exit 1
fi

# 2. Subir containers
echo "Subindo containers com Docker Compose..."
docker-compose up -d

# 3. Automação da conta Admin do WebProtégé
# Aguarda o container estar pronto
echo "Aguardando inicialização do WebProtégé para criar conta admin..."
sleep 30

# Verifica se o admin já existe (tentando criar e ignorando se falhar por já existir)
echo -e "${WEBPROTEGE_ADMIN_USER}\n${WEBPROTEGE_ADMIN_EMAIL}\n${WEBPROTEGE_ADMIN_PASS}\n${WEBPROTEGE_ADMIN_PASS}" | \
docker exec -i webprotege java -jar /webprotege-cli.jar create-admin-account > /dev/null 2>&1

echo "Configuração do Administrador WebProtégé processada."
echo ""
echo "Ambiente pronto! Abra 'instrucoes.html' no seu navegador."

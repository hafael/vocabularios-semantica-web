#!/bin/bash
# Script para resetar o ambiente (APAGA TODOS OS DADOS)

echo "--- ATENÇÃO: Resetando Ambiente Semântico ---"
echo "Isso apagará permanentemente todos os seus bancos de dados e ontologias."
read -p "Tem certeza que deseja continuar? (s/N): " confirm

if [[ $confirm == [sS] ]]; then
    echo "Parando containers..."
    docker-compose down -v

    echo "Removendo pastas de dados..."
    rm -rf fuseki-data webprotege-data mongo-data

    echo ""
    echo "Ambiente resetado com sucesso!"
    echo "Você pode iniciar novamente usando o script ./start.sh"
else
    echo "Operação cancelada."
fi

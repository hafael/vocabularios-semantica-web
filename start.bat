@echo off
setlocal enabledelayedexpansion
echo --- Iniciando Ambiente Semantico (Windows) ---

REM Carregar variáveis do .env manualmente (Windows não exporta nativo)
for /f "tokens=*" %%a in ('type .env ^| findstr /v "^#"') do (
    set "%%a"
)

REM 1. Preparar diretórios
echo [1/3] Preparando diretorios de persistencia...
if not exist "fuseki-data\databases" mkdir "fuseki-data\databases"
if not exist "fuseki-data\configuration" mkdir "fuseki-data\configuration"
if not exist "fuseki-data\logs" mkdir "fuseki-data\logs"
if not exist "fuseki-data\backups" mkdir "fuseki-data\backups"
if not exist "webprotege-data" mkdir "webprotege-data"
if not exist "mongo-data" mkdir "mongo-data"

REM 2. Sobe os containers
echo [2/3] Subindo containers com Docker Compose...
docker-compose up -d

REM 3. Automação da conta Admin do WebProtégé
echo [3/3] Aguardando inicializacao do WebProtege para criar conta admin...
timeout /t 15 /nobreak > nul

REM Criar conta injetando entradas via echo
(
  echo !WEBPROTEGE_ADMIN_USER!
  echo !WEBPROTEGE_ADMIN_EMAIL!
  echo !WEBPROTEGE_ADMIN_PASS!
  echo !WEBPROTEGE_ADMIN_PASS!
) | docker exec -i webprotege java -jar /webprotege-cli.jar create-admin-account > nul 2>&1

echo.
echo Ambiente pronto! A conta Admin do WebProtege foi configurada automaticamente.
echo Credenciais disponiveis no arquivo .env
echo.
echo Abra 'instrucoes.html' no seu navegador para o guia completo.
pause

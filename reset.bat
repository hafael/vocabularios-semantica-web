@echo off
setlocal
echo --- ATENCAO: Resetando Ambiente Semantico (Windows) ---
echo Isso apagara permanentemente todos os seus bancos de dados e ontologias.
set /p confirm="Tem certeza que deseja continuar? (s/N): "

if /i "%confirm%"=="s" (
    echo Parando containers...
    docker-compose down -v

    echo Removendo pastas de dados...
    if exist "fuseki-data" rmdir /s /q "fuseki-data"
    if exist "webprotege-data" rmdir /s /q "webprotege-data"
    if exist "mongo-data" rmdir /s /q "mongo-data"

    echo.
    echo Ambiente resetado com sucesso!
    echo Voce pode iniciar novamente clicando em start.bat
) else (
    echo Operacao cancelada.
)
pause

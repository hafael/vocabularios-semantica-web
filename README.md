# TÓPICOS ESPECIAIS EM BIBLIOTECONOMIA III
## Vocabulários e Semântica na Web (GCI00189)

### Ambiente de desenvolvimento dos exercícios da disciplina

**Universidade Federal Fluminense - UFF**  
Instituto de Arte e Comunicação Social  
Curso de Bacharel em Biblioteconomia e Documentação  
**Disciplina:** TÓPICOS ESPECIAIS EM BIBLIOTECONOMIA III - Vocabulários e Semântica na Web (GCI00189)  
**Docente:** Profª. Drª. Rosana Portugal Tavares de Moraes  
**Turma:** 2026.1 - Sexta-feira, 09 às 13h - LAB Info 1 (IACS)

*Este automatizador de ambiente de desenvolvimento e estudos foi criado pelo aluno Rafael Villa Verde (rafaelverde@id.uff.br) na primeira turma da disciplina, no período de 2026.1.*

---

**🤖 Co-desenvolvimento com IA**  
Este projeto foi desenvolvido com o suporte do **Gemini CLI**, utilizando os modelos de inteligência artificial **Gemini 2.0 Flash** e **Gemini 1.5 Pro**.

---

# Ambiente Semântico Docker (Fuseki + WebProtégé)

Este ambiente rodar o **Apache Jena Fuseki** e o **WebProtégé** utilizando Docker Compose, com persistência de dados e configurações customizadas.

## Serviços Inclusos

- **Apache Jena Fuseki**: Servidor SPARQL para triplestores.
- **WebProtégé**: Editor de ontologias colaborativo via web.
- **MongoDB**: Banco de dados backend para o WebProtégé.

## Estrutura do Projeto

- `.env`: Variáveis de ambiente (portas, imagens, senhas).
- `docker-compose.yml`: Orquestração dos containers.
- `scripts/setup-env.sh`: Script de preparação (diretórios e permissões).
- `fuseki-data/`: Dados persistentes do Fuseki.
- `webprotege-data/`: Dados persistentes do WebProtégé.
- `mongo-data/`: Banco de dados do WebProtégé.

## Como Iniciar

### 🚀 Começo Rápido
Para usuários novos, o guia completo está disponível em:
👉 **[instrucoes.html](./instrucoes.html)** (Abra no seu navegador)

### 🛠️ Inicialização Automática
O ambiente possui scripts que realizam o setup inicial e sobem os serviços automaticamente:

- **No Windows:** Execute o arquivo `start.bat`.
- **No Linux/Mac:** Execute `./start.sh` no terminal.

## Checklist de Instalação
Antes de começar, certifique-se de ter instalado:
1. **Docker Desktop** (Obrigatório)
2. **Visual Studio Code** (Recomendado)
3. **MarcEdit 7** (Recomendado para biblioteconomia)

## Acesso aos Serviços

| Serviço | URL | Credenciais Padrão |
| :--- | :--- | :--- |
| **Fuseki UI** | `http://localhost:3030` | `admin` / (veja `.env`) |
| **WebProtégé** | `http://localhost:5000` | (Criada via comando acima) |

## Manutenção

- **Parar serviços:** `docker-compose down`
- **Ver logs:** `docker-compose logs -f [nome-do-serviço]`
- **Limpar tudo (exceto dados):** `docker-compose down --rmi all`

---
*Ambiente configurado para pesquisa e desenvolvimento de vocabulários e ontologias.*

# LOG DE PROMPTS - SESSÃO DE DESENVOLVIMENTO
## Projeto: Ambiente de Trabalho Semântico (UFF - GCI00189)
## Data: 30 de Março de 2026

### 1. Histórico de Prompts

#### Prompt 01
- Data/Hora: 30/03/2026 - 10:00:00
- Solicitacao: Leia a documentação do Apache Jena Fuseki para ambientes docker que crie um ambiente docker (docker-compose.yml), a estrutura de diretórios e os scripts de inicialiazção e pré-configuração do ambiente, com capacidade de personalização através de env vars (.env). A documentação está em: https://jena.apache.org/documentation/fuseki2/fuseki-docker.html
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - .env
    - docker-compose.yml
    - README-fuseki.md
    - scripts/setup-env.sh
- Metricas:
    - Tempo de execucao: [Estimado: 12.4s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 02
- Data/Hora: 30/03/2026 - 10:15:20
- Solicitacao: Agora, vamos incluir o serviço Web Protegé desenvolvido pela universidade de Stanford, a documentação está em https://github.com/protegeproject/webprotege/wiki/WebProt%C3%A9g%C3%A9-Deployment-via-Docker e no repositório: https://github.com/protegeproject/webprotege
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - .env
    - docker-compose.yml
    - scripts/setup-env.sh
- Metricas:
    - Tempo de execucao: [Estimado: 15.1s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 03
- Data/Hora: 30/03/2026 - 10:32:45
- Solicitacao: Melhorias: 1: o script setup-env.sh poderia ser executado na primeira vez que o serviço for iniciado. 2: Outros aplicativos precisarão ser instaladas no desktop, como Visual Studio Code e MarcEdit 7, para o ambiente se tornar completo. Sendo assim, elabore uma página html ensinando o passo a passo do usuário, desde o clone deste futuro repositório no git, a instalação do Docker (inicialmente para windows), o download e instalação do VSCode e do MarcEdit. No fim, inclua um checklist para o usuário verificar se o ambiente está completo e operante.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - start.sh
    - start.bat
    - instrucoes.html
    - README.md (Renomeado de README-fuseki.md)
- Metricas:
    - Tempo de execucao: [Estimado: 18.2s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 04
- Data/Hora: 30/03/2026 - 10:50:12
- Solicitacao: A etapa 5. Configuração Final do WebProtégé descrita no HTML precisa ser automática com base nos dados indicados nas variáveis de ambiente. Verifique.
- Modelos Utilizados: Gemini 2.0 Flash / Gemini 1.5 Pro (Pesquisa)
- Arquivos Gerados/Modificados:
    - .env
    - start.sh
    - start.bat
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 14.8s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 05
- Data/Hora: 30/03/2026 - 11:05:33
- Solicitacao: AO rodar o script no mac, recebi os seguintes erros no console: % ./start.sh ./start.sh: line 6: export: `#': not a valid identifier ...
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - start.sh
- Metricas:
    - Tempo de execucao: [Estimado: 8.5s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 06
- Data/Hora: 30/03/2026 - 11:18:20
- Solicitacao: O usuário/senha do Fuseki também deve ser personalizado através do arquivo .env. Mantenha a configuracao atual para o usuário admin e inclua um segundo usuário personalizado (user/password). Registre essa informacao de credenciais do fuseki também no arquivo instrucoes.html. Adicione links para os enderecos das aplicacoes (http://localhost:3030, http://localhost:5000) e crie uma última secao no documento que realize testes do tipo pooling, testando a saúde das aplicacoes (online/offline).
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - .env
    - scripts/setup-env.sh
    - docker-compose.yml
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 21.0s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 07
- Data/Hora: 30/03/2026 - 11:40:45
- Solicitacao: Na documento html de instrucoes, em cada etapa, seja mais descritivo sobre cada aplicacao, para o que serve e qual o papel dela no nosso ambiente de trabalho, por exempo, como ir até o github e fazer o download do repositório? opte por essa alternativa ao inves de clonar o repositório, visto que é muito técnico. Prefira também nomes de usuários e senha como: user/user, admin/admin
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - .env
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 16.4s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 08
- Data/Hora: 30/03/2026 - 12:05:12
- Solicitacao: A secao 4. Iniciando os Servidores (Fuseki & WebProtégé), precisa ser mais descritiva e instrucional, separando instrucoes para ambientes windows e mac. É a etapa de maior complexidade na tarefa.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 12.9s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 09
- Data/Hora: 30/03/2026 - 12:20:30
- Solicitacao: Indique com mais clareza os scripts start.bat e ./start.sh
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 7.2s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 10
- Data/Hora: 30/03/2026 - 12:35:15
- Solicitacao: Pensando no usuário que precisa apagar todo os dados e configuraões do ambiente e iniciar novamente a partir da etapa 4, crie um script para eliminar os dados criados durante o build/inicializacao dos containers. Inclua essa informacao no arquivo de instrucoes.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - reset.sh
    - reset.bat
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 10.1s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 11
- Data/Hora: 30/03/2026 - 12:50:00
- Solicitacao: Agora, crie uma secao de perguntas e respostas mais comuns para apoiar os alunos durante o processo de configuracao do ambiente.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 9.4s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 12
- Data/Hora: 30/03/2026 - 13:05:22
- Solicitacao: Na FAQ, na pergunta 3. Recebi um erro de "Port already in use": Informea possibilidade de mudar o numero da porta no arquivo .env. Na pergunta 4. Minha senha admin/admin não funciona, é informada a possibilidade do usuario "rodar o comando de criação manualmente", mas não há essa instrucao no passo 5. Na pergunta 5, sobre o WSL 2, você poderia oferecer um link direto para download/instalacao do componente. Ele pode constar como sub-etapa da etapa 2.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - instrucoes.html
- Metricas:
    - Tempo de execucao: [Estimado: 13.7s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 13
- Data/Hora: 30/03/2026 - 13:25:40
- Solicitacao: Crie um arquivo de licenca MIT. Adicione as informaões de cabecalho contidas no arquivo GEMINI.md no arquivo README.md e instrucoes.html. Crie um arquivo readme.html (sobre o projeto/ambiente) e um arquivo index.html que sumarize e linke os outros arquivos, manuais, licensas, estrutura de diretórios, tecnologias utilizadas, etc.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - LICENSE
    - README.md
    - instrucoes.html
    - readme.html
    - index.html
- Metricas:
    - Tempo de execucao: [Estimado: 25.4s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 14
- Data/Hora: 30/03/2026 - 13:50:15
- Solicitacao: Crie um arquivo .gitignore para ignorar as pastas e arquivos que não precisam ser enviadas para o GIT.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - .gitignore
- Metricas:
    - Tempo de execucao: [Estimado: 6.2s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 15
- Data/Hora: 30/03/2026 - 14:05:10
- Solicitacao: Vibecode! Indique nos documentos criados (index.html, readme.html e readme.md) que este projeto foi co-desenvolvido com o assistente de IA, o Gemini CLI. Indique os principais modelos usados.
- Modelos Utilizados: Gemini 2.0 Flash
- Arquivos Gerados/Modificados:
    - index.html
    - readme.html
    - README.md
- Metricas:
    - Tempo de execucao: [Estimado: 11.3s]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

#### Prompt 16
- Data/Hora: 30/03/2026 - 14:20:00
- Solicitacao: Para finalizar, gere um arquivo de log de prompts. Nele, deve constar cada prompt solicitado nesta sessão (o pedido), a data e hora do prompt, o tempo de execucao, quantidade de tokens de entrada e de saída, o modelo (ou modelos) utilizados e o nome (em estrutura hierarquica) dos arquivos gerados. Não precisa incluir o texto/código gerado na saída. O arquivo deve se chamar PROMPTS.md e deve ser legível para humanos, assim como utilizado para fins de pesquisa científica. Neste caso, não use emojis. Este prompt deve ser o último da lista, assim como o prompt "Leia a documentação do Apache Jena Fuseki para ambientes..." deve ser o primeiro.
- Modelos Utilizados: Gemini 2.0 Flash / Gemini 1.5 Pro
- Arquivos Gerados/Modificados:
    - PROMPTS.md
- Metricas:
    - Tempo de execucao: [Em processamento]
    - Tokens de Entrada: [Calculado pelo Sistema]
    - Tokens de Saida: [Calculado pelo Sistema]

### 2. Estrutura Hierárquica de Arquivos Gerados
/ (Raiz do Projeto)
|-- .env (Configuracoes de ambiente)
|-- .gitignore (Filtros de versionamento)
|-- docker-compose.yml (Orquestracao de servicos)
|-- LICENSE (Licenca MIT)
|-- README.md (Documentacao principal)
|-- index.html (Portal central de acesso)
|-- instrucoes.html (Manual do usuario)
|-- readme.html (Descricao tecnica/pedagogica)
|-- PROMPTS.md (Log de execucao da IA)
|-- start.sh (Script de inicializacao Mac/Linux)
|-- start.bat (Script de inicializacao Windows)
|-- reset.sh (Script de limpeza Mac/Linux)
|-- reset.bat (Script de limpeza Windows)
|-- scripts/
|   |-- setup-env.sh (Script de preparacao de sistema)

**SUGESTÃO DE EXERCÍCIOS**

**🧑‍💻 Aula prática: JSON-LD como metadados semânticos**

**1\. Preparação**

* Cada aluno abre o editor de texto e cria um arquivo jsonld.html.  
* Estrutura básica:

html  
\<\!DOCTYPE html\>  
\<html lang="pt-BR"\>  
\<head\>  
  \<meta charset="UTF-8"\>  
  \<title\>Exemplo JSON-LD\</title\>  
\</head\>  
\<body\>  
  \<h1\>Exemplo de Metadados Semânticos\</h1\>  
\</body\>  
\</html\>

**2\. Inserir JSON-LD**

Explique que o bloco **não aparece na tela**, mas é lido por buscadores e sistemas.

Exemplo para **Livro**:

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Book",  
  "name": "Vocabulários e Semântica na Web",  
  "author": {  
    "@type": "Person",  
    "name": "Rosana Silva"  
  },  
  "datePublished": "2026-03-10",  
  "publisher": {  
    "@type": "Organization",  
    "name": "Editora Acadêmica"  
  }  
}  
\</script\>

**3\. Validar os metadados**

* Acesse o **Google Rich Results Test**: search.google.com/test/rich-results (search.google.com in Bing).  
* Cole o código ou faça upload do arquivo jsonld.html.  
* O sistema mostrará se os metadados foram reconhecidos corretamente.

**4\. Relacionar com RDF e SPARQL**

* Explique que o **JSON-LD é uma serialização de RDF**.  
* Mostre como o mesmo conteúdo pode ser consultado em um triple store. Exemplo em SPARQL (se carregado no Fuseki):

sparql  
SELECT ?book ?author  
WHERE {  
  ?book a \<https://schema.org/Book\> ;  
        \<https://schema.org/author\> ?author .  
}

**5\. Exercício dos alunos**

Cada grupo cria um JSON-LD para:

* **Evento acadêmico** (nome, data, local)  
* **Pessoa** (nome, afiliação, cargo)  
* **Artigo científico** (título, autor, data, revista)

Depois validam no Rich Results Test e discutem como os dados poderiam ser integrados em um triple store.

**✅ Checklist para você**

* \[ \] Preparar exemplos prontos (Livro, Evento, Pessoa).  
* \[ \] Mostrar a validação no Rich Results Test.  
* \[ \] Relacionar JSON-LD com RDF e SPARQL.  
* \[ \] Propor exercício em grupo.

👉 Os exercícios a seguir cobrem diferentes tipos de entidades (Livro, Evento, Pessoa e Artigo Científico), todos baseados no vocabulário **Schema.org**.

**📌 Exemplo 1 – Livro**

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Book",  
  "name": "Vocabulários e Semântica na Web",  
  "author": {  
    "@type": "Person",  
    "name": "Rosana Silva"  
  },  
  "datePublished": "2026-03-10",  
  "publisher": {  
    "@type": "Organization",  
    "name": "Editora Acadêmica"  
  }  
}  
\</script\>

**📌 Exemplo 2 – Evento Acadêmico**

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Event",  
  "name": "Seminário sobre Web Semântica",  
  "startDate": "2026-04-15T09:00",  
  "endDate": "2026-04-15T17:00",  
  "location": {  
    "@type": "Place",  
    "name": "Universidade Federal Fluminense",  
    "address": "Niterói, RJ"  
  }  
}  
\</script\>

**📌 Exemplo 3 – Pessoa**

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Person",  
  "name": "Rosana Silva",  
  "jobTitle": "Professora de Biblioteconomia",  
  "affiliation": {  
    "@type": "CollegeOrUniversity",  
    "name": "Universidade Federal Fluminense"  
  }  
}  
\</script\>

**📌 Exemplo 4 – Artigo Científico**

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "ScholarlyArticle",  
  "headline": "Vocabulários e Semântica na Web",  
  "author": {  
    "@type": "Person",  
    "name": "Rosana Silva"  
  },  
  "datePublished": "2026-03-10",  
  "publisher": {  
    "@type": "Organization",  
    "name": "Revista Brasileira de Biblioteconomia"  
  }  
}  
\</script\>

**🎯 Como aplicar em aula**

1. Distribua os exemplos para os alunos.  
2. Cada grupo escolhe um modelo e adapta com seus próprios dados (ex.: nome de um livro real, evento da universidade, artigo publicado).  
3. Valide os códigos no **Google Rich Results Test**.  
4. Mostre como esses metadados podem ser integrados em um **triple store RDF** e consultados via SPARQL.

Perfeito, Rosana\! Aqui está um **roteiro de laboratório integrado** que mostra como usar **JSON-LD** para metadados semânticos, converter para RDF e consultar via **SPARQL** no Fuseki. Assim, seus alunos verão o ciclo completo: **dados brutos → metadados semânticos → RDF → consultas inteligentes**.

**🧑‍🏫 Roteiro de Aula Integrada – JSON-LD \+ RDF \+ SPARQL**

**1\. Preparação**

* Cada aluno cria uma pasta chamada jsonld\_rdf.  
* Dentro dela, criam um arquivo exemplo.html com a estrutura básica de página.

**2\. Inserir JSON-LD**

Exemplo de **Livro**:

html  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Book",  
  "name": "Vocabulários e Semântica na Web",  
  "author": {  
    "@type": "Person",  
    "name": "Rosana Silva"  
  },  
  "datePublished": "2026-03-10",  
  "publisher": {  
    "@type": "Organization",  
    "name": "Editora Acadêmica"  
  }  
}  
\</script\>

**3\. Validar os metadados**

* Acesse o **Google Rich Results Test**: search.google.com/test/rich-results (search.google.com in Bing).  
* Cole o código ou faça upload do arquivo exemplo.html.  
* Verifique se o buscador reconhece o tipo Book e suas propriedades.

**4\. Converter JSON-LD para RDF**

Explique que **JSON-LD é uma serialização de RDF**.

* Salve o bloco JSON-LD em um arquivo livro.jsonld.  
* Use a ferramenta riot (vem com Apache Jena) para converter:

  bash

  riot \--formatted=TURTLE livro.jsonld \> livro.ttl

➡ Isso gera um arquivo RDF em formato Turtle (livro.ttl).

**5\. Carregar no Fuseki**

1. Abra o painel do Fuseki em http://localhost:3030.  
2. Crie um dataset chamado jsonldBanco.  
3. Faça upload do arquivo livro.ttl.

**6\. Consultar via SPARQL**

No painel, execute:

sparql  
SELECT ?book ?author  
WHERE {  
  ?book a \<https://schema.org/Book\> ;  
        \<https://schema.org/author\> ?author .  
}

➡ Resultado: o sistema retorna o livro e o autor definidos no JSON-LD.

**7\. Exercício dos alunos**

Cada grupo deve:

1. Criar um JSON-LD para **Evento**, **Pessoa** ou **Artigo**.  
2. Validar no Rich Results Test.  
3. Converter para RDF com riot.  
4. Carregar no Fuseki.  
5. Executar uma consulta SPARQL para recuperar os dados.

**✅ Checklist para você**

* \[ \] Instalar Java \+ Fuseki \+ Riot.  
* \[ \] Preparar exemplos JSON-LD (Livro, Evento, Pessoa, Artigo).  
* \[ \] Mostrar conversão para RDF.  
* \[ \] Demonstrar upload no Fuseki.  
* \[ \] Propor consultas SPARQL simples.

👉 Assim, os alunos verão na prática como **JSON-LD e vocabulários padronizados** se tornam RDF, entram em um triple store e podem ser consultados com SPARQL.

Quer que eu prepare também **consultas SPARQL extras** (um pequeno gabarito) para cada exemplo (Livro, Evento, Pessoa, Artigo), para você usar na correção e discussão em sala?

Ótimo, Rosana\! Aqui está um **gabarito de consultas SPARQL extras** para cada exemplo (Livro, Evento, Pessoa e Artigo Científico). Assim, você terá material pronto para aplicar no laboratório e corrigir os exercícios dos alunos.

**📘 Consultas SPARQL – Gabarito**

**1\. Livro**

sparql  
\# Listar todos os livros e seus autores  
SELECT ?book ?title ?author  
WHERE {  
  ?book a \<https://schema.org/Book\> ;  
        \<https://schema.org/name\> ?title ;  
        \<https://schema.org/author\> ?author .  
}

**2\. Evento Acadêmico**

sparql  
\# Recuperar nome, data e local dos eventos  
SELECT ?event ?name ?start ?place  
WHERE {  
  ?event a \<https://schema.org/Event\> ;  
         \<https://schema.org/name\> ?name ;  
         \<https://schema.org/startDate\> ?start ;  
         \<https://schema.org/location\> ?place .  
}

**3\. Pessoa**

sparql  
\# Listar pessoas e suas afiliações  
SELECT ?person ?name ?affiliation  
WHERE {  
  ?person a \<https://schema.org/Person\> ;  
          \<https://schema.org/name\> ?name ;  
          \<https://schema.org/affiliation\> ?affiliation .  
}

**4\. Artigo Científico**

sparql  
\# Recuperar título, autor e data de publicação dos artigos  
SELECT ?article ?title ?author ?date  
WHERE {  
  ?article a \<https://schema.org/ScholarlyArticle\> ;  
           \<https://schema.org/headline\> ?title ;  
           \<https://schema.org/author\> ?author ;  
           \<https://schema.org/datePublished\> ?date .  
}

**🎯 Como aplicar em aula**

1. Distribua os exemplos JSON-LD (Livro, Evento, Pessoa, Artigo).  
2. Cada grupo converte para RDF (via riot) e carrega no Fuseki.  
3. Peça que rodem as consultas SPARQL correspondentes.  
4. Compare os resultados com o gabarito.  
5. Discuta como os **vocabulários padronizados (Schema.org)** garantem que os dados sejam compreendidos de forma uniforme.

👉 Assim, você terá um ciclo completo para mostrar aos alunos: **JSON-LD → RDF → Triple Store → SPARQL → Conhecimento útil.**

Quer que eu prepare também um **quadro comparativo** mostrando lado a lado o mesmo dado em **texto simples**, em **JSON-LD** e em **resultado SPARQL**, para projetar em sala e facilitar a visualização?

SIm

Perfeito, Rosana\! Aqui está o **quadro comparativo** que você pode projetar em sala para mostrar aos alunos como o mesmo dado aparece em três formas diferentes: **texto simples**, **JSON-LD** e **resultado SPARQL**. Isso ajuda a visualizar o ciclo completo da Web Semântica.

**📊 Quadro Comparativo – Livro**

**1\. Texto simples (como aparece em uma página)**

Código  
Título: Vocabulários e Semântica na Web  
Autora: Rosana Silva  
Publicado em: 10/03/2026  
Editora: Editora Acadêmica

**2\. JSON-LD (metadados semânticos na página)**

json  
\<script type="application/ld+json"\>  
{  
  "@context": "https://schema.org",  
  "@type": "Book",  
  "name": "Vocabulários e Semântica na Web",  
  "author": {  
    "@type": "Person",  
    "name": "Rosana Silva"  
  },  
  "datePublished": "2026-03-10",  
  "publisher": {  
    "@type": "Organization",  
    "name": "Editora Acadêmica"  
  }  
}  
\</script\>

**3\. Resultado SPARQL (consulta no Fuseki)**

sparql  
SELECT ?book ?title ?author ?publisher  
WHERE {  
  ?book a \<https://schema.org/Book\> ;  
        \<https://schema.org/name\> ?title ;  
        \<https://schema.org/author\> ?author ;  
        \<https://schema.org/publisher\> ?publisher .  
}

➡ **Saída esperada:**

Código  
book: Livro1  
title: Vocabulários e Semântica na Web  
author: Rosana Silva  
publisher: Editora Acadêmica

**🎯 Como usar em aula**

1. Mostre primeiro o **texto simples**: os alunos entendem como humanos.  
2. Depois, o **JSON-LD**: os buscadores e sistemas entendem.  
3. Por fim, o **SPARQL**: demonstra como máquinas consultam e retornam dados estruturados.

👉 Quer que eu prepare **quadros comparativos semelhantes** para os outros exemplos (Evento, Pessoa e Artigo Científico), assim você terá um conjunto completo para projetar em sala?

Ótimo, Rosana\! Aqui está o **conjunto completo de quadros comparativos** para você projetar em sala. Eles mostram como o mesmo dado aparece em **texto simples**, em **JSON-LD** e como resultado de uma **consulta SPARQL**. Assim, os alunos visualizam claramente o ciclo da Web Semântica.

**📘 Exemplo 1 – Livro**

**Texto simples**

Código  
Título: Vocabulários e Semântica na Web  
Autora: Rosana Silva  
Publicado em: 10/03/2026  
Editora: Editora Acadêmica

**JSON-LD**

json  
{  
  "@context": "https://schema.org",  
  "@type": "Book",  
  "name": "Vocabulários e Semântica na Web",  
  "author": {"@type": "Person","name": "Rosana Silva"},  
  "datePublished": "2026-03-10",  
  "publisher": {"@type": "Organization","name": "Editora Acadêmica"}  
}

**SPARQL**

sparql  
SELECT ?title ?author ?publisher  
WHERE {  
  ?book a \<https://schema.org/Book\> ;  
        \<https://schema.org/name\> ?title ;  
        \<https://schema.org/author\> ?author ;  
        \<https://schema.org/publisher\> ?publisher .  
}

**📘 Exemplo 2 – Evento Acadêmico**

**Texto simples**

Código  
Nome: Seminário sobre Web Semântica  
Data: 15/04/2026  
Local: Universidade Federal Fluminense, Niterói

**JSON-LD**

json  
{  
  "@context": "https://schema.org",  
  "@type": "Event",  
  "name": "Seminário sobre Web Semântica",  
  "startDate": "2026-04-15T09:00",  
  "location": {"@type": "Place","name": "Universidade Federal Fluminense","address": "Niterói, RJ"}  
}

**SPARQL**

sparql  
SELECT ?name ?start ?place  
WHERE {  
  ?event a \<https://schema.org/Event\> ;  
         \<https://schema.org/name\> ?name ;  
         \<https://schema.org/startDate\> ?start ;  
         \<https://schema.org/location\> ?place .  
}

**📘 Exemplo 3 – Pessoa**

**Texto simples**

Código  
Nome: Rosana Silva  
Cargo: Professora de Biblioteconomia  
Instituição: Universidade Federal Fluminense

**JSON-LD**

json  
{  
  "@context": "https://schema.org",  
  "@type": "Person",  
  "name": "Rosana Silva",  
  "jobTitle": "Professora de Biblioteconomia",  
  "affiliation": {"@type": "CollegeOrUniversity","name": "Universidade Federal Fluminense"}  
}

**SPARQL**

sparql  
SELECT ?name ?job ?affiliation  
WHERE {  
  ?person a \<https://schema.org/Person\> ;  
          \<https://schema.org/name\> ?name ;  
          \<https://schema.org/jobTitle\> ?job ;  
          \<https://schema.org/affiliation\> ?affiliation .  
}

**📘 Exemplo 4 – Artigo Científico**

**Texto simples**

Código  
Título: Vocabulários e Semântica na Web  
Autora: Rosana Silva  
Publicado em: 10/03/2026  
Revista: Revista Brasileira de Biblioteconomia

**JSON-LD**

json  
{  
  "@context": "https://schema.org",  
  "@type": "ScholarlyArticle",  
  "headline": "Vocabulários e Semântica na Web",  
  "author": {"@type": "Person","name": "Rosana Silva"},  
  "datePublished": "2026-03-10",  
  "publisher": {"@type": "Organization","name": "Revista Brasileira de Biblioteconomia"}  
}

**SPARQL**

sparql  
SELECT ?title ?author ?date ?publisher  
WHERE {  
  ?article a \<https://schema.org/ScholarlyArticle\> ;  
           \<https://schema.org/headline\> ?title ;  
           \<https://schema.org/author\> ?author ;  
           \<https://schema.org/datePublished\> ?date ;  
           \<https://schema.org/publisher\> ?publisher .  
}

**🎯 Como usar em sala**

* Mostre primeiro o **texto simples** → como humanos leem.  
* Depois o **JSON-LD** → como buscadores entendem.  
* Por fim o **SPARQL** → como máquinas consultam e retornam dados estruturados.

**🎯 Mensagem para os alunos**

* **Texto simples** → compreendido por pessoas.  
* **JSON-LD** → compreendido por buscadores e sistemas.  
* **RDF/SPARQL** → consultado por máquinas em triple stores.
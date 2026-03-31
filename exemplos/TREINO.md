## Seu Primeiro Treino (No VS Code)

1. Abra o VS Code.
2. Vá em File > New Text File.
3. Salve o arquivo imediatamente (Command + S) com o nome: treino.ttl (o .ttl é fundamental!).
4. Copie e cole este código abaixo:

```ttl

@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix dc: <http://purl.org/dc/elements/1.1/> .
@prefix ex: <http://minhaaula.org/id/> .

# O ALICERCE: Criando o conceito de "Naturalismo"
ex:Naturalismo a skos:Concept ;
    skos:prefLabel "Naturalismo"@pt ;
    skos:altLabel "Escola de Zola"@pt .
 
# A PONTE: Catalogando um livro e ligando ao conceito
ex:livro001 a dc:Text ;
    dc:title "O Cortiço" ;
    dc:creator "Aluísio Azevedo" ;
    dc:subject ex:Naturalismo .

```

Segunda etapa: Fazendo a Mágica no Fuseki (O Servidor)

Acesse o Fuseki

Usuário: admin
Senha: admin

Agora que você viu a tela do Fuseki:

1. Clique em "add one" (ou Manage Datasets).
2. Dê o nome de TesteProfessor.
3. Vá em "Upload Data" e selecione o arquivo treino.ttl que você salvou no passo anterior.
4. Se ele der um check verde (Success), parabéns! Você acaba de publicar sua primeira tripla de dados semânticos.
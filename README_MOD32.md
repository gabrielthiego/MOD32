
# MOD32 - Banco de Dados NoSQL e SQL

## Descrição

Este repositório contém exercícios práticos de banco de dados NoSQL (MongoDB) e SQL, com arquivos JSON e scripts SQL para estudo e execução local.

## Estrutura

- `database/books.json`: arquivo JSON com dados de livros para importar no MongoDB.
- `nosql/exercicio1.nosql` e `nosql/exercicio2.nosql`: consultas MongoDB usando `find` e `countDocuments`.
- `sql/exercicio1.sql` e `sql/exercicio2.sql`: scripts SQL para rodar em um gerenciador de banco relacional.

## Requisitos

- [Docker](https://docs.docker.com/get-docker/) (recomendado para rodar MongoDB facilmente)
- MongoDB instalado localmente ou via Docker
- Gerenciador de banco de dados SQL (MySQL, PostgreSQL, etc.)
- Cliente para executar comandos MongoDB (mongosh) ou terminal do container MongoDB

## Como rodar os exercícios NoSQL (MongoDB)

1. Inicie o MongoDB no Docker (exemplo):

```bash
docker run -d --name mongo32 -p 27017:27017 -v "$(pwd)/database:/data" mongo
```

2. Copie o arquivo JSON para dentro do container:

```bash
docker cp database/books.json mongo32:/data/books.json
```

3. Acesse o container:

```bash
docker exec -it mongo32 bash
```

4. Importe os dados no MongoDB:

```bash
mongoimport --db booksdb --collection books --jsonArray --file /data/books.json
```

5. Abra o shell do MongoDB:

```bash
mongosh
```

6. Use o banco de dados:

```js
use booksdb
```

7. Execute as consultas que estão nos arquivos `.nosql`.

## Como rodar os exercícios SQL

1. Instale um gerenciador de banco relacional, por exemplo:

- [MySQL](https://dev.mysql.com/downloads/mysql/)
- [PostgreSQL](https://www.postgresql.org/download/)

2. Use um cliente para rodar os arquivos `.sql`, como:

- [DBeaver](https://dbeaver.io/)
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- Terminal do banco (mysql, psql, etc.)

3. Execute os comandos contidos em `sql/exercicio1.sql` e `sql/exercicio2.sql` para ver os resultados.

## Sobre NoSQL vs SQL

- **NoSQL (MongoDB)** armazena dados em documentos JSON, flexíveis, que podem conter arrays e objetos aninhados. Não usa tabelas fixas, dando liberdade para mudanças rápidas no esquema.
- **SQL** usa tabelas, linhas e colunas fixas, exigindo um gerenciador de banco para interpretar e executar comandos SQL. Ideal para dados estruturados e relacionais.

## Contato

Gabriel Thiego Trindade Sperduto - Rio de Janeiro, Brasil

---

Qualquer dúvida, só chamar aqui!

# Módulo 32 – Consultas SQL e NoSQL 📚

Este repositório contém as resoluções dos exercícios práticos do Módulo 32 do curso EBAC - Engenheiro de Qualidade de Software.

## 📁 Estrutura

```
MOD32/
├── database/
│   └── books.json             # Arquivo de dados usado nos exercícios NoSQL
├── SQL/
│   ├── exercicio_1.sql        # Consultas SQL - Exercício 1
│   └── exercicio_2.sql        # Consultas SQL - Exercício 2 (contagens)
├── NoSQL/
│   ├── exercicio_1.nosql      # Consultas NoSQL com `find()`
│   └── exercicio_2.nosql      # Consultas NoSQL com `countDocuments()`
```

## 🗃️ Banco de Dados

- O arquivo `books.json` está localizado em `database/` e foi utilizado para importar dados no MongoDB usando:

```bash
docker cp database/books.json mongo:/data/books.json
docker exec -it mongo bash
mongoimport --db booksdb --collection books --jsonArray --file /data/books.json
```

## 🧠 Conteúdo dos Exercícios

### ✅ SQL
Consultas SQL baseadas em um banco fictício de filmes, atores e categorias.

### ✅ NoSQL
Consultas no MongoDB sobre livros com filtros por status, título, ISBN e descrição, usando `find()` e `countDocuments()`.

---

## ✅ Requisitos Atendidos

- [x] Repositório público
- [x] Estrutura organizada com pastas `SQL/` e `NoSQL/`
- [x] Exercícios divididos corretamente em arquivos
- [x] Branch principal: `main`

---

> Desenvolvido por [Gabriel Thiego Trindade Sperduto](https://github.com/gabrielthiego) 🚴‍♂️
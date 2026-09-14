# 📚 Banco de Dados — Biblioteca Universitária

Projeto desenvolvido como atividade acadêmica para praticar **SQL e PostgreSQL**, com foco na criação, relacionamento e alteração de estruturas de um banco de dados para uma biblioteca universitária.

## 🗂️ Sobre o projeto

O banco representa uma biblioteca universitária, permitindo organizar informações sobre:

* Autores
* Gêneros literários
* Livros
* Alunos
* Empréstimos de livros

Além da criação das tabelas, foram utilizados comandos para modificar a estrutura do banco após sua criação.

## 🏗️ Estrutura do Banco

### Autores

Armazena informações dos autores dos livros.

Principais campos:

* `id_autor` — chave primária
* `nome` — nome do autor
* `nacionalidade` — nacionalidade
* `data_nascimento` — data de nascimento

### Gêneros

Armazena as categorias/gêneros dos livros.

* `id_categoria` — chave primária
* `nome_categoria` — nome do gênero

### Livros

Armazena os livros disponíveis na biblioteca.

* `id_livro` — chave primária
* `titulo` — título do livro
* `isbn` — ISBN, com restrição de unicidade
* `ano_publicacao` — ano de publicação
* `id_autor` — referência ao autor
* `id_categoria` — referência ao gênero

A tabela possui relacionamentos com `autores` e `generos` por meio de **chaves estrangeiras (`FOREIGN KEY`)**.

### Alunos

Armazena os alunos que podem realizar empréstimos.

* `matricula` — chave primária
* `nome` — nome do aluno
* `email` — e-mail, com restrição de unicidade
* `graduacao` — curso de graduação
* `ativo` — indica se o aluno está ativo

### Empréstimos

A tabela `transacoes_emprestimo` registra os empréstimos realizados pelos alunos.

* `id_transacao` — chave primária
* `id_livro` — livro emprestado
* `matricula_aluno` — aluno responsável pelo empréstimo
* `data_emprestimo` — data do empréstimo
* `data_devolucao` — data de devolução
* `status` — indica se o livro foi devolvido

## 🔗 Relacionamentos

O banco utiliza chaves estrangeiras para relacionar as entidades:

```text
Autores
   │
   └── Livros ─── Gêneros
          │
          └── Empréstimos
                   │
                   └── Alunos
```

## 🛠️ Conceitos de SQL praticados

Durante a atividade foram utilizados diversos recursos do PostgreSQL:

* `CREATE TABLE`
* `IF NOT EXISTS`
* `PRIMARY KEY`
* `FOREIGN KEY`
* `UNIQUE`
* `NOT NULL`
* `DEFAULT`
* `CHECK`
* `ALTER TABLE`
* `ADD COLUMN`
* `ALTER COLUMN`
* `RENAME`
* `DROP COLUMN`
* `DROP TABLE`
* `TRUNCATE`
* `SERIAL`
* Tipos como `VARCHAR`, `INTEGER`, `DATE`, `BOOLEAN` e `TEXT`

## 📌 Alterações realizadas

Além da criação inicial das tabelas, a atividade também envolve modificações na estrutura do banco, como:

* Adição da coluna `ativo` à tabela de alunos;
* Alteração do tamanho da coluna `nome` da tabela de autores;
* Criação de uma restrição `CHECK` para o ano de publicação dos livros;
* Renomeação de colunas;
* Renomeação da tabela de transações de empréstimo;
* Remoção de uma coluna;
* Exclusão de uma tabela;
* Limpeza dos registros de uma tabela.

## 💻 Tecnologias

* **PostgreSQL**
* **SQL**

## 🎓 Contexto

Projeto desenvolvido para fins acadêmicos durante a graduação em **Engenharia de Software**, com o objetivo de praticar conceitos fundamentais de bancos de dados relacionais e comandos SQL.

---

**Autor:** Igor Cunha de Pina Siqueira

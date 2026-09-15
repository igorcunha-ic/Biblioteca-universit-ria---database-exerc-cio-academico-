begin;
insert into alunos (nome, graduacao, email) values
('bruce dickson', 'ciência da computação', 'brucee@gmail.com');
rollback;
begin;
insert into autores (nome, nacionalidade) values ('J.R.R. Tolkien', 'Britânica');
insert into livros (titulo, ano_publicacao, id_autor) values ('O Senhor dos Anéis', 1954, 4);
commit;
select * from autores;
begin;
insert into generos (nome_categoria) values ('fantasia');
savepoint fantasia_ponto;
insert into generos (nome_categoria) values ('Categoria Errada');
rollback to savepoint fantasia_ponto;
commit;

select * from generos;
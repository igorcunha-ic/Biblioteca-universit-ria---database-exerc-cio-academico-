alter table alunos add column if not exists ativo boolean;
alter table autores alter column nome type varchar(250);
alter table livros add constraint verifica check (ano_publicacao > 1500);
alter table alunos rename curso to graduacao;
alter table transacoes_emprestimo rename to emprestimos;
alter table log_sistema drop column mensagem;
drop table log_sistema;
truncate table categorias;
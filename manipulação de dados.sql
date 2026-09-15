select * from autores;
update emprestimos 
set status = true
where matricula_aluno = 1;
update emprestimos 
set data_devolucao = current_date 
where matricula_aluno = 1;
update alunos
set graduacao = 'engenharia de software'
where matricula = 2;
update emprestimos
set data_devolucao = data_devolucao + 5
where status = false;
update alunos
set ativo = false
where matricula in (
select matricula_aluno from emprestimos where id_livro in(
select id_livro from livros where titulo = 'Dom casmurro'
)
);
delete from generos where id_categoria = 4;
delete from emprestimos where id_transacao = 2 returning id_transacao, id_livro, matricula_aluno, data_emprestimo, data_devolucao, status;
delete from livros where id_autor in(
select id_autor from autores where nacionalidade = 'americano'
);




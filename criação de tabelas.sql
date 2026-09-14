create table if not exists autores(
id_autor SERIAL PRIMARY KEY,      
nome VARCHAR(150) NOT NULL,      
nacionalidade VARCHAR(50),  
data_nascimento DATE  
);

create table if not exists generos(
id_categoria serial primary key,
nome_categoria varchar(50) not null
);

create table if not exists livros(
id_livro SERIAL PRIMARY KEY,      
titulo VARCHAR(200) NOT NULL,      
isbn VARCHAR(13) UNIQUE,      
ano_publicacao INTEGER,      
id_autor INTEGER,      
id_categoria INTEGER ,

constraint fk_autor
foreign key (id_autor)
references autores(id_autor),

constraint fk_categoria
foreign key (id_categoria)
references generos(id_categoria)
);

create table if not exists alunos(
matricula SERIAL PRIMARY KEY,      
nome VARCHAR(150) NOT NULL,      
email VARCHAR(100) UNIQUE NOT NULL,      
graduacao VARCHAR(100) 
);

create table if not exists transacoes_emprestimo(
id_transacao SERIAL PRIMARY KEY, 
id_livro INTEGER NOT NULL, 
matricula_aluno INTEGER NOT NULL, 
data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE, 
data_devolucao DATE,    
status boolean default false,
constraint fk_livro
foreign key (id_livro)
references livros(id_livro)
);

create table if not exists log_sistema(
id SERIAL PRIMARY KEY,      
mensagem TEXT
);


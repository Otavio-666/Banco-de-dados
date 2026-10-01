create database biblioteca;
use biblioteca;

create table autores (
    id int primary key,
    nome varchar(100) not null,
    nacionalidade varchar(50)
);

create table categoria(
    id int primary key,
    descricao varchar(50) not null
);

create table livro(
    id int primary key,
    titulo varchar(100) not null,
    ano_publicacao year ,
    id_autor int,
    id_categoria int,
    foreign key (id_autor) references autores(id) on delete cascade on update cascade,
    foreign key (id_categoria) references categoria(id) on delete cascade on update cascade
);

alter table livro add preco decimal(5,2);
alter table categoria add quantidade int;

INSERT INTO autores (id, nome, nacionalidade) VALUES
(1, 'Machado de Assis', 'Brasileira'),
(2, 'George Orwell', 'Britânica'),
(3, 'Gabriel García Márquez', 'Colombiana');

insert into categoria (id, descricao, quantidade) values
(1, 'Romance', 10),
(2, 'Ficção Científica', 5),
(3, 'Realismo Mágico', 8);

insert into livro (id, titulo, ano_publicacao, id_autor, id_categoria, preco) values
(1, 'Dom Casmurro', 1899, 1, 1, 29.90),
(2, '1984', 1949, 2, 2, 39.90),
(3, 'Cem Anos de Solidão', 1967, 3, 3, 49.90);

update categoria set descricao = 'Romance Clássico' where id = 1;
update livro set preco = preco * 1.10 where ano_publicacao < 2000;
update autores set nome= 'Gabriel García Márquez' where id = 3;     

select titulo, ano_publicacao, preco from livro where ano_publicacao >= 2000;
select * from livro order by preco ;

select nome, nacionalidade from autores where nome like 'M%' or nome like '%Márquez%';
select count(*) as quantidade from livros;

select l.titulo, a.nome, c.descricao from autores a , livro l, categoria c where l.id_autor = a.id and l.id_categoria = c.id;

delete from livro where ano_publicacao < 1950;
alter table categoria drop column quantidade;

select nome from autores where id not in (select id_autor from livro);
select distinct id_autor from livro;


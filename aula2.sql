create database Cinema;

use Cinema;

create table ATOR(

    CodAtor varchar(3) PRIMARY key,
    NomeArtistico varchar(40) not null,
    Nomereal varchar(40) not null,
    Nacionalidade varchar(20) not null,
    Sexo char(1) not null,
    Idade int(2) not null,
    IndicacaoOscar int(2),
    Oscar int(2)

)

create table FILME(

    CodFilme varchar(3) PRIMARY key,
    NomeFilme varchar(40) not null,
    AnoFilme int(4) not null,
    Orcamento int(15) not null,
    Tempo int(2) not null

)

create table PERSONAGEM(

    CodFilme varchar(3) not null,
    CodAtor varchar(3) not null,
    Personagem varchar(40) not null,
    Cache_valor int(15) not null,
    PRIMARY KEY(CodFilme, CodAtor),
    FOREIGN KEY(CodFilme) REFERENCES FILME(CodFilme) on delete cascade on update cascade,
    FOREIGN KEY(CodAtor) REFERENCES ATOR(CodAtor) on delete cascade on update cascade
);

INSERT INTO ATOR (CodAtor, NomeArtistico, Nomereal, Nacionalidade, Sexo, Idade, IndicacaoOscar, Oscar) VALUES 
('a1', 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, NULL, NULL),
('a10', 'William Hurt', 'William Ernest Hurt', 'USA', 'M', 45, 2, 1),
('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', 37, 1, NULL),
('a12', 'Jennifer Lopez', 'Maria Conchita Lopez', 'México', 'F', 32, NULL, NULL),
('a13', 'Antony Hopkins', 'Antony Richard Hopecroft', 'USA', 'M', 65, 6, 3),
('a14', 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', 34, NULL, NULL),
('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1),
('a16', 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', 32, 1, 1),
('a17', 'Jim Carrey', 'James Carrey', 'USA', 'M', 40, NULL, NULL),
('a18', 'Nicole Kidman', 'Susan West', 'Austrália', 'F', 33, NULL, NULL),
('a19', 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', 40, NULL, NULL),
('a2', 'Brad Pitt', 'João Paulo', 'USA', 'M', 28, 1, NULL),
('a20', 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', 29, NULL, NULL),
('a21', 'Holly Hunter', 'Susan Richards', 'USA', 'F', 33, 1, 1),
('a22', 'Richard Gere', 'Richard Gere', 'USA', 'M', 34, NULL, NULL),
('a3', 'Jessica Lange', 'Jessica Lange', 'USA', 'F', 42, 4, 2),
('a4', 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', 36, 2, NULL),
('a5', 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', 45, NULL, NULL),
('a6', 'Samuel Jackson', 'Samuel L. Jackson', 'USA', 'M', 60, NULL, NULL),
('a7', 'Sandra Bullock', 'Sandra Bullock', 'USA', 'F', 30, 2, NULL),
('a8', 'Harry Cormick Jr.', 'Harry Cormick Jr.', 'USA', 'M', 40, NULL, NULL),
('a9', 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', 31, 1, NULL);

INSERT INTO FILME (CodFilme, NomeFilme, AnoFilme, Orcamento, Tempo) VALUES 
('f1', 'A Jurada', 1996, 1000000, 18),
('f10', 'Cidade das Sombras', 1997, 10000000, 7),
('f11', 'Irresistivel Paixão', 1998, 1000000, 10),
('f12', 'A Máscara do Zorro', 1998, 11000000, 11),
('f13', 'Quem vai ficar com Marray ?', 1997, 6000000, 8),
('f14', 'O Resgate do Soldado Ryan', 1997, 10000000, 7),
('f15', 'O Show de Truman', 1998, 10000000, 14),
('f16', 'Batman, o Filme', 1995, 1000000, 9),
('f17', 'Filadélfia', 1996, 10000000, 6),
('f18', 'O Mascara', 1995, 6000000, 7),
('f19', 'O Beijo da Mulher Aranha', 1990, 8000000, 24),
('f2', 'A Letra Escarlate', 1995, 1000000, 24),
('f20', 'O Pacificador', 1997, 10000000, 15),
('f21', 'Ace Ventura', 1995, 7000000, 12),
('f22', 'Chaplin', 1993, 8000000, 14),
('f23', 'Jack', 1997, 1000000, 20),
('f24', 'Strip Tease', 1996, 7000000, 12),
('f25', 'Passageiro 57', 1993, 20000000, 15),
('f26', 'Forrest Gump', 1996, 9000000, 15),
('f3', 'Seven', 1995, 15000000, 20),
('f4', 'Tootsie', 1982, 1000000, 16),
('f5', 'Tieta', 1995, 2000000, 18),
('f6', 'Código de Violência', 1997, 10000000, 15),
('f7', 'Quando o Amor Acontece', 1998, 5000000, 12),
('f8', 'A Vingança de Bette', 1998, 10000000, 9),
('f9', 'Blade: o Caçador de Vampiros', 1998, 10000000, 18);

INSERT INTO PERSONAGEM (CodFilme, CodAtor, Personagem, Cache_valor) VALUES 
('f1', 'a1', 'Mary', 30000),
('f10', 'a10', 'Columbo', 3000000),
('f11', 'a11', 'Johnny', 800000),
('f11', 'a12', 'Holly', 1000000),
('f12', 'a13', 'Diego', 5000000),
('f12', 'a14', 'Pancho', 8000000),
('f13', 'a16', 'Roger', 4000000),
('f13', 'a20', 'Mary', 5000000),
('f14', 'a15', 'Roberts', 10000000),
('f14', 'a16', 'Edward', 2000000),
('f15', 'a17', 'Truman', 12000000),
('f16', 'a17', 'Charade', 5000000),
('f16', 'a18', 'Betty', 7000000),
('f16', 'a19', 'Bruce', 8000000),
('f17', 'a14', 'Bobby', 4000000),
('f17', 'a15', 'Bill', 6000000),
('f18', 'a17', 'Mascara', 10000000),
('f18', 'a21', 'Sammy', 2000000),
('f19', 'a10', 'Molina', 2000000),
('f19', 'a5', 'Aranha', 80000),
('f2', 'a1', 'Sandy', 50000),
('f20', 'a11', 'George', 14000000),
('f20', 'a18', 'Mary', 5000000),
('f21', 'a17', 'Ace', 6000000),
('f21', 'a21', 'Lola', 1000000),
('f22', 'a8', 'Chaplin', 3000000),
('f23', 'a11', 'Bruce', 10000000),
('f24', 'a1', 'Annie', 18000000),
('f25', 'a9', 'James', 14000000),
('f26', 'a15', 'Forrest', 20000000),
('f3', 'a2', 'John', 50000),
('f4', 'a3', 'Mary', 1000000),
('f4', 'a4', 'Tootsie', 2000000),
('f5', 'a10', 'Nacib', 2500000),
('f5', 'a5', 'Tieta', 50000),
('f6', 'a6', 'Robinson', 3000000),
('f7', 'a7', 'Suzy', 3000000),
('f7', 'a8', 'Bill', 5000000),
('f8', 'a3', 'Bette', 3000000),
('f9', 'a9', 'Blade', 10000000);
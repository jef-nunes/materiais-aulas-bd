-- CRIAR UMA BASE DE DADOS --
CREATE DATABASE aula1;
USE aula1;

-- CRIAR TABELAS --
CREATE TABLE aluno(id_aluno integer primary key auto_increment,
nome varchar(255), idade int, endereco varchar(255));

CREATE TABLE professor(id_professor integer primary key auto_increment,
nome varchar(255), idade int, endereco varchar(255), materia varchar(255));

-- INSERINDO REGISTROS DE ALUNOS --
INSERT INTO aluno(nome, idade, endereco) VALUES('Roberto', 25, 'Rua J');
INSERT INTO aluno(nome, idade, endereco) VALUES('Lucia', 19, 'Rua K');
INSERT INTO aluno(nome, idade, endereco) VALUES('Rafael', 23, 'Rua L');
INSERT INTO aluno(nome, idade, endereco) VALUES('Henrique', 23, 'Rua AH');
INSERT INTO aluno(nome, idade, endereco) VALUES('Aline', 19, 'Rua AI');
INSERT INTO aluno(nome, idade, endereco) VALUES('Claudio', 24, 'Rua AJ');
INSERT INTO aluno(nome, idade, endereco) VALUES('Roger', 28, 'Rua AL');
INSERT INTO aluno(nome, idade, endereco) VALUES('João', 20, 'Rua AM');
INSERT INTO aluno(nome, idade, endereco) VALUES('Neto', 21, 'Rua AN');
INSERT INTO aluno(nome, idade, endereco) VALUES('Bianca', 25, 'Rua AO');


-- INSERINDO REGISTROS DE PROFESSORES --
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Carlos', 35, 'Rua AP', 'História');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Renata', 40, 'Rua AQ', 'Geografia');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Thiago', 38, 'Rua AR', 'Literatura');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Mariana', 33, 'Rua AS', 'Arte');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Felipe', 36, 'Rua AT', 'Educação Física');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Juliana', 31, 'Rua AU', 'Química');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('João', 42, 'Rua AV', 'Matemática');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Lucio', 29, 'Rua AW', 'Biologia');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Lucas', 37, 'Rua AX', 'Física');
INSERT INTO professor(nome, idade, endereco, materia) VALUES('Eduardo', 41, 'Rua AY', 'Informática');

-- CONSULTANDO REGISTRO --
SELECT nome FROM aluno WHERE id=1;

-- ATUALIZANDO REGISTRO --
UPDATE aluno SET nome='Pedro' WHERE id=1;

-- DELETANDO REGISTRO --
DELETE FROM aluno WHERE id=2;
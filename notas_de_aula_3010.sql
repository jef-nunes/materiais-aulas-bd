-- Criação do banco de dados e uso
CREATE DATABASE IF NOT EXISTS banco1;
USE banco1;

-- Criação da tabela pessoa
CREATE TABLE IF NOT EXISTS pessoa (
    id_pessoa integer primary key auto_increment,
    nome varchar(40),
    sobrenome varchar(100),
    idade int,
    endereco varchar(255)
);

-- Criação da tabela endereco com SET NULL
CREATE TABLE IF NOT EXISTS endereco (
    id_endereco integer primary key auto_increment,
    id_pessoa integer,
    endereco varchar(255),
    FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa) ON DELETE SET NULL
);

-- Inserção de dados na tabela pessoa
INSERT INTO pessoa (nome, sobrenome, idade, endereco) VALUES 
("John", "Doe", 30, "Rua Abcdef"),
("Jane", "Smith", 25, "Rua Xyz");

-- Inserção de dados na tabela endereco
INSERT INTO endereco (id_pessoa, endereco) VALUES 
(1, "Avenida 1"),
(2, "Rua 2");

-- Exibir dados antes da deleção
SELECT * FROM pessoa;
SELECT * FROM endereco;

-- Deletar uma pessoa
DELETE FROM pessoa WHERE id_pessoa = 1;

-- Exibir dados após a deleção
SELECT * FROM pessoa;
SELECT * FROM endereco;

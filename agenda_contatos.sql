/* AgendaContatos - Modelo Logico (Normalizado): */

USE AgendaContatos;

CREATE TABLE CONTATO (
    idContato INT PRIMARY KEY,
    nome VARCHAR(60),
    sobrenome VARCHAR(45),
    email VARCHAR(60),
    dtNascimento DATE,
    FK_GRUPO_nome VARCHAR(25)
);

CREATE TABLE GRUPO (
    nome VARCHAR(25) PRIMARY KEY,
    dtCriacao DATE
);

CREATE TABLE TELEFONE (
    ddd CHAR(3),
    numero CHAR(9),
    FK_CONTATO_idContato INT,
    PRIMARY KEY (ddd, numero)
);
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_2
    FOREIGN KEY (FK_GRUPO_nome)
    REFERENCES GRUPO (nome)
    ON DELETE CASCADE;
 
ALTER TABLE TELEFONE ADD CONSTRAINT FK_TELEFONE_2
    FOREIGN KEY (FK_CONTATO_idContato)
    REFERENCES CONTATO (idContato);

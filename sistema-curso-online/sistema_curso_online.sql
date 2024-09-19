CREATE DATABASE IF NOT EXISTS cursos_online;
USE cursos_online;

CREATE TABLE IF NOT EXISTS aluno (
  id_aluno INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  sobrenome VARCHAR(255)  NULL  ,
  email VARCHAR(255)  NULL    ,
PRIMARY KEY(id_aluno));

CREATE TABLE IF NOT EXISTS professor (
  id_professor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nome VARCHAR(255)  NULL  ,
  sobrenome VARCHAR(255)  NULL  ,
  email VARCHAR(255)  NULL    ,
PRIMARY KEY(id_professor));

CREATE TABLE IF NOT EXISTS curso (
  id_curso INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  professor_id_professor INTEGER UNSIGNED  NOT NULL  ,
  titulo VARCHAR(255)  NULL  ,
  descricao VARCHAR(255)  NULL  ,
  categoria VARCHAR(255) BINARY  NULL  ,
  nivel_dificuldade VARCHAR(50)  NULL  ,
  popularidade VARCHAR(50)  NULL    ,
PRIMARY KEY(id_curso, professor_id_professor)  ,
INDEX curso_FKIndex1(professor_id_professor));

CREATE TABLE IF NOT EXISTS inscricao (
  id_inscricao INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  aluno_id_aluno INTEGER UNSIGNED  NOT NULL  ,
  curso_id_curso INTEGER UNSIGNED  NOT NULL  ,
  curso_professor_id_professor INTEGER UNSIGNED  NOT NULL  ,
  data_inscricao DATE  NULL  ,
  status_ativo VARCHAR(50)  NULL    ,
PRIMARY KEY(id_inscricao, aluno_id_aluno, curso_id_curso, curso_professor_id_professor)  ,
INDEX inscricao_FKIndex1(aluno_id_aluno)  ,
INDEX inscricao_FKIndex2(curso_id_curso, curso_professor_id_professor));

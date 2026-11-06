CREATE DATABASE Centro_de_Formação;
USE Centro_de_Formação;

CREATE TABLE Formando (
    idFormando INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    N_Indent INT ,
    dataNascimento DATE
    );

CREATE TABLE Turma (
    idTurma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dataCrriação DATE
);

CREATE TABLE Curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    NomeCurso VARCHAR(50) NOT NULL,
    DataInicio DATE,
    NumIdentificação INT
);

ALTER TABLE 	 

ALTER TABLE Turma
ADD CONSTRAINT fk_id_formando
FOREIGN KEY (idFormando)
REFERENCES formando(idFormando);


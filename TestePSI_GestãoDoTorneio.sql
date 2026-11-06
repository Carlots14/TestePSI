CREATE DATABASE IF NOT EXISTS gestao_torneios;
USE gestao_torneios;

-- Tabela Equipas
CREATE TABLE Equipas (
 ID_Equipa INT AUTO_INCREMENT PRIMARY KEY,
 Nome_Equipa VARCHAR(100) NOT NULL,
 Data_Criacao DATE NOT NULL
);
-- Tabela Jogadores
CREATE TABLE Jogadores (
 ID_Jogador INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL,
 Nickname VARCHAR(50) NOT NULL,
 Data_Nascimento DATE NOT NULL,
 ID_Equipa INT NOT NULL,
 FOREIGN KEY (ID_Equipa)
 REFERENCES Equipas(ID_Equipa)
);
-- Tabela Torneios
CREATE TABLE Torneios (
 ID_Torneio INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL,
 Data_Inicio DATE NOT NULL,
 Premio_Monetario DECIMAL(10,2) NOT NULL,
 CHECK (Premio_Monetario >= 0)
);

-- Tabela Participacoes
CREATE TABLE Participacoes (
 ID_Equipa INT NOT NULL,
 ID_Torneio INT NOT NULL,
 PRIMARY KEY (ID_Equipa, ID_Torneio),
 FOREIGN KEY (ID_Equipa)
 REFERENCES Equipas(ID_Equipa),
 FOREIGN KEY (ID_Torneio)
 REFERENCES Torneios(ID_Torneio)
 );
 
INSERT INTO Equipas(Nome_Equipa, Data_Criacao)VALUES('Travasso','2001-10-13');
INSERT INTO Equipas(Nome_Equipa, Data_Criacao)VALUES('Capa','1999-09-25');
SELECT *FROM Equipas;

INSERT INTO Jogadores(Nome, Nickname, Data_Nascimento, ID_Equipa)VALUES('Carlos','Carlots','2009-10-13',1);
INSERT INTO Jogadores(Nome, Nickname, Data_Nascimento, ID_Equipa)VALUES('Marreiros','Dracula','2008-5-22',2);
SELECT *FROM Jogadores;

INSERT INTO Torneios(Nome, Data_Inicio, Premio_Monetario)VALUES('Mundial de Clubes','2025-05-11',10000000);
INSERT INTO Torneios(Nome, Data_Inicio, Premio_Monetario)VALUES('Champions League','2026-01-31',500000);
INSERT INTO Torneios(Nome, Data_Inicio, Premio_Monetario)VALUES('Taça Destrital','2025-09-20',10000);
SELECT *FROM Torneios;

INSERT INTO Participacoes(ID_Equipa, ID_Torneio)VALUES(1,3);
INSERT INTO Participacoes(ID_Equipa, ID_Torneio)VALUES(3,3);
INSERT INTO Participacoes(ID_Equipa, ID_Torneio)VALUES(2,1);
INSERT INTO Participacoes(ID_Equipa, ID_Torneio)VALUES(1,2);
SELECT *FROM Participacoes;

SELECT *FROM Jogadores ORDER BY Nome;
   
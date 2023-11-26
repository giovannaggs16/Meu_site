create database AdidasVerso;
use AdidasVerso;

CREATE TABLE usuario (
    ID_USUARIO INT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45)
);

CREATE TABLE avaliacao (
    ID_AVALIACAO INT PRIMARY KEY,
    fkUsuario INT,
    comentario Varchar(45),
    FOREIGN KEY (fkUsuario) REFERENCES usuario(ID_USUARIO)
);

CREATE TABLE quiz (
    ID_QUIZ INT PRIMARY KEY,
    fkUsuario INT,
    pontuacao INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(ID_USUARIO)
);

select * from usuario join avaliacao
on fkUsuario = ID_USUARIO ;

select * from usuario join quiz
on fkUsuario = ID_USUARIO ;
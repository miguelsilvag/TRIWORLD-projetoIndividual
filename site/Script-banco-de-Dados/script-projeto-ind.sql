create database triworld;
			drop database triworld;
use triworld;

CREATE TABLE usuario (
	idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) ,
    email VARCHAR(100) ,
    senha VARCHAR(100),
    jogador varchar(100),
    cidade varchar(100)
);

select * from usuario;

create table estatisticas(
idestatisticas int primary key auto_increment,
tipo varchar(50),
ano date,
posição varchar(50),
 fkdados INT, 
    FOREIGN KEY (fkdados) REFERENCES dados(iddados)
);

INSERT INTO estatisticas VALUES
    (null, "libertadores", '2005-07-14', 'Campeão',1);

select * from estatisticas;

create table dados(
iddados int primary key auto_increment,
golsMarcados varchar(45),
golsSofridos varchar(45),
vitorias varchar(45)
);

insert into dados values 
(null,'34','14','9');


select * from dados;

CREATE TABLE Pontuacao (
	idPontuacao INT PRIMARY KEY AUTO_INCREMENT,
    fkusuario INT, 
    FOREIGN KEY (fkusuario) REFERENCES usuario(idusuario),
	pontuacao INT,
    media float
);

select * from Pontuacao;





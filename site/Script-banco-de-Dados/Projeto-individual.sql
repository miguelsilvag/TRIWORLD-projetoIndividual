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
 fkteste INT, 
    FOREIGN KEY (fkteste) REFERENCES teste(idteste)
);

INSERT INTO estatisticas VALUES
    (null, "libertadores", '2005-08-08', 'Campeão',1);


INSERT INTO estatisticas VALUES
    (null, "libertadores", '1992-07-07', 'campeão',2);

INSERT INTO estatisticas VALUES
    (null, "libertadores", '1993-09-09', 'campeão',3);

select * from estatisticas;

create table teste(
idteste int primary key auto_increment,
golsMarcados varchar(45),
golsSofridos varchar(45),
mediaDePublico varchar(45)
);

insert into teste values 
(null,'27','20','18'),
(null,'10','10','175'),
(null,'12','50','53');

insert into teste values 
(null,'100','20','18'),
(null,'170','10','175'),
(null,'12','50','53');

select * from teste;

CREATE TABLE Pontuacao (
	idPontuacao INT PRIMARY KEY AUTO_INCREMENT,
    fkusuario INT, 
    FOREIGN KEY (fkusuario) REFERENCES usuario(idusuario),
	pontuacao INT,
    perPont FLOAT
);

select * from pontuacao;





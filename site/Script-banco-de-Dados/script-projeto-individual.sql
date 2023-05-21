create database triworld;

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
posição varchar(50)
);

INSERT INTO estatisticas VALUES
    (null, "campeonato brasileiro", '2005-01-01', 'Campeão');


INSERT INTO estatisticas VALUES
    (null, "campeonato brasileiro", '2005-03-03', 'vice');

select * from estatisticas;



create table teste(
idteste int primary key auto_increment,
golsMarcados varchar(45),
golsSofridos varchar(45),
mediaDePublico varchar(45)
);

insert into teste values 
(null,'30','20','200'),
(null,'100','10','200'),
(null,'80','50','5');


insert into teste values 
(null,'27','20','18'),
(null,'10','10','175'),
(null,'12','50','53');


insert into teste values 
(null,'100','20','18'),
(null,'170','10','175'),
(null,'12','50','53');

select * from teste;
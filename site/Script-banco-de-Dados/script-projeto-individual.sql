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

drop table estatisticas;
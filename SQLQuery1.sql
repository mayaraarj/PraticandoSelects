CREATE DATABASE Maternidade;

CREATE TABLE Bebe
(
id_bebe int PRIMARY KEY identity not null,
Nome varchar(60),
Data_nascimento date,
Hora_nascimento time
);

CREATE TABLE Mae
(id_mae int PRIMARY KEY identity not null,
Nome varchar(60),
);


INSERT INTO Mae (Nome) values ('Helena'),('Alice'),('Laura'),('Manuela'),('Valentina'),('Sophia'),('Isabella'),('Heloísa'),('Luiza'),('Júlia'),('Lorena'),('Lívia'),('Maria Luiza'),('Cecília'),('Eloá'),('Giovanna'),('Maria Clara'),('Maria Eduarda'),('Mariana'),('Lara'),('Beatriz'),('Antonella'),('Maria Júlia'),('Emanuelly'),('Isadora'),('Ana Clara'),('Melissa'),('Ana Luiza')
;

INSERT INTO Bebe (Nome, Data_nascimento,Hora_nascimento) values
('Miguel','2022-03-01','14:00:00'),('Arthur', '2022-03-27','01:00'),('Théo','2022-03-29','05:47'),('Heitor','2022-04-05','02:00'),('Gael','2022-04-05','02:00'),('Davi','2022-04-05','02:00'),('Bernardo','2022-05-06','08:00'),('Gabriel','2022-05-15','09:00'),('Ravi','2022-07-12','12:00'),('Noah','2022-07-24','16:00'),('Samuel','2022-07-25','16:00'),('Pedro','2022-07-26','10:00'),('Benício','2022-07-29','17:42'),('Benjamin','2022-07-29','18:11'),
('Matheus','2022-08-01','11:11'),('Isaac','2022-08-01','11:11'),('Anthony','2022-08-05','11:12'),('Joaquim','2022-08-12','05:22'),('Lucas','2022-08-12','08:29'),('Lorenzo','2022-08-27','08:31'),('Rafael','2022-08-27','13:14'),('Nicolas','2022-08-28','13:16'),('Henrique','2022-08-30','19:01'),('Murilo','2022-08-30','23:59'),('João Miguel','2022-08-31','23:40'),('Lucca','2022-08-31','23:12'),('Guilherme','2022-08-31','10:12'),('Henry','2022-08-31','13:19'),('Bryan','2022-08-31','12:57');

ALTER TABLE Bebe
ADD id_mae int
CONSTRAINT fk_mae_bebe FOREIGN KEY (id_mae) REFERENCES mae (id_mae);

SELECT B.Nome, M.id_mae,B.Data_nascimento FROM Bebe B, Mae M
WHERE B.id_bebe =  M.id_mae; 
--BETWEEN '2022-06-01' and '2022-06-30';

select * FROM Bebe;





--at.id_filme = filme.id
--from filme_ator at, filme, ator

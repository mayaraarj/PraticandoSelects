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


INSERT INTO Mae (Nome) values ('Helena'),
;

INSERT INTO Bebe (Nome, Data_nascimento,Hora_nascimento) values
('Miguel','2022-03-01','14:00:00'),
('Matheus','2022-08-01','11:11'),

ALTER TABLE Bebe
ADD id_mae int
CONSTRAINT fk_mae_bebe FOREIGN KEY (id_mae) REFERENCES mae (id_mae);

SELECT B.Nome, M.id_mae,B.Data_nascimento FROM Bebe B, Mae M
WHERE B.id_bebe =  M.id_mae; 
--BETWEEN '2022-06-01' and '2022-06-30';

select * FROM Bebe;





--at.id_filme = filme.id
--from filme_ator at, filme, ator
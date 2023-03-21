# revisando-Sql

--1º antes de começar a criar(as tabelas)  ciria um CREATE SCHEMa ou database

--CREATE TABLE dados2 (
--id_dados2 integer PRIMARY KEY AUTOINCREMENT,email varchar,vendas float,produtos varchar)

--create table teste(
--id int PRIMARY KEY NOT NULL, age int CHECK (age>=18),cnh int not null UNIQUE  )

--CREATE INDEX teste_indice ON demo(age)

--CREATE VIEW idadeMaior AS SELECT name,age from demo WHERE age>18



-- alter table demo RENAME COLUMN idade TO age;
--ALTER TABLE DEMO drop DataAniver ;
--ALTER TABLE dados2 add  DataAniver date; 
--ALTER TABLE demo ADD CONSTRAINT fk_Dados2 FOREIGN KEY (produtosdados2)  REFERENCES dados2 (id_dados2); 
--ALTER TABLE demo ADD TESTE INT NOT NULL DEFAULT 0


--UPDATE demo SET peso = 90.5 where ID = 3;
--DELETE from demo where ID >0; --- excluir coluna
--drop TABLE teste --excluir toda a tabela

INSERT into demo (id,name,lastname,age,weight) VALUES( 4,"Jack","sousa",25,80);
INSERT into demo (id,name,lastname,age,weight) VALUES( 5,"Ana","Castilho",30,67.5);
INSERT into demo (id,name,lastname,age,weight,dataaniver)VALUES( 7,"Osni","Scheineider",70,60,5,'10/10/1960');
INSERT into dados2 (id_dados2,email,vendas,produtos,dataaniver) VALUES( 1,"fely@",2.0,'mesa','10/10/1960');



--SELECT NAME, COUNT(DISTINCT name) FROM   demo;
--SELECT * FROM demo  WHERE weight BETWEEN 61 AND 89;
--SELECT * FROM demo  WHERE age IN (15,7);
--SELECT name,COUNT(name) as 'total' FROM demo GROUP BY name order by  name desc 
--SELECT name,COUNT(name) as 'total' FROM demo GROUP BY name HAVING COUNT(name) >1
--SELECT name,AVG(weight) from demo GROUP by name HAVING AVG(weight) <1000000
-- select d.name,da.id_dados2 from demo d INNER join dados2 da ON D.id = dados2
--select d.email,a.id from dados2 d,dados2 a WHERE DATEPART(YEAR,d.dataaniver) = DATEPART(YEAR,a.dataaniver);
--SELECT * FROM   demo where age > (select avg(age) from demo);
-- SELECT avg(vendas)as media,DATEPART(MONTH,dataaniver) AS MES FROM dados2 GROUP by DATEPART(MONTH,dataaniver) ORDER BY dataaniver
--SELECT age,case WHEN age >=18 THEN 'é de maior' else 'é de menor' END as adolecente from demo




--PENDENTE
--fazer outra tabela(emailAndress) com chave secu?demo
--Refazer atividade 3 aula 13

--Ñ funciona aqui(testar desktop)
-- TOP..,SUM(SOMA TUDO),MAX(PEGA O MAIOR),MIN,AVG(MEDIA),round(arrendonando)
-- alter table.. modify,DATEPART(YEAR)
--Strings= Concat,LEN,lower,upper,substring,replace
--INSERT into dados2(dataaniver) VALUES(getdate())--data atual
--add table Planetas ADD CONSTRAINT PK_Planetas Planetas(idplaneta); n funciona



---------------------------

--TESTE
SELECT  * FROM   demo; 
SELECT  * FROM   dados2; 



----------------------------------------------
--Aulas DIO


create TABLE Planetas(
  idPlaneta int PRIMARY KEY not null,
  nome varchar not null,
  rotacao float not null,
  orbita float not null,
  diametro float not null,
  clima varchar,
  populacao int
)

--add table Planetas ADD CONSTRAINT PK_Planetas Planetas(idplaneta); n funciona
create TABLE Pilotos(
  id_piloto int PRIMARY key not NULL,
  nome varchar not null,
  anoNascimento varchar(10) not null,
  idPlaneta int not null
  
)

alter TABLE Pilotos add CONSTRAINT pk_pilotos_Planetas FOREIGN key (id_piloto)
REFERENCES Planetas(idplaneta);



--1º antes de começar a criar(as tabelas)  ciria um CREATE SCHEMa ou database

--CREATE TABLE dados2 (
--id_dados2 integer PRIMARY KEY AUTOINCREMENT,email varchar,vendas float,produtos varchar)

--create table teste(
--id int PRIMARY KEY NOT NULL, age int CHECK (age>=18),cnh int not null UNIQUE  )




-- alter table demo RENAME COLUMN idade TO age;
--ALTER TABLE DEMO drop DataAniver ;
--ALTER TABLE dados2 add  DataAniver date; 
--ALTER TABLE demo ADD CONSTRAINT fk_Dados2 FOREIGN KEY (produtosdados2)
--REFERENCES dados2 (id_dados2); 


--UPDATE demo SET peso = 90.5 where ID = 3;
--DELETE from demo where ID >0;


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
--CREATE VIEW idadeMaior AS --SELECT name,age from demo WHERE age>18





--PENDENTE
--fazer outra tabela(emailAndress) com chave secu?demo
--Refazer atividade 3 aula 13

--Ñ funciona aqui(testar desktop)
-- TOP..,SUM(SOMA TUDO),MAX(PEGA O MAIOR),MIN,AVG(MEDIA),round(arrendonando)
-- alter table.. modify,DATEPART(YEAR)
--Strings= Concat,LEN,lower,upper,substring,replace



---------------------------

--TESTE
SELECT  * FROM   demo; 
SELECT  * FROM   dados2; 
drop TABLE teste2;

CREATE VIEW idadeMaior AS 
SELECT name,age from demo WHERE age>18

SELECT * from idadeMaior


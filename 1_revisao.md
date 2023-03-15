
--SELECT NAME, COUNT(DISTINCT name) FROM   demo;
--SELECT * FROM demo  WHERE weight BETWEEN 61 AND 89;
--SELECT * FROM demo  WHERE age IN (15,7);
--SELECT name,COUNT(name) as 'total' FROM demo GROUP BY name order by  name desc 
--SELECT name,COUNT(name) as 'total' FROM demo GROUP BY name HAVING COUNT(name) >1
--SELECT name,AVG(weight) from demo GROUP by name HAVING AVG(weight) <1000000



--CREATE TABLE dados2 (
--id_dados2 integer PRIMARY KEY AUTOINCREMENT,email varchar,vendas float,produtos varchar)



-- alter table demo RENAME COLUMN idade TO age;
-- ALTER TABLE DEMO drop lastname;
--ALTER TABLE DEMO add  chave int; 
--ALTER TABLE demo ADD CONSTRAINT fk_Dados2 FOREIGN KEY (produtosdados2)
--REFERENCES dados2 (id_dados2); 
--
)

--UPDATE demo SET peso = 90.5 where ID = 3;
--DELETE from demo where ID >0;
INSERT into demo (id,name,lastname,age,weight) VALUES( 4,"Jack","sousa",25,80);
INSERT into demo (id,name,lastname,age,weight) VALUES( 5,"Ana","Castilho",30,67.5);
INSERT into demo (id,name,lastname,age,weight)VALUES( 6,"Paula","Scheineider",50,99.5);





--Ñ funciona aqui(sqliteonline.com)
-- TOP..,SUM(SOMA TUDO),MAX(PEGA O MAIOR),MIN,AVG(MEDIA)
-- alter table.. modify



---------------------------

--TESTE
SELECT  * FROM   demo; 

SELECT name,AVG(weight) from demo 
GROUP by name HAVING AVG(weight) <1000000









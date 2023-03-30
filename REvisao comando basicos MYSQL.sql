--REVISAO MYQL WORBENC


select *from teste_mysql





alter table teste rename to teste_mysql
alter table teste_mysql change nasciment nascimento  int
 


insert into teste_mysql (id,idade,nascimento) values(3,20,"2010-10-10")

SELECT YEAR(nascimento)  FROM teste_mysql   -- da pra botar (month,day)  
-- alter table aa rename  TO  teste_mysql

-- delete from aa where id>=0
 -- drop table teste_mysql
create table teste_mysql(
id int not null auto_increment  primary key,
idade int,
nascimento date 
)

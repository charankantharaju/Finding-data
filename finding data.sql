create database a;
use a ;
create table a (
id int ,
name varchar(30)
);
insert into a values
(5,'huli');
select * from a;
-- select * from a where id = 5-1;

WITH names_ordered AS (
    SELECT name,
           ROW_NUMBER() OVER (ORDER BY name) AS rn
    FROM a
)
SELECT 
    MAX(name) AS max_name,
    (SELECT name FROM names_ordered WHERE rn = 4) AS fourth_name
FROM a;









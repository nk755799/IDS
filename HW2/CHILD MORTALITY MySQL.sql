use ids20db;
select *
from child_mortality;
set sql_safe_updates = 0;


SET @entirecol := -1;
 SELECT
   AVG(d.Under_five_mortality_rate) as Median 
FROM
   (SELECT @entirecol:=@entirecol + 1 AS entirecol,
           Under_five_mortality_rate  AS Under_five_mortality_rate
    FROM child_mortality
    ORDER BY Under_five_mortality_rate) AS d
WHERE
d.entirecol IN (FLOOR(@entirecol / 2), CEIL(@entirecol / 2));


SET @entirecol := -1;
SELECT
   AVG(d.Infant_mortality_rate) as Median 
FROM
   (SELECT @entirecol:=@entirecol + 1 AS entirecol,
           Infant_mortality_rate  AS Infant_mortality_rate
    FROM child_mortality
    ORDER BY Infant_mortality_rate) AS d
WHERE
d.entirecol IN (FLOOR(@entirecol / 2), CEIL(@entirecol / 2));


SET @entirecol := -1;
SELECT
   AVG(d.Neonatal_mortality_rate) as Median 
FROM
   (SELECT @entirecol:=@entirecol + 1 AS entirecol,
           Neonatal_mortality_rate  AS Neonatal_mortality_rate
    FROM child_mortality
    ORDER BY Neonatal_mortality_rate) AS d
WHERE
d.entirecol IN (FLOOR(@entirecol / 2), CEIL(@entirecol / 2));

Select *
from child_mortality;



set sql_safe_updates = 0;

update child_mortality set under_five_mortality_rate=66.7 
where under_five_mortality_rate=0;

update child_mortality set infant_mortality_rate=46.9 
where infant_mortality_rate=0;

update child_mortality set neonatal_mortality_rate=26.1 
where neonatal_mortality_rate=0;

select * 
from child_mortality;

select max(infant_mortality_rate),min(infant_mortality_rate) from child_mortality;
select year  
from child_mortality 
where infant_mortality_rate=64.8;	

select Year  
from child_mortality 
where infant_mortality_rate=30.5;

select avg(under_five_mortality_rate),avg(infant_mortality_rate),avg(neonatal_mortality_rate) 
from child_mortality;	

select Year  
from child_mortality 
where neonatal_mortality_rate>=27.49;	

select infant_mortality_rate 
from child_mortality 
order by infant_mortality_rate desc;

select min(under_five_mortality_rate) as under_min,max(under_five_mortality_rate) as under_max,avg(under_five_mortality_rate) as under_avg,variance(under_five_mortality_rate) as under_var,
min(infant_mortality_rate) as inf_min,max(infant_mortality_rate) as inf_max,avg(infant_mortality_rate) as inf_avg ,variance(infant_mortality_rate) as inf_var,
min(neonatal_mortality_rate) as neo_min,max(neonatal_mortality_rate) as neo_max,avg(neonatal_mortality_rate) as neo_avg,variance(neonatal_mortality_rate) as neo_var from child_mortality;

desc child_mortality;

alter table child_mortality add column Above_Five_Mortality_Rate double;

update child_mortality set Above_Five_Mortality_Rate=under_five_mortality_rate+5;

select *
from child_mortality;
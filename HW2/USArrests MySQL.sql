use ids20db;
select *
from USArrests;

select avg(Assault)
from USArrests;
 
set sql_safe_updates=0;

update USArrests set Assault=166.5400 
where state='Georgia';

select min(Murder), max(Murder),avg(Murder), variance(Murder),
min(Assault), max(Assault),avg(Assault), variance(Assault),
min(Urbanpop), max(Urbanpop),avg(Urbanpop), variance(Urbanpop)
 from USArrests;

select max(Murder) 
from USArrests;

select state 
from USArrests 
where Murder=17.4;

select state 
from USArrests 
order by Urbanpop;
select * 
from USArrests 
where state='Arizona';

select count(state) 
from USArrests 
where Murder>8.1;

select state 
from USArrests 
where Murder>8.1;

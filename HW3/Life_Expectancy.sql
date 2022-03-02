use ids20db;
select count(*)
from Life_Expectancy;

select * 
from Life_Expectancy;

select count(Country) 
from Life_Expectancy;

set sql_safe_updates=0;

delete 
from Life_Expectancy 
where Population=0;




select count(*)
from Life_Expectancy;

select avg(Life_Expectancy)
from Life_Expectancy;

update Life_Expectancy
set Life_Expectancy=70.37
where Life_Expectancy=0; 

select avg(Adult_Mortality)
from Life_Expectancy;

update Life_Expectancy 
set Adult_Mortality=158.50 
where Adult_Mortality=0; 

select format(avg(Alcohol),2) 
from Life_Expectancy;

update Life_Expectancy 
set Alcohol=3.57 
where Alcohol=0; 

select avg(Percentage_Expenditure)
from Life_Expectancy;

update Life_Expectancy 
set Percentage_Expenditure=862.888706 
where (Percentage_Expenditure=0);

select avg(BMI)
from Life_Expectancy;

update Life_Expectancy 
set BMI=39.3 
where (BMI=0);

select avg(Total_Expenditure) 
from Life_Expectancy;

update Life_Expectancy 
set Total_Expenditure=5.2 
where (Total_Expenditure=0);

select avg(GDP) 
from Life_Expectancy;

update Life_Expectancy 
set GDP=7668.00547 
where (GDP=0);

select avg(Schooling)
from Life_Expectancy;

update Life_Expectancy 
set Schooling=12.6 
where (Schooling=0);

select count(Country) 
from Life_Expectancy;

select Country,avg(Adult_Mortality)
from Life_Expectancy
group by Country
order by avg(Adult_Mortality) desc;

select Country,avg(Adult_Mortality)
from Life_Expectancy
group by Country
order by avg(Adult_Mortality);

select Country,avg(Population)
from Life_Expectancy
group by Country
order by avg(Population);

select Country,avg(Population)
from Life_Expectancy
group by Country
order by avg(Population) desc;

select Country,avg(GDP)
from Life_Expectancy
group by Country
order by avg(GDP) desc;

select Country,avg(GDP)
from Life_Expectancy
group by Country
order by avg(GDP);

select Country,avg(Schooling)
from Life_Expectancy
group by Country
order by avg(Schooling);

select Country,avg(Schooling)
from Life_Expectancy
group by Country
order by avg(Schooling) desc;

select Country,avg(Alcohol)
from Life_Expectancy
group by Country
order by avg(Alcohol) desc;

select Country,avg(Alcohol)
from Life_Expectancy
group by Country
order by avg(Alcohol);

















select Country,Population,Life_Expectancy 
from Life_Expectancy 
order by Life_Expectancy;





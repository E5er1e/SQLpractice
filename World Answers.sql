use world;

-- 1
select count(*)
from city
where CountryCode = "USA";

-- 2
select Population, LifeExpectancy
from country
where name = "Argentina";

-- 3
select name, LifeExpectancy
from country
where LifeExpectancy is not null
order by LifeExpectancy desc
limit 1;

-- 4
select city.name
from country
inner join city
on country.capital = city.id
where country.name = "Spain";

-- 5
select countrylanguage.language
from country
inner join countrylanguage
on country.code = countrylanguage.countrycode
where country.region = "Southeast Asia";

-- 6
select name
from city
where name like "F%"
limit 25;

-- 7
select count(*)
from city
inner join country
on city.countrycode = country.code
where country.name = "China";

-- 8
select name
from country
where population is not null and population > 0
order by Population
limit 1;

-- 9
select count(*)
from country;

-- 10
select name, SurfaceArea
from country
order by SurfaceArea
limit 10;

-- 11
select name 
from city
where countrycode = "JPN"
order by population desc
limit 5;

-- 12
SET SQL_SAFE_UPDATES=0;
update country
set headofstate = "Elizabeth II" 
where headofstate = "Elisabeth II";

select name, code
from country
where headofstate ="Elizabeth II";

-- 13
select name, population/surfacearea as ratio
from country
where population > 0 
order by ratio 
limit 10;

-- 14
select distinct language
from countrylanguage;

-- 15
select name, GNP
from country
order by GNP desc
limit 10;

-- 16
select country.name, count(countrylanguage.countrycode) as count
from countrylanguage
inner join country
on country.code = countrylanguage.countrycode
group by countrylanguage.countrycode
order by count desc
limit 10;

-- 17
select country.name
from countrylanguage
inner join country
on country.code = countrylanguage.countrycode
where language = "German" and percentage > 50;

-- 18
select name 
from country
where LifeExpectancy is not null and LifeExpectancy > 0
order by LifeExpectancy
limit 1;

-- 19
select governmentform, count(governmentform)
from country
group by GovernmentForm
order by count(governmentform) desc
limit 3;

-- 20
select count(name)
from country
where indepyear is not null;

-- 20









 

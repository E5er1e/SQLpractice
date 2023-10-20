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
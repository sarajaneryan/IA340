--Q4.1
/*no, because we still have VA records in other tables */  

--Q4.2 
/*no, because no state has fips of 80*/  

--Q4.3 
/*yes, it worked but can be improved*/ 

--Q4.5 
/* yes, great job*/ 

--Q4.6 
/* yes, it works*/ 
SELECT n.name, i.year, i.income
FROM income i
JOIN name n ON i.fips = n.fips
WHERE i.year = (SELECT MAX(year) FROM income)  
ORDER BY i.income DESC
LIMIT 1;  

--Q4.7 
WITH pop_va AS (
    SELECT year, pop
    FROM population
    WHERE fips = '51'  -- FIPS code for Virginia
    ORDER BY year DESC
    LIMIT 2            -- Limiting to the most recent year and the year 5 years ago
)
SELECT 
    ((MAX(pop) - MIN(pop)) / MIN(pop)) * 100 AS growth_rate
FROM pop_va;
/* prompt: calculate the VA population growth rate in the past five years, modified: calculate the growth rate for each year of VA in the past 5 years*/  

--Q4.8 
/*no, chat gpt does not always produce accurate responses, since it lacks some informatin it will not consistenly have the most accurate output*/ 


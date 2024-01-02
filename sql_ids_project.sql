USE sql_ids_project;

SELECT * FROM international_debt;

SELECT COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

SELECT DISTINCT indicator_name AS distinct_debt_indicators
FROM international_debt
ORDER BY distinct_debt_indicators;

SELECT ROUND((SUM(debt)/1000000),2) AS total_debt
FROM international_debt;

SELECT country_name, SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt DESC
LIMIT 1;

SELECT indicator_code AS debt_indicator, indicator_name, AVG(debt) AS average_debt
FROM international_debt
GROUP BY debt_indicator, indicator_name
ORDER BY average_debt DESC 
LIMIT 10;

SELECT country_name, indicator_name, debt
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
ORDER BY debt DESC
LIMIT 1;

SELECT indicator_name, COUNT(indicator_code) AS indicator_count
FROM international_debt
GROUP BY indicator_code
ORDER BY indicator_count DESC, indicator_code DESC
LIMIT 20;  

SELECT country_name, MAX(debt) AS maximum_debt
FROM international_debt
GROUP BY country_name
ORDER BY maximum_debt
LIMIT 10;

SELECT country_name, SUM(debt)/1000000
FROM international_debt
WHERE country_name = 'China';
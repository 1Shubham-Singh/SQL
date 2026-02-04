/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
SELECT SUM(CT.POPULATION) FROM CITY CT
JOIN COUNTRY CR 
ON CT.COUNTRYCODE = CR.CODE
WHERE CONTINENT = 'ASIA'

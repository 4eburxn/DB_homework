1)
SELECT LastName, FirstName
FROM customers
WHERE City='Prague'

2)
SELECT LastName, FirstName, FirstName LIKE '%ch%' AS has_ch_in_first_name
FROM customers
WHERE FirstName LIKE '%ch%' OR FirstName LIKE 'M%'

3)
SELECT Name, ((Bytes+999999) / 1000000) AS Size_MB 
FROM tracks

4)
SELECT LastName, FirstName FROM employees
WHERE HireDate LIKE '2002%' AND City = 'Calgary'

5)
SELECT LastName, FirstName
FROM employees
WHERE (julianday(HireDate) - julianday(BirthDate)) >= 40*365

6)
SELECT LastName, FirstName
FROM customers
WHERE Fax IS NULL AND Country="USA"

7)
SELECT ShipCity
FROM sales
WHERE ShipCountry='Canada' AND CAST(strftime('%m', SalesDate) as INT) limit 8,9

8)
SELECT Email 
FROM customers
WHERE Email LIKE '%gmail.com'

9)
SELECT LastName, FirstName
FROM employees
WHERE (julianday('now') - julianday(HireDate)) >= 18 * 365

10)
SELECT DISTINCT Title 
FROM employees
ORDER BY Title

11)
SELECT LastName, FirstName, strftime('%Y', date("now",('-' || Age || ' years'))) AS BirthYear
FROM customers
ORDER BY LastName, FirstName

12)
SELECT Milliseconds / 1000 AS MinSong
FROM tracks
ORDER BY MinSong
LIMIT 1

13)
SELECT Name, Milliseconds / 1000 AS MinSong
FROM tracks
ORDER BY MinSong
LIMIT 1

14)
SELECT Country, ROUND( AVG(Age) ) as AvgAge
FROM customers
GROUP BY Country

15)
SELECT LastName 
FROM employees
WHERE CAST(strftime('%m', HireDate) AS INT) = 10

16)
SELECT LastName
FROM employees
ORDER BY -julianday('now') + julianday(HireDate)
LIMIT 1




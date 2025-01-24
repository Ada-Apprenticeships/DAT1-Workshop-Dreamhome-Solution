.open dreamhome.sqlite
.mode column

-- 5.1
SELECT COUNT(*) AS property_count
FROM PROPERTYFORRENT
WHERE staffno = 'SSU15';

-- 5.2
SELECT city, COUNT(*) AS property_count
FROM PROPERTYFORRENT
GROUP BY city
HAVING COUNT(*) > 2;

-- 5.3
SELECT s.staffno, s.fname, s.lname
FROM STAFF s
JOIN PROPERTYFORRENT p ON s.staffno = p.staffno
WHERE p.rent > (SELECT AVG(rent) FROM PROPERTYFORRENT);
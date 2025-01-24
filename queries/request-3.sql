.open dreamhome.sqlite
.mode column

-- 3.1
SELECT ownerno, fname, lname, address, telno, email
FROM PRIVATEOWNER
WHERE fname LIKE 'C%';

-- 3.2
SELECT propertyno, street, city, postcode, rent,
       CASE
           WHEN rent < 500 THEN 'Budget'
           WHEN rent BETWEEN 500 AND 1000 THEN 'Standard'
           ELSE 'Premium'
       END AS category
FROM PROPERTYFORRENT;

-- 3.3
SELECT fname, lname, 'Client' AS type
FROM CLIENT
UNION
SELECT fname, lname, 'Private Owner' AS type
FROM PRIVATEOWNER;
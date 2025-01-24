.open dreamhome.sqlite
.mode column

-- 3.1
SELECT ownerno, fname, lname, address, telno, email
FROM privateowner
WHERE fname LIKE 'C%';

-- 3.2
SELECT 
    propertyno,
    rent,
    CASE 
        WHEN rent < 500 THEN 'Budget'
        WHEN rent BETWEEN 500 AND 1000 THEN 'Standard'
        ELSE 'Premium'
    END AS category
FROM 
    propertyforrent
ORDER BY 
    rent;

-- 3.3
SELECT fname, lname, 'Client' AS type
FROM client
UNION ALL
SELECT fname, lname, 'Owner' AS type
FROM privateowner
ORDER BY lname, fname;
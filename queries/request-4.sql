.open dreamhome.sqlite
.mode column

-- 4.1
SELECT p.propertyno, p.street, p.city, p.postcode, p.rent, o.fname, o.lname
FROM PROPERTYFORRENT p
JOIN PRIVATEOWNER o ON p.ownerno = o.ownerno;

-- 4.2
SELECT propertyno, street, city, postcode, rent
FROM PROPERTYFORRENT
WHERE rent > (SELECT AVG(rent) FROM PROPERTYFORRENT);

-- 4.3
UPDATE PROPERTYFORRENT
SET rent = rent * 1.10
WHERE city = 'London';
.open dreamhome.sqlite
.mode column

-- 4.1
SELECT p.propertyno, p.street, p.city, p.postcode, p.rent, o.fname, o.lname
FROM propertyforrent p
JOIN privateowner o ON p.ownerno = o.ownerno;

-- 4.2
SELECT propertyno, street, city, postcode, rent
FROM propertyforrent
WHERE rent > (SELECT AVG(rent) FROM propertyforrent);

-- 4.3
UPDATE propertyforrent
SET rent = rent * 1.10
WHERE city = 'Manchester';

-- 4.3 Additional, see the change
SELECT p.*
FROM propertyforrent p
WHERE city = 'Manchester'

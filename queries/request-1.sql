.open dreamhome.sqlite
.mode column

-- 1.1
SELECT postcode
FROM propertyforrent;

-- 1.2
SELECT p.propertyno, p.street, p.city, p.postcode, v.viewdate, v.comment
FROM propertyforrent p
LEFT JOIN viewing v ON p.propertyno = v.propertyno;

-- 1.3
SELECT propertyno, street, city, postcode
FROM propertyforrent
WHERE postcode LIKE 'BS1%';
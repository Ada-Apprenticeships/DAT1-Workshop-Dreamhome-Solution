.open dreamhome.sqlite
.mode column

-- 1.1
SELECT postcode
FROM PROPERTYFORRENT;

-- 1.2
SELECT p.propertyno, p.street, p.city, p.postcode, v.viewdate, v.comment
FROM PROPERTYFORRENT p
LEFT JOIN VIEWING v ON p.propertyno = v.propertyno;

-- 1.3
SELECT propertyno, street, city, postcode
FROM PROPERTYFORRENT
WHERE postcode LIKE 'BS1%';
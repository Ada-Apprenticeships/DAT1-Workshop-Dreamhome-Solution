.open dreamhome.sqlite
.mode column

-- 2.1
SELECT propertyno, street, city, postcode
FROM PROPERTYFORRENT
WHERE clientno = 'CL5612';

-- 2.2
SELECT clientno, branchno, datejoined
FROM REGISTRATION
WHERE branchno = 'B052' AND datejoined > '2013-09-28';

-- 2.3
SELECT v.propertyno, v.clientno, v.viewdate, v.comment
FROM VIEWING v
ORDER BY v.viewdate DESC
LIMIT 1;
.open dreamhome.sqlite
.mode column

-- 2.1
SELECT p.*
FROM propertyforrent AS p
JOIN privateowner o ON p.ownerno = o.ownerno
WHERE o.ownerno = 'PO4756';

-- 2.2
SELECT clientno, branchno, datejoined
FROM registration
WHERE branchno = 'B052' AND datejoined > '2013-09-28';

-- 2.3
SELECT v.propertyno, v.clientno, v.viewdate, v.comment
FROM viewing v
ORDER BY v.viewdate DESC
LIMIT 1;
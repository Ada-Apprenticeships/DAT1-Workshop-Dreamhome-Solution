.open dreamhome.sqlite
.mode column

-- 6.1
SELECT DISTINCT city
FROM (
    SELECT city FROM BRANCH
    UNION
    SELECT city FROM PROPERTYFORRENT
);

-- 6.2
CREATE TABLE property_reviews (
    propertyno CHAR(6),
    clientno CHAR(6),
    review_date DATE,
    rating INTEGER,
    comment TEXT
);

-- 6.3
INSERT INTO property_reviews (propertyno, clientno, review_date, rating, comment) VALUES
('PR1423', 'CL7623', '2023-05-15', 4, 'Spacious and well-maintained property. Great location.'),
('PR9478', 'CL5612', '2023-05-16', 5, 'Excellent modern amenities. Highly recommended!'),
('PR4567', 'CL7489', '2023-05-17', 3, 'Decent property, but needs some minor repairs.'),
('PR3689', 'CL6234', '2023-05-18', 4, 'Good value for money. Nice neighborhood.'),
('PR2145', 'CL7712', '2023-05-19', 2, 'Disappointing. Several issues with plumbing and heating.');

-- 6.4
DELETE FROM VIEWING
WHERE viewdate < '2013-06-01';
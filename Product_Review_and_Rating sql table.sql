-- =====================================================
-- PRODUCT REVIEW AND RATING MANAGEMENT SYSTEM
-- =====================================================

-- 1. CREATE REVIEW TABLE

CREATE TABLE Review1 (
    Review_ID NUMBER PRIMARY KEY,
    Rating NUMBER CHECK (Rating BETWEEN 1 AND 5),
    Comment VARCHAR2(255),
    Review_Date DATE,
    Customer_ID NUMBER,
    Product_ID NUMBER
);


-- 2. INSERT REVIEW RECORDS

INSERT INTO Review1 VALUES
(1, 5, 'Excellent product quality', DATE '2026-09-25', 101, 101);

INSERT INTO Review1 VALUES
(2, 4, 'Good product and worth the price', DATE '2026-09-26', 102, 102);

INSERT INTO Review1 VALUES
(3, 5, 'Very good quality and sound', DATE '2026-09-27', 103, 103);

INSERT INTO Review1 VALUES
(4, 3, 'Product is average', DATE '2026-09-28', 104, 104);

INSERT INTO Review1 VALUES
(5, 4, 'Satisfied with the product', DATE '2026-09-29', 105, 105);

COMMIT;


-- 3. CREATE RATING TABLE

CREATE TABLE Rating1 (
    Rating_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Product_ID NUMBER,
    Rating NUMBER CHECK (Rating BETWEEN 1 AND 5),
    Rating_Date DATE
);


-- 4. INSERT RATING RECORDS

INSERT INTO Rating1 VALUES
(1, 101, 101, 5, DATE '2026-09-25');

INSERT INTO Rating1 VALUES
(2, 102, 102, 4, DATE '2026-09-26');

INSERT INTO Rating1 VALUES
(3, 103, 103, 5, DATE '2026-09-27');

INSERT INTO Rating1 VALUES
(4, 104, 104, 3, DATE '2026-09-28');

INSERT INTO Rating1 VALUES
(5, 105, 105, 4, DATE '2026-09-29');

COMMIT;


-- 5. DISPLAY REVIEW DETAILS

SELECT * FROM Review1;


-- 6. DISPLAY RATING DETAILS

SELECT * FROM Rating1;


-- 7. RETRIEVE PRODUCT REVIEW DETAILS

SELECT
    Review_ID,
    Product_ID,
    Customer_ID,
    Rating,
    Comment,
    Review_Date
FROM Review1
ORDER BY Product_ID;


-- 8. RETRIEVE REVIEW DETAILS WITH RATING DATE

SELECT
    R.Review_ID,
    R.Product_ID,
    R.Customer_ID,
    R.Rating,
    R.Comment,
    R.Review_Date,
    RT.Rating_ID,
    RT.Rating_Date
FROM Review1 R
JOIN Rating1 RT
  ON R.Customer_ID = RT.Customer_ID
 AND R.Product_ID = RT.Product_ID
ORDER BY R.Product_ID;


-- 9. CALCULATE AVERAGE PRODUCT RATING

SELECT
    Product_ID,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM Rating1
GROUP BY Product_ID
ORDER BY Product_ID;


-- 10. CALCULATE OVERALL AVERAGE RATING

SELECT ROUND(AVG(Rating), 2) AS Overall_Average_Rating
FROM Rating1;


-- 11. IDENTIFY HIGHLY RATED PRODUCTS (AVERAGE RATING >= 4)

SELECT
    Product_ID,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM Rating1
GROUP BY Product_ID
HAVING AVG(Rating) >= 4
ORDER BY Average_Rating DESC;


-- 12. DISPLAY HIGHLY RATED REVIEWS

SELECT
    Review_ID,
    Product_ID,
    Customer_ID,
    Rating,
    Comment
FROM Review1
WHERE Rating >= 4
ORDER BY Rating DESC;


-- =====================================================
-- END OF PRODUCT REVIEW AND RATING MANAGEMENT SYSTEM
-- =====================================================

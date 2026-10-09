-- =====================================================
-- DBMS - PRODUCT AND CATEGORY MANAGEMENT
-- Oracle SQL Script
-- =====================================================

-- 1. CREATE CATEGORY TABLE

CREATE TABLE Category (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(100) NOT NULL UNIQUE,
    Description VARCHAR2(200)
);


-- 2. CREATE PRODUCT TABLE

CREATE TABLE Product (
    Product_ID NUMBER PRIMARY KEY,
    Product_Name VARCHAR2(100) NOT NULL,
    Brand VARCHAR2(100) NOT NULL,
    Category_ID NUMBER,
    Price NUMBER(10,2) NOT NULL,
    Stock NUMBER NOT NULL,
    Description VARCHAR2(200),
    CONSTRAINT FK_Product_Category
        FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID)
);


-- 3. INSERT CATEGORY RECORDS

INSERT INTO Category VALUES (1, 'Guitars', 'String musical instruments');
INSERT INTO Category VALUES (2, 'Keyboards', 'Electronic keyboard instruments');
INSERT INTO Category VALUES (3, 'Drums', 'Percussion instruments');
INSERT INTO Category VALUES (4, 'Microphones', 'Audio recording microphones');
INSERT INTO Category VALUES (5, 'Amplifiers', 'Sound amplification equipment');


-- 4. INSERT PRODUCT RECORDS

INSERT INTO Product
VALUES (101, 'Yamaha Acoustic Guitar', 'Yamaha', 1, 15999.00, 20,
        'Acoustic guitar for beginners');

INSERT INTO Product
VALUES (102, 'Fender Electric Guitar', 'Fender', 1, 45999.00, 10,
        'Electric guitar');

INSERT INTO Product
VALUES (103, 'Casio Electronic Keyboard', 'Casio', 2, 12999.00, 15,
        '61-key electronic keyboard');

INSERT INTO Product
VALUES (104, 'Pearl Drum Set', 'Pearl', 3, 35999.00, 8,
        'Complete drum set');

INSERT INTO Product
VALUES (105, 'Shure Vocal Microphone', 'Shure', 4, 8999.00, 25,
        'Professional vocal microphone');

COMMIT;


-- 5. DISPLAY CATEGORY RECORDS

SELECT *
FROM Category;


-- 6. DISPLAY PRODUCT RECORDS

SELECT *
FROM Product;


-- 7. UPDATE PRODUCT PRICE
-- Update the price of Product_ID 101

UPDATE Product
SET Price = 16999.00
WHERE Product_ID = 101;

COMMIT;


-- 8. UPDATE PRODUCT STOCK
-- Update the stock of Product_ID 101

UPDATE Product
SET Stock = 25
WHERE Product_ID = 101;

COMMIT;


-- 9. DISPLAY UPDATED PRODUCT RECORD

SELECT *
FROM Product
WHERE Product_ID = 101;


-- 10. PRODUCT DELETION - DELETE PRODUCT_ID 105

DELETE FROM Product
WHERE Product_ID = 105;

COMMIT;


-- 11. PRODUCT DELETION - DELETE PRODUCT_ID 104

DELETE FROM Product
WHERE Product_ID = 104;

COMMIT;


-- 12. CATEGORY-WISE PRODUCT REPORT

SELECT
    C.Category_Name,
    P.Product_Name,
    P.Brand,
    P.Price,
    P.Stock
FROM Category C
JOIN Product P
    ON C.Category_ID = P.Category_ID
ORDER BY C.Category_Name;


-- 13. DISPLAY PRODUCTS IN GUITARS CATEGORY

SELECT
    P.Product_Name,
    P.Brand,
    P.Price,
    P.Stock
FROM Product P
JOIN Category C
    ON P.Category_ID = C.Category_ID
WHERE C.Category_Name = 'Guitars';


-- 14. PRODUCT COUNT BY CATEGORY

SELECT
    C.Category_Name,
    COUNT(P.Product_ID) AS Product_Count
FROM Category C
LEFT JOIN Product P
    ON C.Category_ID = P.Category_ID
GROUP BY C.Category_Name
ORDER BY C.Category_Name;


-- =====================================================
-- END OF PRODUCT AND CATEGORY MANAGEMENT
-- =====================================================

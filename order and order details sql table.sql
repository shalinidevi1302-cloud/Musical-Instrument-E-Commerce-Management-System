-- =====================================================
-- MUSICAL INSTRUMENT E-COMMERCE DATABASE
-- ORDER AND ORDER DETAILS MANAGEMENT
-- =====================================================

-- 1. CREATE ORDERS TABLE

CREATE TABLE Order6 (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE,
    Order_Status VARCHAR2(20),
    Total_Amount NUMBER(10,2)
);


-- 2. INSERT ORDER RECORDS

INSERT INTO Order6
VALUES (1001, 101, DATE '2026-09-20', 'Placed', 2500);

INSERT INTO Order6
VALUES (1002, 102, DATE '2026-09-21', 'Shipped', 4500);

INSERT INTO Order6
VALUES (1003, 103, DATE '2026-09-22', 'Delivered', 3200);

COMMIT;


-- 3. CREATE ORDER_DETAILS TABLE

CREATE TABLE Order_Details6 (
    Order_Detail_ID NUMBER PRIMARY KEY,
    Order_ID NUMBER,
    Product_ID NUMBER,
    Quantity NUMBER NOT NULL,
    Unit_Price NUMBER(10,2),
    Sub_Total NUMBER(10,2),
    CONSTRAINT fk_order6
        FOREIGN KEY (Order_ID)
        REFERENCES Order6(Order_ID)
);


-- 4. INSERT ORDER DETAILS RECORDS

INSERT INTO Order_Details6
VALUES (1, 1001, 501, 2, 1000, 2000);

INSERT INTO Order_Details6
VALUES (2, 1001, 502, 1, 500, 500);

INSERT INTO Order_Details6
VALUES (3, 1002, 503, 3, 1500, 4500);

INSERT INTO Order_Details6
VALUES (4, 1003, 504, 2, 1600, 3200);

COMMIT;


-- 5. DISPLAY ORDERS DETAILS

SELECT *
FROM Order6;


-- 6. DISPLAY ORDER_DETAILS

SELECT *
FROM Order_Details6;


-- 7. ORDER MODIFICATION OPERATIONS
-- 7.1 Modify Order Status
-- (The PDF section labels this as "Modify Order Amount",
--  but the SQL operation modifies Order_Status.)

UPDATE Order6
SET Order_Status = 'Shipped'
WHERE Order_ID = 1001;

COMMIT;


-- 7.2 Modify Order_Details Quantity
-- (The PDF section labels this as "Modify Order Date",
--  but the SQL operation modifies Quantity and Sub_Total.)

UPDATE Order_Details6
SET Quantity = 3,
    Sub_Total = 3000
WHERE Order_Detail_ID = 1;

COMMIT;


-- 8. DISPLAY MODIFIED ORDER DETAILS

SELECT *
FROM Order_Details6
WHERE Order_ID = 1001;


-- 9. DISPLAY MODIFIED ORDER_DETAIL RECORD

SELECT *
FROM Order_Details6
WHERE Order_Detail_ID = 1;


-- 10. CUSTOMER ORDER HISTORY REPORT

SELECT
    o.Customer_ID,
    o.Order_ID,
    o.Order_Date,
    o.Order_Status,
    d.Product_ID,
    d.Quantity,
    d.Unit_Price,
    d.Sub_Total
FROM Order6 o
JOIN Order_Details6 d
ON o.Order_ID = d.Order_ID
ORDER BY o.Customer_ID, o.Order_Date;


-- =====================================================
-- END OF ORDER AND ORDER DETAILS MANAGEMENT
-- =====================================================

 CREATE TABLE Customer13 (
  2      Customer_ID INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  3      First_Name VARCHAR2(50) NOT NULL,
  4      Last_Name VARCHAR2(50) NOT NULL,
  5      Email VARCHAR2(100) UNIQUE NOT NULL,
  6      Phone VARCHAR2(15) NOT NULL,
  7      Password VARCHAR2(100) NOT NULL
  8  );

Table created.

SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Rahul','Sharma','rahul@gmail.com','9876543210','rahul123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Priya','Kumar','priya@gmail.com','9876501234','priya123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Arun','Raj','arun@gmail.com','9123456789','arun123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Sneha','Reddy','sneha@gmail.com','9012345678','sneha123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Karthik','Mohan','karthik@gmail.com','9345678901','karthik123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Divya','Nair','divya@gmail.com','9456789012','divya123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Vijay','Kannan','vijay@gmail.com','9567890123','vijay123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Meena','Lakshmi','meena@gmail.com','9678901234','meena123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Ajith','Ravi','ajith@gmail.com','9789012345','ajith123');

1 row created.

SQL> 
SQL> INSERT INTO Customer13 
  2  (First_Name, Last_Name, Email, Phone, Password)
  3  VALUES
  4  ('Anitha','Suresh','anitha@gmail.com','9890123456','anitha123');

1 row created.

SQL> 
SQL> commit;

Commit complete.

SQL> UPDATE Customer13
  2  SET Phone = '9999999999'
  3  WHERE Customer_ID = 1;

1 row updated.

SQL> UPDATE Customer13
  2  SET Email = 'rahul.sharma@gmail.com'
  3  WHERE Customer_ID = 1;

1 row updated.

SQL> UPDATE Customer13
  2  SET Password = 'newpass123'
  3  WHERE Customer_ID = 2;

1 row updated.

SQL> commit;

Commit complete.

SQL> DELETE FROM Customer13
  2  WHERE Customer_ID = 10;

1 row deleted.

SQL> DELETE FROM Customer13
  2  WHERE Customer_ID = 5;

1 row deleted.

SQL> commit;

Commit complete.

SQL> SELECT * FROM Customer13;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          1 Rahul
Sharma
rahul.sharma@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9999999999
rahul123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          2 Priya
Kumar
priya@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9876501234
newpass123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          3 Arun
Raj
arun@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9123456789
arun123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          4 Sneha
Reddy
sneha@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9012345678
sneha123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          6 Divya
Nair
divya@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9456789012
divya123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          7 Vijay
Kannan
vijay@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9567890123
vijay123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          8 Meena
Lakshmi
meena@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9678901234
meena123


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
          9 Ajith
Ravi
ajith@gmail.com

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
PHONE
---------------
PASSWORD
--------------------------------------------------------------------------------
9789012345
ajith123


8 rows selected.

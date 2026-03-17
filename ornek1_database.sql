create database ornek1;
use ornek1;
create table customers(
customerId int auto_increment primary key,
customerName varchar(50)  ,
contactName varchar(50),
address varchar(50),
city varchar(50),
postalCode varchar (50),
country varchar (50)
);
ALTER TABLE customers
MODIFY postalCode VARCHAR(50) NOT NULL; 

insert into customers (customerName,contactName,address,city,postalCode,country)
values("Alfreds Futterkiste"	,"Maria Anders",	"Obere Str. 57"	,"Berlin",	"12209"	,"Germany");
INSERT INTO customers (customerName,contactName,address,city,postalCode,country) VALUES
("Ana Trujillo Emparedados","Ana Trujillo","Avda. de la Constitución 2222","México D.F.","05021","Mexico");

insert into customers (customerName,contactName,address,city,postalCode,country)
values("Ana Trujillo Emparedados y helados"	,"Ana Trujillo",	"Avda. de la Constitución 2222"	,"México D.F.",	"05021"	,"Mexico");
select * from customers;
			
SELECT customerName, city
FROM customers;

SELECT DISTINCT COUNTRY
FROM CUSTOMERS;

SELECT COUNTRY 
FROM CUSTOMERS;

SELECT  * 
FROM CUSTOMERS
WHERE country = "Mexico";

SELECT count(*)
FROM CUSTOMERS
WHERE country = "Mexico";

SELECT *
FROM CUSTOMERS
WHERE customerId = 50 ;

SELECT * 
FROM CUSTOMERS
WHERE CUSTOMERId >= 50 or customerId <= 20 ;

CREATE TABLE PRODUCTS(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
SupplierID INT,
CategoryID INT,
Unit VARCHAR(50),
Price FLOAT
);
-- Aşağıda oluşturulmuş bir tabloya sonradan veri eklenebilir ya da eklenemez şekilde modifiye edilmiştir.
ALTER TABLE PRODUCTS
MODIFY SupplierID INT NOT NULL,
MODIFY CategoryID INT NOT NULL;

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID, Unit, Price) 
VALUES(1,'Chai',1,1,'10 boxes x 20 bags',18.00);

SELECT * 
FROM PRODUCTS
ORDER BY PRICE ASC;

SELECT * 
FROM PRODUCTS
ORDER BY PRICE DESC; 

SELECT * FROM CUSTOMERS;

SELECT * 
FROM CUSTOMERS
ORDER BY CITY asc, customerName desc;

-- Aşağıdaki SQL sorgusu Customers tablosu Fransa'daki 'F' harfiyle başlayan tüm müşterileri seçer 
SELECT *
FROM CUSTOMERS
WHERE COUNTRY = "France" and contactName LIKE 'F%';

-- Aşağıdaki SQL sorgusu, Ülkesi "Brezilya" olan, Şehri "São Paulo" olan ve CustomerID değeri 50'den küçük olan tüm müşterileri seçer
SELECT *
FROM CUSTOMERS
WHERE COUNTRY = 'Brazil' 
AND CITY = 'São Paulo'
AND customerId <= 50 ; 

-- Aşağıdaki SQL sorgusu, Almanya'daki "B" veya "K" harfiyle başlayan tüm müşterileri seçer
SELECT *
FROM CUSTOMERS
WHERE COUNTRY = 'Germany'
AND(customerName LIKE 'B%' OR customerName LIKE 'K%' ) ;

 -- Aşağıdaki SQL sorgusu, Almanya VEYA İspanya'daki tüm müşterileri seçer
 SELECT *
 FROM CUSTOMERS
 WHERE Country = 'Germany' OR Country = 'Mexico';

-- Aşağıdaki SQL sorgusu, City alanı "Berlin" olan, veya CustomerName alanı "G" harfiyle başlayan, 
-- veya Country alanı "Norveç" olan tüm müşterileri seçer
SELECT * 
FROM CUSTOMERS
WHERE city = 'Berlin' OR customerName LIKE 'G%' OR country = 'Norway';

-- Aşağıdaki SQL sorgusu, İspanya'daki "A" veya "F" harfiyle başlayan tüm müşterileri seçer
SELECT * 
FROM CUSTOMERS
WHERE country = 'Mexico' AND (contactName LIKE 'A%' OR contactName LIKE 'F%');

-- Aşağıdaki SQL sorgusu, Almanya'dan olmayan tüm müşterileri seçer
SELECT *
FROM CUSTOMERS
WHERE NOT country = 'Germany' ;

-- Aşağıdaki SQL sorgusu, adı "A" harfiyle başlamayan tüm müşterileri seçer
SELECT *
FROM CUSTOMERS
WHERE contactName NOT LIKE 'A%';

-- Aşağıdaki SQL sorgusu, CustomerID değeri 10 ile 45 arasında olmayan tüm müşterileri seçer
SELECT * 
FROM CUSTOMERS
WHERE customerID NOT BETWEEN 10 AND 45;

-- Aşağıdaki SQL sorgusu, Ülkesi "München" veya "Torino" olmayan tüm müşterileri seçer
SELECT * 
FROM CUSTOMERS
WHERE city NOT IN ('München', 'Torino');

-- Aşağıdaki SQL sorgusu, CustomerID değeri 50'den büyük olmayan tüm müşterileri seçer
SELECT * 
FROM CUSTOMERS
WHERE NOT customerId > 50 ;

-- Aşağıdaki SQL sorgusu, CustomerID değeri 50'den küçük olmayan tüm müşterileri seçer
SELECT *
FROM CUSTOMERS
WHERE NOT customerId < 50 ;

-- Aşağıdaki SQL sorgusu, "Adres" alanında NULL değeri bulunan tüm müşterileri listeler
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- Aşağıdaki SQL sorgusu, "Adres" alanında bir değer bulunan tüm müşterileri listeler
SELECT CustomerName, ContactName, Address
FROM CUSTOMERS
WHERE address IS NOT NULL;

-- Aşağıdaki SQL sorgusu ıd si 1 olanı güncelliyecek 
UPDATE CUSTOMERS
SET customerName = "Emremsi", contactName = "Emre Erol", 
address = "bilecik mah 897.sok. no:5", city = "Ankara", postalCode = 060660 , country = "Türkiye"
WHERE customerId = 1 ;  

select * from customers
where customerId =1 ;


















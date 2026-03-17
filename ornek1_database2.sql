-- SQL DATA ANALYSIS PRACTICE
-- Author: Emre Erol
-- Database: ornek1

-- Topics Covered:
-- SELECT, WHERE, ORDER BY
-- INSERT, UPDATE, DELETE
-- LIMIT
-- AGGREGATE FUNCTIONS (MIN, MAX, COUNT, SUM, AVG)
-- GROUP BY
use ornek1;
-- Aşağıdaki SQL sorgusu, ülke değeri "Meksika" olan TÜM kayıtların ContactName alanını "Juan" olarak güncelleyecektir
UPDATE customers
SET contactName = "Juan"
where country = "Mexico";

select * from customers;

CREATE TABLE CUSTOMERS2(
CustomerID INT AUTO_INCREMENT PRIMARY KEY,	
CustomerName VARCHAR(50) NOT NULL,
ContactName VARCHAR(50) ,
Address	 VARCHAR(50),
City VARCHAR(50),
PostalCode VARCHAR(50),
Country VARCHAR(50)
);
INSERT INTO customers2 (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
("Alfreds Futterkiste","Maria Anders","Obere Str. 57","Berlin","12209","Germany"),
("Ana Trujillo Emparedados y helados","Ana Trujillo","Avda. de la Constitución 2222","México D.F.","05021","Mexico"),
("Antonio Moreno Taquería","Antonio Moreno","Mataderos 2312","México D.F.","05023","Mexico"),
("Around the Horn","Thomas Hardy","120 Hanover Sq.","London","WA1 1DP","UK"),
("Berglunds snabbköp","Christina Berglund","Berguvsvägen 8","Luleå","S-958 22","Sweden");

-- Aşağıdaki SQL sorgusu, "Customers" tablosundan "Alfreds Futterkiste" adlı müşteriyi siler
DELETE FROM CUSTOMERS2
WHERE CustomerName = "Alfreds Futterkiste"
LIMIT 1;

-- Aşağıdaki SQL kodu, "Customers" tablosunu silmeden, tablodaki TÜM kayıtları siler
-- DELETE FROM CUSTOMERS2 
-- LIMIT 5;

SELECT * FROM CUSTOMERS2;

-- Aşağıdaki SQL sorgusu "Customers" tablosunun tamamını siler
-- DROP TABLE CUSTOMERS2;

-- Müşteriler tablosundan yalnızca ilk 3 kaydı seçin
SELECT * 
FROM CUSTOMERS
LIMIT 3;

-- Aşağıdaki SQL sorgusu, "Customers" tablosundan Ülke değeri "Almanya" olan ilk üç kaydı seçer
SELECT * 
FROM CUSTOMERS
WHERE country = "Germany"
LIMIT 3;

-- Sonucu CustomerName'e göre alfabetik olarak ters sırada sıralayın ve ilk 3 kaydı döndürün
SELECT * 
FROM CUSTOMERS
ORDER BY customerName DESC
LIMIT 3;

-- Ürünler" tablosundaki "Fiyat" sütununda en düşük fiyatı döndürün
SELECT MIN(Price)
FROM PRODUCTS;

-- En küçük 10 değeri küçükten büyüğe sıralamamızı sağlar
SELECT MIN(Price) AS EnKucukDeger
FROM PRODUCTS
GROUP BY Price
LIMIT 10;

-- Burada , Ürünler tablosundaki her kategori için en düşük fiyatı döndürmek üzere 
SELECT MIN(Price) EnKucukDeger,  CategoryID KatagoriDegeri
FROM PRODUCTS
GROUP BY CategoryID ;

-- "Ürünler" tablosundaki "Fiyat" sütununda en yüksek fiyatı döndürün
SELECT MAX(Price)
FROM PRODUCTS;

-- Burada , Ürünler tablosundaki her kategori için en yüksek fiyatı döndürmek üzere
SELECT MAX(Price) AS EnYuksekDegerler, CategoryID
FROM PRODUCTS
GROUP BY CategoryID;

-- Aşağıdaki SQL sorgusu, "ProductName" sütunundaki boş olmayan tüm değerleri sayar
SELECT COUNT(ProductName)
FROM products;

-- Aşağıdaki SQL sorgusu, "Fiyat" sütunundaki benzersiz, boş olmayan değerleri sayar
SELECT COUNT(DISTINCT ProductName) as BenzersizUrunAdi
FROM PRODUCTS;

-- Fiyatı 20'den yüksek olan ürünlerin sayısını bulun
SELECT COUNT(ProductID)
FROM products
WHERE Price > 20;

CREATE TABLE OrderDetails (
OrderDetailID INT auto_increment PRIMARY KEY,
OrderID INT NOT NULL,
ProductID INT,
Quantity INT
);
 
INSERT INTO OrderDetails(OrderID, ProductID, Quantity)
VALUES 
(10250, 41, 10),
(10250, 51, 35),
(10251, 22, 6),
(10251, 57, 15),
(10252, 33, 20),
(10252, 60, 12),
(10253, 18, 25),
(10253, 42, 30),
(10254, 12, 8),
(10254, 65, 16);		
 				
-- Aşağıdaki SQL sorgusu, "OrderDetails" tablosunda ProductID = 11 olan ürünün Quantity alanının toplamını döndürür
SELECT SUM(Quantity) Toplam
FROM OrderDetails
WHERE ProductID = 11 ;

-- Burada , "OrderDetails" tablosundaki HER bir OrderID için Miktarı döndürmek üzere
SELECT OrderID, SUM(Quantity) Toplam
FROM OrderDetails 
GROUP BY OrderID;

-- Tüm ürünlerin ortalama fiyatını bulun
SELECT AVG(Price) Ortalama
FROM products;

-- 1. kategorideki ürünlerin ortalama fiyatını döndürün
SELECT AVG(Price)
FROM Products
WHERE CategoryID = 1;

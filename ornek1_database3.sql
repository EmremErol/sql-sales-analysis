use ornek1;
-- ============================
-- STRING FILTERING (LIKE)
-- ============================

-- Aşağıdaki SQL sorgusu, adı "a" ile başlayan tüm müşterileri seçer
SELECT *
FROM customers
WHERE CustomerName LIKE 'A%';

-- 'On' karakter dizisini içeren bir şehirden tüm müşterileri geri döndürün
SELECT *
FROM customers
WHERE city LIKE '%ON%';

-- Adı 'l' ile başlayan, ardından bir joker karakter, sonra 'nd' ve
-- son olarak iki joker karakter gelen şehirlerden gelen tüm müşterileri döndürün
SELECT *
FROM customers
WHERE city LIKE 'L_ND__';

-- Adı 'La' ile başlayan tüm müşterileri geri döndür
SELECT *
FROM customers
WHERE customerName LIKE 'LA%';

-- Adı 'a' veya 'b' ile başlayan tüm müşterileri listele
SELECT *
FROM customers
WHERE customerName LIKE 'A%' OR customerName LIKE 'B%';

-- Adı 'a' ile biten tüm müşterileri döndür
SELECT *
FROM CUSTOMERS
WHERE customerName LIKE '%A';

-- Adı "b" ile başlayıp "s" ile biten tüm müşterileri geri döndür
SELECT * 
FROM CUSTOMERS
WHERE customerName LIKE 'B%S';

-- 'OR' ifadesini içeren tüm müşterileri geri döndürün
SELECT *
FROM CUSTOMERS
WHERE customerName LIKE '%OR%';

-- "a" harfiyle başlayan ve en az 3 karakter uzunluğunda olan tüm müşterileri döndürün
SELECT *
FROM CUSTOMERS
WHERE customerName LIKE 'A___%';

-- İkinci konumda "r" bulunan tüm müşterileri döndürün
SELECT *
FROM CUSTOMERS
WHERE customerName LIKE '_R%';

-- İspanya'daki tüm müşteriler geri dönsün
SELECT *
FROM CUSTOMERS
WHERE country LIKE 'spain';

-- ============================
-- IN / NOT IN
-- ============================

-- Aşağıdaki SQL sorgusu, Almanya, Fransa veya Birleşik Krallık'tan tüm müşterileri seçmektedir
SELECT * 
FROM CUSTOMERS
WHERE Country IN ('Germany', 'France', 'UK');

-- Aşağıdaki SQL sorgusu, Almanya, Fransa veya Birleşik Krallık'tan 
-- tüm müşterileri seçmek için birden fazla koşul kullanır (aynı sonuç, ancak daha uzun kod)
SELECT * 
FROM CUSTOMERS
WHERE Country = 'Germany' OR Country = 'France' OR Country = 'UK' ;

-- 'Almanya', 'Fransa' veya 'Birleşik Krallık'tan olmayan tüm müşterileri iade edin
SELECT *
FROM CUSTOMERS
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- ============================
-- BETWEEN
-- ============================

-- Fiyatı 10 ile 20 arasında olan tüm ürünleri seçin
SELECT *
FROM PRODUCTS
WHERE Price BETWEEN 10 AND 20;

-- Aşağıdaki SQL sorgusu, fiyatı 10 ile 20 arasında olmayan tüm ürünleri döndürür
SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- Aşağıdaki SQL sorgusu, fiyatı 10 ile 20 arasında olan tüm ürünleri döndürür.
-- Ayrıca, CategoryID değeri 1, 2 veya 3 olmalıdır
SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20 
AND CategoryID IN (1,2,3);

-- Aşağıdaki SQL sorgusu, ProductName'i alfabetik olarak 'Geitost' ile 'Louisiana Hot Spiced Okra' 
-- arasında olan tüm ürünleri seçer
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY ProductName;

-- ============================
-- CONCAT (STRING FUNCTIONS)
-- ===========================

-- Aşağıdaki SQL sorgusu, dört sütunu (Adres, Posta Kodu, Şehir ve Ülke) birleştiren "Adres" adında bir takma ad oluşturur
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;


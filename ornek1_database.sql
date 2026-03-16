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
("Ana Trujillo Emparedados","Ana Trujillo","Avda. de la Constitución 2222","México D.F.","05021","Mexico"),
("Antonio Moreno Taquería","Antonio Moreno","Mataderos 2312","México D.F.","05023","Mexico"),
("Around the Horn","Thomas Hardy","120 Hanover Sq.","London","WA1 1DP","UK"),
("Berglunds snabbköp","Christina Berglund","Berguvsvägen 8","Luleå","S-95822","Sweden"),
("Blauer See Delikatessen","Hanna Moos","Forsterstr. 57","Mannheim","68306","Germany"),
("Blondel père et fils","Frédérique Citeaux","24 place Kléber","Strasbourg","67000","France"),
("Bólido Comidas preparadas","Martín Sommer","C/ Araquil 67","Madrid","28023","Spain"),
("Bon app'","Laurence Lebihan","12 rue des Bouchers","Marseille","13008","France"),
("Bottom-Dollar Marketse","Elizabeth Lincoln","23 Tsawassen Blvd.","Tsawassen","T2F 8M4","Canada"),
("Cactus Comidas para llevar","Patricio Simpson","Cerrito 333","Buenos Aires","1010","Argentina"),
("Centro comercial Moctezuma","Francisco Chang","Sierras de Granada 9993","México D.F.","05022","Mexico"),
("Chop-suey Chinese","Yang Wang","Hauptstr. 29","Bern","3012","Switzerland"),
("Comércio Mineiro","Pedro Afonso","Av. dos Lusíadas 23","São Paulo","05432-043","Brazil"),
("Consolidated Holdings","Elizabeth Brown","Berkeley Gardens 12","London","WX1 6LT","UK"),
("Drachenblut Delikatessen","Peter Franken","Walserweg 21","Aachen","52066","Germany"),
("Du monde entier","Janine Labrune","67 rue des Cinquante Otages","Nantes","44000","France"),
("Eastern Connection","Ann Devon","35 King George","London","WX3 6FW","UK"),
("Ernst Handel","Roland Mendel","Kirchgasse 6","Graz","8010","Austria"),
("Familia Arquibaldo","Arnaldo Arquibaldo","Rua Orós 92","São Paulo","05442-030","Brazil"),
("FISSA Fabrica Inter. Salchichas","Diego Roel","C/ Moralzarzal 86","Madrid","28034","Spain"),
("Folies gourmandes","Martine Rancé","184 chaussée de Tournai","Lille","59000","France"),
("Folk och fä HB","Maria Larsson","Åkergatan 24","Bräcke","S-84467","Sweden"),
("Frankenversand","Peter Franken","Berliner Platz 43","München","80805","Germany"),
("France restauration","Carine Schmitt","54 rue Royale","Nantes","44000","France"),
("Franchi S.p.A.","Paolo Accorti","Via Monte Bianco 34","Torino","10100","Italy"),
("Furia Bacalhau e Frutos do Mar","Lino Rodriguez","Jardim das rosas 32","Lisboa","1675","Portugal"),
("Galería del gastrónomo","Eduardo Saavedra","Rambla de Cataluña 23","Barcelona","08022","Spain"),
("Godos Cocina Típica","José Pedro Freyre","C/ Romero 33","Sevilla","41101","Spain"),
("Gourmet Lanchonetes","Andre Fonseca","Av. Brasil 442","Campinas","04876-786","Brazil"),
("Great Lakes Food Market","Howard Snyder","2732 Baker Blvd.","Eugene","97403","USA"),
("GROSELLA-Restaurante","Manuel Pereira","5ª Avenida Los Palos","Caracas","1081","Venezuela"),
("Hanari Carnes","Yoshi Nagase","Rua do Paço 67","Rio de Janeiro","05454-876","Brazil"),
("HILARIÓN-Abastos","Carlos Hernández","Carrera 22","San Cristóbal","5022","Venezuela"),
("Hungry Coyote Import Store","Patricia McKenna","City Center Plaza","Elgin","97827","USA"),
("Hungry Owl All-Night Grocers","Helena Brody","8 Johnstown Road","Cork","T23","Ireland"),
("Island Trading","Helen Bennett","Garden House Crowther Way","Cowes","PO31 7PJ","UK"),
("Königlich Essen","Philip Cramer","Maubelstr. 90","Brandenburg","14776","Germany"),
("La corne d'abondance","Daniel Tonini","67 avenue de l'Europe","Versailles","78000","France"),
("La maison d'Asie","Annette Roulet","1 rue Alsace","Toulouse","31000","France"),
("Laughing Bacchus Wine Cellars","Yoshi Tannamuri","1900 Oak St.","Vancouver","V3F 2K1","Canada"),
("Lazy K Kountry Store","John Steel","12 Orchestra Terrace","Walla Walla","99362","USA"),
("Lehmanns Marktstand","Renate Messner","Magazinweg 7","Frankfurt","60528","Germany"),
("Let's Stop N Shop","Jaime Yorres","87 Polk St.","San Francisco","94117","USA"),
("LILA-Supermercado","Carlos Gonzalez","Carrera 52","Barquisimeto","3508","Venezuela"),
("LINO-Delicateses","Miguel Sanchez","Ave. 5 de Mayo","I. de Margarita","4980","Venezuela"),
("Lonesome Pine Restaurant","Fran Wilson","89 Chiaroscuro Rd.","Portland","97219","USA"),
("Magazzini Alimentari Riuniti","Giovanni Rovelli","Via Ludovico il Moro 22","Bergamo","24100","Italy"),
("Maison Dewey","Catherine Dewey","Rue Joseph-Bens 532","Bruxelles","B-1180","Belgium"),
("Mère Paillarde","Jean Fresnière","43 rue St. Laurent","Montréal","H1J 1C3","Canada"),
("Morgenstern Gesundkost","Alexander Feuer","Heerstr. 22","Leipzig","04179","Germany"),
("North/South","Simon Crowther","South House 300 Queensbridge","London","SW7 1RZ","UK");

insert into customers (customerName,contactName,address,city,postalCode,country)
values("Ana Trujillo Emparedados y helados"	,"Ana Trujillo",	"Avda. de la Constitución 2222"	,"México D.F.",	"05021"	,"Mexico"),
("Antonio Moreno Taquería","Antonio Moreno","Mataderos 2312","México D.F.",	"05023"	,"Mexico"),
("Around the Horn","Thomas Hardy","120 Hanover Sq."	,"London","WA1 1DP","UK"),
("Berglunds snabbköp","Christina Berglund","Berguvsvägen 8","Luleå","S-958 22","Sweden"),
("Blauer See Delikatessen","Hanna Moos","Forsterstr. 57","Mannheim","68306","Germany");
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

INSERT INTO PRODUCTS (ProductID, ProductName, SupplierID, CategoryID, Unit, Price) VALUES
(1,'Chai',1,1,'10 boxes x 20 bags',18.00),
(2,'Chang',1,1,'24 - 12 oz bottles',19.00),
(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10.00),
(4,'Chef Anton Gumbo Mix',2,2,'36 boxes',21.35),
(5,'Chef Anton Cajun Seasoning',2,2,'48 jars',22.00),
(6,'Grandma Boysenberry Spread',3,2,'12 jars',25.00),
(7,'Uncle Bob Organic Dried Pears',3,7,'12 bags',30.00),
(8,'Northwoods Cranberry Sauce',3,2,'12 jars',40.00),
(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs',97.00),
(10,'Ikura',4,8,'12 - 200 ml jars',31.00),
(11,'Queso Cabrales',5,4,'1 kg pkg',21.00),
(12,'Queso Manchego',5,4,'10 - 500 g pkgs',38.00),
(13,'Konbu',6,8,'2 kg box',6.00),
(14,'Tofu',6,7,'40 - 100 g pkgs',23.25),
(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.50),
(16,'Pavlova',7,3,'32 - 500 g boxes',17.45),
(17,'Alice Mutton',7,6,'20 - 1 kg tins',39.00),
(18,'Carnarvon Tigers',7,8,'16 kg pkg',62.50),
(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.20),
(20,'Sir Rodney Marmalade',8,3,'30 gift boxes',81.00),
(21,'Sir Rodney Scones',8,3,'24 pkgs',10.00),
(22,'Gustaf Knäckebröd',9,5,'24 pkgs',21.00),
(23,'Tunnbröd',9,5,'12 pkgs',9.00),
(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',4.50),
(25,'NuNuCa Chocolate',10,3,'20 bars',14.00),
(26,'Gumbär Gummibärchen',11,3,'100 bags',31.23),
(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.90),
(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.60),
(29,'Thüringer Rostbratwurst',12,6,'50 bags',123.79),
(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89),
(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.50),
(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs',32.00),
(33,'Geitost',15,4,'500 g',2.50),
(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.00),
(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18.00),
(36,'Inlagd Sill',17,8,'24 jars',19.00),
(37,'Gravad lax',17,8,'12 - 500 g pkgs',26.00),
(38,'Côte de Blaye',18,1,'12 bottles',263.50),
(39,'Chartreuse verte',18,1,'750 cc bottle',18.00),
(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.40),
(41,'Jack Newkirk Blueberry',19,2,'12 jars',9.65),
(42,'Singaporean Hokkien',20,5,'32 boxes',14.00),
(43,'Ipoh Coffee',20,1,'16 tins',46.00),
(44,'Gula Malacca',20,2,'20 bags',19.45),
(45,'Røgede sild',21,8,'1 kg pkg',9.50),
(46,'Spegesild',21,8,'4 - 450 g glasses',12.00),
(47,'Zaanse koeken',22,3,'10 boxes',9.50),
(48,'Chocolade',22,3,'10 pkgs',12.75),
(49,'Maxilaku',23,3,'24 - 50 g pkgs',20.00),
(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25);

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



















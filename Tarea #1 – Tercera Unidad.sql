USE Northwind;

/*EJERCICIO 1 - VISTAS*/
CREATE VIEW ReportsTo AS
SELECT EmployeeID, FirstName, LastName from employees
where ReportsTo IS NOT NULL;

SELECT * FROM Orders;

CREATE VIEW InfoProductos AS
SELECT p.ProductID, s.CompanyName, p.ProductName, c.CategoryName, c.Description, p.QuantityPerUnit, p.UnitPrice, p.UnitsInStock, p.UnitsOnOrder, p.ReorderLevel, p.Discontinued  FROM Products p
INNER JOIN Categories c on p.CategoryID = c.CategoryID
INNER JOIN Suppliers s on p.SupplierID = s.SupplierID;

CREATE VIEW InfoCustomer AS
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.ContactTitle, c.Address, c.City, c.Country, c.Phone, o.OrderDate, o.RequiredDate, o.ShippedDate FROM Customers c 
INNER JOIN Orders o on c.CustomerID = o.CustomerID;

ALTER VIEW InfoCustomer AS
SELECT c.CustomerID, c.CompanyName, c.ContactName, c.Address, c.City, c.Country, c.Phone, o.OrderDate, o.RequiredDate, o.ShippedDate FROM Customers c 
INNER JOIN Orders o on c.CustomerID = o.CustomerID;

DROP VIEW InfoCustomer;


/*EJERCICIO 2 - PROCEDIMIENTOS ALMACENADOS*/

CREATE PROCEDURE OrderEmployee AS
SELECT * FROM Orders WHERE EmployeeID = 5 and YEAR(ORDERDATE) = '1996';
Execute OrderEmployee;


CREATE PROCEDURE CustomerCity @ciudad Nvarchar(25)
AS
SELECT * FROM Customers WHERE City = @ciudad
EXECUTE CustomerCity @ciudad = 'London';

CREATE PROCEDURE BirthDate @month varchar(3)
AS
SELECT * FROM Employees WHERE CONVERT(date, BirthDate) like '%_' + @month +'_%'
EXECUTE BirthDate @month = '01';

CREATE PROCEDURE OrderDate @fecha varchar(15) 
AS
SELECT * FROM Orders where CONVERT(DATE, OrderDate) = @fecha
EXECUTE OrderDate @fecha = '1996-07-08';

CREATE PROCEDURE UPDATEPHONE @customer nchar(5), @newPhone nvarchar(24) 
AS
UPDATE Customers SET Phone = @newPhone where CustomerID = @customer
EXECUTE UPDATEPHONE @customer = ALFKI, @newPhone = '9845-6380';

SELECT * FROM customers;

ALFKI 030-0074321
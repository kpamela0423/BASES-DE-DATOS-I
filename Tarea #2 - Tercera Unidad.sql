USE Northwind;

/*TRIGGERS*/
alter table territories alter column TerritoryDescription varchar(100);
alter table CustomerDemographics alter column CustomerDesc varchar(100);


CREATE TRIGGER tr_Territories 
on Territories 
after insert, update 
as
begin
	UPDATE Territories SET TerritoryDescription = inserted.TerritoryDescription + '_try' FROM Territories
	inner join inserted on Territories.TerritoryID = inserted.TerritoryID
end

INSERT INTO Territories VALUES('01235', 'Prueba', '1');
SELECT * FROM Territories;

---INCISO B
SELECT * FROM CustomerDemographics;

CREATE TRIGGER tr_customer
ON CustomerDemographics
after insert, update 
as
begin
	UPDATE CustomerDemographics  SET CustomerDesc = i.CustomerDesc*0.25+150
	FROM CustomerDemographics cd
	INNER JOIN inserted i on cd.CustomerTypeID = i.CustomerTypeID
end


---INCISO C
CREATE TRIGGER tr_customerDeleted
on CustomerDemographics
after DELETE
AS 
BEGIN
	PRINT('registro eliminado')
	SELECT * FROM deleted

END

/*FUNCIONES*/
SELECT * FROM Employees;

CREATE FUNCTION hire_date(@fecha varchar(15))
returns table
AS
RETURN(SELECT * FROM Employees WHERE CONVERT(date, HireDate) = @fecha)

SELECT * from hire_date('1948-12-08');

---INCISO B
SELECT * FROM products;

CREATE FUNCTION UnitPrice_des(@id int)
returns decimal(5,2) 
AS
BEGIN
	DECLARE @des decimal(5,2)
	SELECT @des = UnitPrice*0.90 from products where ProductID = @id
	RETURN @des
END

---INCISO C
CREATE FUNCTION fn_Details(@id_order int)
RETURNS TABLE
AS
RETURN (SELECT p.ProductName, od.UnitPrice, od.Quantity, OrderDate, CustomerID FROM Orders 
INNER JOIN [Order Details] od ON Orders.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE orders.OrderID = @id_order )

SELECT * FROM dbo.fn_Details(10248)

---INCISO D
ALTER FUNCTION fn_mesEmployee(@fecha_nac datetime)
RETURNS varchar(15)
as
begin
	DECLARE @MES int, @mes_texto varchar(10)
	SET @MES = MONTH(@fecha_nac)
	SELECT 
	@mes_texto = CASE @MES
		WHEN 12 THEN 'DICIEMBRE'
		ELSE ''
	END;
	RETURN @mes_texto
	
end

SELECT DBO.fn_mesEmployee('1948-12-08')

--INCISO E
CREATE FUNCTION Cliente(@codigo nchar(5))
returns table 
as return (SELECT TOP 1000 COUNT(*) as Total, orderID, ORDERDATE FROM Orders WHERE CustomerID = 'HANAR' GROUP BY OrderDate, OrderID ORDER BY OrderDate, OrderID DESC )

SELECT * FROM Cliente('ANTON');

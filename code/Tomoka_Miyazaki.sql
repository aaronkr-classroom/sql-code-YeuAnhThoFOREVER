CREATE TABLE Customers(
	CustomerID int PRIMARY KEY,
	CustomerName varchar(255)
	ContactNumber varchar(20)
);
CREATE TABLE Products(
	ProductID int primary key,
	ProductName varchar(255),
	Price decimal(10,2)
);
CREATE TABLE Orders(
	OrderID int primary key,
	CustomerID int,
	OrderDate DATE,
	FOREIGN KEY (CustomID) REFERENCES Customers(CustomerID)
	);
CREATE TABLE OrderDetails (
	OrderDetailID int primary key,
	OrderID int,
	ProductID int,
	Quantity int,
	FOREIGN key (OrderID) REFERENCES Orders(OrderID),
	FOREIGN key (ProductID) REFERENCES Products(ProductID)
	);

--Inner Join--
Select customers.customerName, Orders.OrderID, Orders.Orderate
From Customers
Inner join Orders ON Customers.CustomerID = Orders.CustomerID;

--Left Join--
Select Orders.OrderID, Products.ProductName, Orderdetails.Quantity
From Orders
Left join OrderDetails On Orders.OrderId = Orderdetals.OrderID
Left join Products On Orderdetails.ProducID = Products.ProductID;

--Right Join--
Select Products.Productname, Orderdetails.Quantity
From Products
Right join OrderDetails on Products.ProductID = Orderdetails.ProductID;

--Selec all customers--
Select * from Customers;

--Select specific data
Select ProductName, Price from Products Where Price > 80;

--Aggregate data with Count--
Select CustomerID, Count(OrderID) as TotalOrders
From Orders
Group by CustomerID;
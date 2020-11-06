-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

  SELECT p.ProductName AND c.CategoryName 
  FROM product as p
  JOIN category as c ON p.CategoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
  SELECT o.id AND s.CompanyName
  FROM [order] as o
  JOIN shipper as ON o.shipVIA = s.id
  WHERE o.orderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
  SELECT p.ProductName, od.Quantity FROM OrderDetail as od
  JOIN Product as p ON od.ProductId = p.Id
  WHERE OrderId = 10251
  ORDER BY p.ProductName asc;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
  SELECT o.Id as 'OrderID', c.CompanyName as "Customer's Company Name", e.LastName as "Employee's LastName"
  FROM [order] as o
  JOIN Customer as c ON o.CustomerId = c.Id
  JOIN Employee as e ON o.EmployeeId = e.Id
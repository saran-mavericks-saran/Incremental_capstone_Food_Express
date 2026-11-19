----CREATE DATABASE FoodExpressDB;
--USE FoodExpressDB;

---- 1. Customer Table
--CREATE TABLE Customer (
--    CustomerID INT IDENTITY PRIMARY KEY,
--    FirstName VARCHAR(50) NOT NULL,
--    LastName VARCHAR(50) NOT NULL,
--    Phone VARCHAR(20) NOT NULL UNIQUE,
--    Address VARCHAR(200) NOT NULL
--);

---- 2. Restaurant Table
--CREATE TABLE Restaurant (
--    RestaurantID INT IDENTITY PRIMARY KEY,
--    Name VARCHAR(100) NOT NULL,
--    Cuisine VARCHAR(50) NOT NULL,
--    City VARCHAR(50) NOT NULL,
--    CapacityPerHour INT NOT NULL CHECK (CapacityPerHour > 0)
--);

---- 3. MenuItem Table
--CREATE TABLE MenuItem (
--    ItemID INT IDENTITY PRIMARY KEY,
--    RestaurantID INT NOT NULL,
--    ItemName VARCHAR(100) NOT NULL,
--    Price DECIMAL(10, 2) NOT NULL CHECK (Price >= 0),
--    CONSTRAINT fk_menuitem_restaurant FOREIGN KEY (RestaurantID) 
--        REFERENCES Restaurant(RestaurantID) ON DELETE CASCADE
--);

---- 4. Rider Table
--CREATE TABLE Rider (
--    RiderID INT IDENTITY PRIMARY KEY,
--    FirstName VARCHAR(50) NOT NULL,
--    LastName VARCHAR(50) NOT NULL,
--    VehicleType VARCHAR(20) NOT NULL,
--    Status VARCHAR(20) NOT NULL DEFAULT 'Offline'
--);

---- 5. Order Table
--CREATE TABLE Orders (
--    OrderID INT IDENTITY PRIMARY KEY,
--    CustomerID INT NOT NULL,
--    RestaurantID INT NOT NULL,
--    RiderID INT NULL,
--    OrderDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
--    Status VARCHAR(20) NOT NULL DEFAULT 'Placed',
--    TotalAmount DECIMAL(10, 2) NOT NULL CHECK (TotalAmount >= 0),
--    CONSTRAINT fk_order_customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
--    CONSTRAINT fk_order_restaurant FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID),
--    CONSTRAINT fk_order_rider FOREIGN KEY (RiderID) REFERENCES Rider(RiderID)
--);

---- 6. OrderItem Table
--CREATE TABLE OrderItem (
--    OrderItemID INT IDENTITY PRIMARY KEY,
--    OrderID INT NOT NULL,
--    ItemID INT NOT NULL,
--    Quantity INT NOT NULL CHECK (Quantity > 0),
--    CONSTRAINT fk_orderitem_order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
--    CONSTRAINT fk_orderitem_menuitem FOREIGN KEY (ItemID) REFERENCES MenuItem(ItemID)
--);

----use FoodExpressDB;

---- 1. Insert 10 Customers
--INSERT INTO Customer (FirstName, LastName, Phone, Address) VALUES
--('Aarav', 'Sharma', '9876543210', '12 MG Road, Bengaluru'),
--('Priya', 'Patel', '9876543211', '45 Park Street, Kolkata'),
--('Rohan', 'Verma', '9876543212', '78 Anna Salai, Chennai'),
--('Ananya', 'Nair', '9876543213', '23 Marine Drive, Mumbai'),
--('Vikram', 'Reddy', '9876543214', '90 Banjara Hills, Hyderabad'),
--('Sneha', 'Gupta', '9876543215', '14 Connaught Place, Delhi'),
--('Karthik', 'Iyer', '9876543216', '56 Koregaon Park, Pune'),
--('Meera', 'Joshi', '9876543217', '33 FC Road, Pune'),
--('Arjun', 'Menon', '9876543218', '81 Indiranagar, Bengaluru'),
--('Divya', 'Kulkarni', '9876543219', '19 Jubilee Hills, Hyderabad');

---- 2. Insert 10 Restaurants
--INSERT INTO Restaurant (Name, Cuisine, City, CapacityPerHour) VALUES
--('Spice Route', 'North Indian', 'Bengaluru', 40),
--('Dosa Plaza', 'South Indian', 'Chennai', 50),
--('Pasta Street', 'Italian', 'Mumbai', 30),
--('Wok & Roll', 'Chinese', 'Delhi', 35),
--('Biryani Blues', 'Hyderabadi', 'Hyderabad', 60),
--('Burger Barn', 'American', 'Pune', 45),
--('Taco Fiesta', 'Mexican', 'Bengaluru', 25),
--('Sushi Zen', 'Japanese', 'Mumbai', 20),
--('Curry Leaf', 'Coastal', 'Kolkata', 30),
--('Pizza Craft', 'Italian', 'Hyderabad', 40);

---- 3. Insert 10 MenuItems
--INSERT INTO MenuItem (RestaurantID, ItemName, Price) VALUES
--(1, 'Paneer Butter Masala', 280.00),
--(2, 'Masala Dosa', 120.00),
--(3, 'Penne Arrabbiata', 340.00),
--(4, 'Veg Hakka Noodles', 220.00),
--(5, 'Chicken Dum Biryani', 360.00),
--(6, 'Classic Cheese Burger', 250.00),
--(7, 'Crispy Bean Tacos', 210.00),
--(8, 'California Roll', 450.00),
--(9, 'Fish Curry Meal', 390.00),
--(10, 'Margherita Pizza', 320.00);

---- 4. Insert 10 Riders
--INSERT INTO Rider (FirstName, LastName, VehicleType, Status) VALUES
--('Suresh', 'Kumar', 'Bike', 'AVAILABLE'),
--('Ramesh', 'Yadav', 'Scooter', 'AVAILABLE'),
--('Manoj', 'Tiwari', 'Bike', 'BUSY'),
--('Deepak', 'Singh', 'Bicycle', 'AVAILABLE'),
--('Kiran', 'Rao', 'Scooter', 'Offline'),
--('Vijay', 'Das', 'Bike', 'AVAILABLE'),
--('Sanjay', 'Mishra', 'Bike', 'BUSY'),
--('Prakash', 'Jain', 'Scooter', 'AVAILABLE'),
--('Nitin', 'Chavan', 'Bike', 'Offline'),
--('Harish', 'Gowda', 'Scooter', 'AVAILABLE');

---- 5. Insert 20 Orders
--INSERT INTO Orders (CustomerID, RestaurantID, RiderID, OrderDate, Status, TotalAmount) VALUES
--(1, 1, 1, DATEADD(DAY, -2, GETDATE()), 'Delivered', 560.00),
--(2, 2, 2, DATEADD(DAY, -2, GETDATE()), 'Delivered', 240.00),
--(3, 3, 3, DATEADD(DAY, -1, GETDATE()), 'InTransit', 680.00),
--(4, 4, 4, DATEADD(DAY, -1, GETDATE()), 'Delivered', 440.00),
--(5, 5, 6, DATEADD(HOUR, -5, GETDATE()), 'Delivered', 720.00),
--(6, 6, 7, DATEADD(HOUR, -4, GETDATE()), 'Preparing', 500.00),
--(7, 7, 8, DATEADD(HOUR, -3, GETDATE()), 'Delivered', 420.00),
--(8, 8, 10, DATEADD(HOUR, -2, GETDATE()), 'Delivered', 900.00),
--(9, 9, 1, DATEADD(HOUR, -1, GETDATE()), 'Placed', 780.00),
--(10, 10, 2, DATEADD(MINUTE, -30, GETDATE()), 'Placed', 640.00),
--(1, 5, 4, DATEADD(DAY, -3, GETDATE()), 'Delivered', 360.00),
--(2, 1, 6, DATEADD(DAY, -3, GETDATE()), 'Delivered', 560.00),
--(3, 2, 8, DATEADD(DAY, -4, GETDATE()), 'Delivered', 360.00),
--(4, 3, 10, DATEADD(DAY, -4, GETDATE()), 'Delivered', 340.00),
--(5, 4, 1, DATEADD(DAY, -5, GETDATE()), 'Delivered', 440.00),
--(6, 7, 2, DATEADD(DAY, -5, GETDATE()), 'Delivered', 210.00),
--(7, 8, 4, DATEADD(DAY, -6, GETDATE()), 'Delivered', 450.00),
--(8, 9, 6, DATEADD(DAY, -6, GETDATE()), 'Delivered', 390.00),
--(9, 10, 8, DATEADD(DAY, -7, GETDATE()), 'Delivered', 640.00),
--(10, 6, 10, DATEADD(DAY, -7, GETDATE()), 'Delivered', 500.00);




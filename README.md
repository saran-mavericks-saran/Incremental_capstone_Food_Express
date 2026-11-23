FoodExpress – Sprint 1: Database Setup (FoodExpressDB)

This repository contains the Sprint 1 database deliverables for FoodExpress (Urban Bite Technologies), including the Entity-Relationship (ER) diagram, SQL Server DDL scripts, sample seed data, and schema constraint verification scripts.

Repository Structure

FoodExpress/
├── sql/
│   ├── 01_create_database.sql   # Creates FoodExpressDB
│   ├── 02_create_tables.sql     # Creates all 6 normalized tables with PKs, FKs, and constraints
│   ├── 03_seed_data.sql         # Inserts 10+ sample rows per table and 200 rows in OrderItem
│   └── 04_verify_schema.sql     # Validates row counts and tests UNIQUE, CHECK, DEFAULT, and FK rules
├── docs/
│   └── FoodExpressDB_ERD.drawio # ER diagram showing all 6 entities and relationships
└── README.md


Database Schema Overview

FoodExpressDB consists of 6 normalized tables with enforced referential integrity:

Customer (CustomerID PK, FirstName, LastName, Phone UNIQUE, Address)

Restaurant (RestaurantID PK, Name, Cuisine, City, CapacityPerHour > 0)

MenuItem (ItemID PK, RestaurantID FK, ItemName, Price >= 0)

Rider (RiderID PK, FirstName, LastName, VehicleType, Status DEFAULT 'Offline')

[Order] (OrderID PK, CustomerID FK, RestaurantID FK, RiderID FK, OrderDate, Status DEFAULT 'Placed', TotalAmount >= 0)

OrderItem (OrderItemID PK, OrderID FK, ItemID FK, Quantity > 0)

Setup & Execution Steps (SQL Server)

Open SQL Server Management Studio (SSMS) and connect to your local SQL Server instance.

Create the Database: Open and execute sql/01_create_database.sql.

Create the Tables: Open and execute sql/02_create_tables.sql against FoodExpressDB.

Insert Sample Data: Open and execute sql/03_seed_data.sql to populate 10 customers, 10 restaurants, 10 menu items, 10 riders, 20 orders, and 200 order items.

Verify Constraints: Run sql/04_verify_schema.sql to confirm table row counts and verify that valid defaults succeed while invalid UNIQUE, CHECK, and FOREIGN KEY inserts are rejected.

ER Diagram

The editable ER diagram (docs/FoodExpressDB_ERD.drawio) can be opened and viewed using draw.io.

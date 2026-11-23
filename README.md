FoodExpress – Food Delivery Platform (Sprint 1: Database)

FoodExpress is a food delivery marketplace developed for Urban Bite Technologies to connect local restaurants, delivery riders, and customers. This repository contains the Sprint 1 database deliverables for FoodExpressDB, built using SQL Server.

Overview

The database is designed in Third Normal Form (3NF) to manage customer profiles, restaurant menus, rider availability, and end-to-end order tracking while enforcing strict data integrity through primary keys, foreign keys, CHECK constraints, UNIQUE constraints, and default values.

Entities & Relationships

Customer: Stores customer contact details and delivery addresses (Phone is unique).

Restaurant: Stores restaurant details, cuisine types, city, and hourly order capacity (CapacityPerHour > 0).

MenuItem: Links menu items and pricing (Price >= 0) to a specific restaurant (Many-to-One with Restaurant).

Rider: Tracks delivery riders, vehicle types, and availability status (defaults to 'Offline').

Orders: Records customer orders, assigned restaurant, assigned rider, order timestamp, status (defaults to 'Placed'), and total amount (TotalAmount >= 0).

OrderItem: Stores individual line items and quantities (Quantity > 0) for each order (Many-to-One with Orders and MenuItem).

Setup & Execution Instructions

Create the Database:
Connect to your SQL Server instance in SQL Server Management Studio (SSMS) and create the FoodExpressDB database.

Create Tables & Constraints:
Select FoodExpressDB and execute the DDL script to create all six tables along with their primary keys, foreign keys, default values, and CHECK constraints.

Load Sample Data:
Execute the seed script to populate the database with initial test data:

10 Customers

10 Restaurants

10 Menu Items

10 Riders

20 Orders

200 Order Items

Verify Schema Integrity:
Run the verification script to confirm accurate row counts across all tables and validate that default values apply properly while invalid UNIQUE, CHECK, and FOREIGN KEY entries are rejected.

Entity-Relationship (ER) Diagram

The ER diagram illustrating all six entities, attributes, keys, and Many-to-One relationships was created using draw.io and is included in the repository for reference.
<img width="896" height="287" alt="image" src="https://github.com/user-attachments/assets/bf6d8d07-4b89-4737-b233-595d49f12ea9" />



# Customers Database with Triggers and Stored Procedures

This repository contains SQL scripts for managing a customers database, showcasing the use of triggers and stored procedures to ensure data integrity and automate tasks.

## Table of Contents

- [Introduction](#introduction)
- [Database Schema](#database-schema)
- [Stored Procedures](#stored-procedures)
- [Triggers](#triggers)
- [Setup Instructions](#setup-instructions)
- [Usage Examples](#usage-examples)
- [Contributing](#contributing)


## Introduction

The project demonstrates how to implement and utilize triggers and stored procedures in a MySQL database environment. These components help maintain data consistency and encapsulate business logic within the database layer.

## Database Schema

The database comprises the following tables:

- **customers**: Stores customer information.
- **orders**: Records customer orders.
- **products**: Details of products available for purchase.
- **deleted_orders**: Archives orders that have been removed.

## Stored Procedures

Key stored procedures included in this repository:

- `InsertIntoCustomersTable`: Adds a new customer to the `customers` table.
- `InsertIntoOrdersTable`: Places a new order in the `orders` table.
- `InsertIntoProductsTable`: Adds a new product to the `products` table.

## Triggers

Implemented triggers to automate database operations:

- `check_null_birthdate_trigger`: Ensures that no customer is added without a birthdate.
- `orders_before_delete_trigger`: Archives an order into `deleted_orders` before deletion.
- `product_update_trigger`: Logs updates made to product information.

## Setup Instructions

To set up the database and its components:

1. **Database Creation**: Execute `db_creation.sql` to create the database.
2. **Table Creation**: Run scripts like `customer_table.sql`, `order_table.sql`, and `product_table.sql` to create the necessary tables.
3. **Stored Procedures**: Deploy procedures using scripts such as `insert_products_procedure.sql`.
4. **Triggers**: Set up triggers with scripts like `orders_before_delete_trigger.sql`.

Ensure you execute these scripts in the above order to maintain referential integrity.

## Usage Examples

After setting up, you can perform operations like:

- **Adding a Customer**:
  ```sql
  CALL InsertIntoCustomersTable('Jane Doe', 'jane.doe@example.com', '1990-05-15');
  ```

- **Placing an Order**:
  ```sql
  CALL InsertIntoOrdersTable(1, '2025-02-24', 150.00);
  ```

- **Adding a Product**:
  ```sql
  CALL InsertIntoProductsTable('Wireless Mouse', 25.99);
  ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your enhancements.




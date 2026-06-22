# Data Dictionary for Gold Layer

## Overview

The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. It consists of **dimension tables** and **fact tables** for specific business metrics.

---

## 1. gold.dim_customers

**Purpose:** Stores customer details enriched with demographic and geographic data.

### Columns

| Column Name     | Data Type    | Description                                                                           |
| --------------- | ------------ | ------------------------------------------------------------------------------------- |
| customer_key    | INT          | Surrogate key uniquely identifying each customer record in the dimension table.       |
| customer_id     | INT          | Unique numerical identifier assigned to each customer.                                |
| customer_number | NVARCHAR(50) | Alphanumeric identifier representing the customer, used for tracking and referencing. |
| first_name      | NVARCHAR(50) | The customer's first name, as recorded in the system.                                 |
| last_name       | NVARCHAR(50) | The customer's last name or family name.                                              |
| country         | NVARCHAR(50) | The country of residence for the customer (e.g., Australia).                          |
| marital_status  | NVARCHAR(50) | The marital status of the customer (e.g., Married, Single).                           |
| gender          | NVARCHAR(50) | The gender of the customer (e.g., Male, Female, N/A).                                 |
| birthdate       | DATE         | The date of birth of the customer.                                                    |
| create_date     | DATE         | The date when the customer record was created in the system.                          |

---

## 2. gold.dim_products

**Purpose:** Provides information about products and their attributes.

### Columns

| Column Name          | Data Type    | Description                                                  |
| -------------------- | ------------ | ------------------------------------------------------------ |
| product_key          | INT          | Surrogate key uniquely identifying each product record.      |
| product_id           | INT          | Unique identifier assigned to the product.                   |
| product_number       | NVARCHAR(50) | Alphanumeric product code used for tracking and inventory.   |
| product_name         | NVARCHAR(50) | Descriptive name of the product.                             |
| category_id          | NVARCHAR(50) | Unique identifier for the product category.                  |
| category             | NVARCHAR(50) | High-level product classification (e.g., Bikes, Components). |
| subcategory          | NVARCHAR(50) | Detailed classification within the category.                 |
| maintenance_required | NVARCHAR(50) | Indicates whether maintenance is required (Yes/No).          |
| cost                 | INT          | Cost of the product.                                         |
| product_line         | NVARCHAR(50) | Product series or line (e.g., Road, Mountain).               |
| start_date           | DATE         | Date when the product became available for sale.             |

---

## 3. gold.fact_sales

**Purpose:** Stores transactional sales data for analytical purposes.

### Columns

| Column Name   | Data Type    | Description                                    |
| ------------- | ------------ | ---------------------------------------------- |
| order_number  | NVARCHAR(50) | Unique sales order identifier (e.g., SO54496). |
| product_key   | INT          | Foreign key referencing gold.dim_products.     |
| customer_key  | INT          | Foreign key referencing gold.dim_customers.    |
| order_date    | DATE         | Date when the order was placed.                |
| shipping_date | DATE         | Date when the order was shipped.               |
| due_date      | DATE         | Date when payment was due.                     |
| sales_amount  | INT          | Total monetary value of the sales transaction. |
| quantity      | INT          | Number of units sold.                          |
| price         | INT          | Unit selling price.                            |

---

## Relationship Diagram

| Parent Table       | Child Table     | Relationship |
| ------------------ | --------------- | ------------ |
| gold.dim_customers | gold.fact_sales | One-to-Many  |
| gold.dim_products  | gold.fact_sales | One-to-Many  |

---

### Gold Layer Schema

```text
gold.dim_customers
        │
        │ customer_key
        ▼
gold.fact_sales
        ▲
        │ product_key
        │
gold.dim_products
```

---

### Documentation Standards

| Item             | Standard                             |
| ---------------- | ------------------------------------ |
| Dimension Tables | Prefix with `dim_`                   |
| Fact Tables      | Prefix with `fact_`                  |
| Primary Keys     | Surrogate Keys (`*_key`)             |
| Dates            | DATE datatype                        |
| Relationships    | One-to-Many from dimensions to facts |
| Layer            | Gold (Business Layer)                |


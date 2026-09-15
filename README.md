# **WEEK 2 - Product and Category Management System**

## **Project Overview**

This project focuses on creating a Product and Category Management System using MySQL. The system is designed to store product information, category details, product prices, and the relationship between products and categories.

The project demonstrates how relational databases can be used to organize product data and perform CRUD operations and category-wise analysis using SQL queries.

## **Objectives**

- Create a database for product and category management.
- Create Category and Product tables.
- Use Primary Key and Foreign Key constraints.
- Insert sample category and product records.
- Perform CRUD operations on product data.
- Display products along with their categories.
- Count products in each category.
- Find the highest-priced product in each category.
- Find categories having more than five products.
- Calculate the average product price category-wise.

## **Tables Used**

The project contains two main tables:

### **1. Category Table**

The Category table stores the different categories available in the store.

**Attributes:**

- **category_id** – Unique ID for each category.
- **category_name** – Name of the product category.

### **2. Product Table**

The Product table stores product information.

**Attributes:**

- **product_id** – Unique ID for each product.
- **product_name** – Name of the product.
- **price** – Price of the product.
- **category_id** – ID of the category to which the product belongs.

## **Relationship Between Tables**

The `category_id` connects the Category table and Product table.

**Relationship:**

**One Category → Many Products**

For example:

**Category 1 → Notebook, Pen, Pencil Box, Highlighter, Eraser, Stapler, Sticky Notes**

## **Database Creation**

```sql
CREATE DATABASE IF NOT EXISTS products_category_db;

USE products_category_db;

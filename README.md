# **WEEK 2 - Product and Category Management System**

## **Why Are We Doing This?**

In a store, there can be many products belonging to different categories. For example, a Laptop and a Mobile Phone belong to the Electronics category, while a T-Shirt and Jeans belong to the Clothing category.

If all this information is stored without proper organization, it becomes difficult to find products, count products in each category, compare prices, and analyze the data.

So, we are creating a Product and Category Management System using MySQL to store and organize this information properly.

## **What Are We Doing?**

In this project, we are creating a database with two tables:

1. **Category**
2. **Product**

The Category table stores the different categories available in the store.

The Product table stores the products, their prices, and the category to which they belong.

We connect these two tables using `category_id`.

For example:

### **Electronics**

- Laptop
- Mobile Phone
- Headphones
- Keyboard
- Mouse
- Monitor
- Smart Watch

### **Clothing**

- T-Shirt
- Jeans
- Jacket
- Shirt

This allows us to easily identify which category each product belongs to.

## **How Does the Project Work?**

First, we create a database called `product_category_db`.

Then, we create the `category` table to store category information.

After that, we create the `product` table to store product information.

The `category_id` in the Category table is the Primary Key. The same `category_id` is used as a Foreign Key in the Product table.

This creates a relationship between the two tables.

The relationship is:

**One Category → Many Products**

For example:

**Electronics → Laptop, Mobile Phone, Headphones, Keyboard, Mouse, Monitor, Smart Watch**

## **What Data Are We Storing?**

For categories, we store:

- **Category ID**
- **Category Name**

For products, we store:

- **Product ID**
- **Product Name**
- **Price**
- **Category ID**

## **What Operations Are We Performing?**

We perform CRUD operations on the product data.

CRUD means:

- **Create** – Add a new product
- **Read** – Display product information
- **Update** – Change existing product information
- **Delete** – Remove a product

For example, we can add a new Tablet, display it, change its price, and delete it.

## **What Analysis Are We Doing?**

After storing the data, we use SQL queries to analyze the products category-wise.

We perform the following analysis:

### **1. Display Products with Their Categories**

We find which category each product belongs to.

### **2. Count Products in Each Category**

We find how many products are available in Electronics, Clothing, Books, and Shoes.

### **3. Find the Highest-Priced Product in Each Category**

We find the most expensive product in every category.

For example:

**Electronics → Laptop**

**Clothing → Jacket**

**Books → Data Structures**

**Shoes → Sports Shoes**

### **4. Find Categories Having More Than Five Products**

We check which categories contain more than five products.

In our sample data, Electronics has seven products, so it will be displayed.

### **5. Find Average Product Price Category-wise**

We calculate the average price of products in each category.

This helps us understand the general price level of each category.

## **Why Are These Queries Useful?**

These queries show how a database can be used not only to store information but also to retrieve and analyze useful information.

For example, a store owner can use the database to find:

- Which category has the most products?
- What is the most expensive product in each category?
- Which categories have more than five products?
- What is the average price of products in each category?

This makes managing and analyzing product information easier.

## **Technologies Used**

- **MySQL**
- **MySQL Workbench**
- **SQL**

## **Conclusion**

The Product and Category Management System is created to understand how related data can be stored and managed using a relational database.

By creating Category and Product tables and connecting them using a Primary Key and Foreign Key, we can organize product information properly.

Using CRUD operations and category-wise SQL queries, we can add, view, update, delete, and analyze product data.

This project helps us understand the practical use of SQL and relational databases in a simple product management system.

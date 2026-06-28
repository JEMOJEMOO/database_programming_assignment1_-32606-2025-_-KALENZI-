Database Programming Assignment I

 Inventory Management System

Student Information

Student Name: KALENZI JAMES

Student ID: 32606/2025

Course: DPR400210 - Database Programming

Instructor: Eric Maniraguha

---

### Business Value

The Inventory Management System helps a business organize and manage information about products, suppliers, customers, and orders. It enables staff to track inventory levels, monitor supplier information, record customer purchases, and generate reports for decision-making. By storing data in a structured relational database, the business can reduce errors, improve efficiency, prevent stock shortages, and make better inventory management decisions.



### Business Problem

Inventory management is essential for businesses that buy and sell products. Without a well-designed database, organizations may experience stock shortages, duplicate records, poor supplier management, and inaccurate sales reports.

This project develops an Inventory Management System using Oracle SQL. The system stores information about suppliers, products, customers, and orders while providing analytical reports through Common Table Expressions (CTEs) and SQL Window Functions.

---

 ### Database Schema

The database contains four related tables.

 Suppliers

Stores information about product suppliers.

| Column        | Description                  |
| ------------- | ---------------------------- |
| supplier_id   | Primary Key (Auto Increment) |
| supplier_name | Supplier name                |
| phone_number  | Supplier phone number        |
| email         | Supplier email               |
| address       | Supplier location            |

---

Products

Stores products available in the inventory.

| Column         | Description                       |
| -------------- | --------------------------------- |
| product_id     | Primary Key (Auto Increment)      |
| product_name   | Product name                      |
| category       | Product category                  |
| unit_price     | Selling price                     |
| stock_quantity | Quantity available                |
| supplier_id    | Foreign Key referencing Suppliers |

---

 Customers

Stores customer information.

| Column        | Description                  |
| ------------- | ---------------------------- |
| customer_id   | Primary Key (Auto Increment) |
| customer_name | Customer name                |
| phone_number  | Customer phone number        |
| email         | Customer email               |

---

 Orders

Stores customer purchase transactions.

| Column           | Description                  |
| ---------------- | ---------------------------- |
| order_id         | Primary Key (Auto Increment) |
| customer_id      | Foreign Key                  |
| product_id       | Foreign Key                  |
| quantity_ordered | Quantity purchased           |
| order_date       | Date of purchase             |


### ER Diagram

Insert the ER Diagram image in the ER_Diagram folder and embed it here.

SUPPLIERS
------------
supplier_id (PK)
supplier_name
phone_number
email
address
      │
      │ 1
      │
      │ M
PRODUCTS
------------
product_id (PK)
product_name
category
unit_price
stock_quantity
supplier_id (FK)
      │
      │ 1
      │
      │ M
ORDERS
------------
order_id (PK)
customer_id (FK)
product_id (FK)
quantity_ordered
order_date
      ▲
      │
      │ M
CUSTOMERS
------------
customer_id (PK)
customer_name
phone_number
email


### CTE Implementations

The following Common Table Expressions were implemented:

1. Simple CTE

    Displayed products with low stock quantities.

2. Multiple CTEs

   Combined low-stock products with supplier information.

3. Recursive CTE

   Generated sequential numbers using recursion.

4. CTE with Aggregation

   Calculated the total quantity ordered for each product.

5. CTE with JOIN Operations

   Joined products, suppliers, and orders to generate a comprehensive sales report.

Each query was executed successfully and accompanied by a screenshot and a brief explanation of its business value.



### Window Function Implementations

The project demonstrates the following SQL Window Functions:
Ranking Functions

 ROW_NUMBER()
 
 RANK()
 
 DENSE_RANK()
 
 PERCENT_RANK()
 

Aggregate Window Functions

 SUM() OVER()
 
 AVG() OVER()
 
 MIN() OVER()
 
 MAX() OVER()
 

 Navigation Functions
 

 LAG()
 
 LEAD()
 

Distribution Functions

 NTILE()
 
 CUME_DIST()
 

Each function includes:


 SQL query
 
 Screenshot of the output
 
 
### Interpretation of the results

 SIMPLE CTEs:

 ----Display all products whose stock quantity is less than 50.

 MULTIPLE CTEs:

 ----Find suppliers who supply products with low stock.


 RECURCIVE CTEs:


 ----Generate order numbers from 1 to 10.


 CTE WITH AGGREGATION:


 ----Calculate the total quantity ordered for each product.


 CTE Combined with JOIN Operations:


 ----Display each product together with its supplier and total quantity ordered.


 INTERPRETATION FOR SQL WINDOW FUNCTIONS:

ROW_NUMBER():

----Every product receives a unique sequential number according to price.


RANK():


----Products with the same price receive the same rank, and the next rank is skipped.


DENSE_RANK():

----Unlike RANK(), no numbers are skipped after ties.


PERCENT_RANK():



----Shows each product's relative position between the lowest and highest prices.



SUM() OVER():


----Shows how total orders increase over time.


AVG() OVER():



----Every row displays the overall average order quantity.



MIN() OVER():


----Displays the smallest quantity ordered across all orders


MAX() OVER():



----Displays the largest order quantity for comparison



LAG():


----Helps identify increases or decreases compared with the previous order.


LEAD():



----Allows comparison with future orders for forecasting.



NTILE():


----Products are grouped into four equal-sized categories based on price, which is useful for pricing analysis.




CUME_DIST():



Shows the proportion of products priced at or below each product's price. For example, a value of 0.80 means that 80% of the products have a price less than or equal to that product's price







### Analysis and Findings

 Descriptive Analysis (What happened?)

The analysis revealed that certain products received significantly more orders than others. 
Products such as laptops and computer accessories recorded higher sales, while some office equipment had relatively low demand. 
The inventory also showed that several products had low stock quantities and required replenishment.



### Diagnostic Analysis (Why did it happen?)

The higher sales were mainly driven by customer demand for frequently used electronic products.
Products with low stock levels were those that experienced repeated purchases without timely restocking. 
Supplier performance and purchasing patterns also influenced inventory availability.


### Prescriptive Analysis (What actions should be taken?)

The business should:

* Restock products before inventory reaches critical levels.
* Increase inventory for products with consistently high demand.
* Strengthen relationships with reliable suppliers to reduce delivery delays.
* Review pricing and promotional strategies for slow-moving products.
* Use SQL reports regularly to monitor inventory performance and support business decisions.



References

* Oracle Database SQL Language Reference
* Oracle SQL Developer Documentation
* Database Programming Course Notes
* UNILAK Database Programming Assignment Guidelines



### Academic Integrity Statement

I declare that this project represents my own original work completed for the Database Programming course.
All SQL scripts, database design, analyses, and documentation were prepared by me.
Any external resources consulted have been properly acknowledged in the references section.

# Supermarket Sales Analysis
## About
Our primary goal in this project is to gain a comprehensive understanding of the dynamics that drive Supermarket Sales. We're diving deep into product performances, sales trends, and customer behaviors by using MySQL Workbench. By understanding these dynamics, we aim to empower decision-makers with actionable intelligence. The dataset was obtained from the [Kaggle Supermarket Sales](https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales/data)

## Purpose Of The Project
By using Exploratory Data Analysis (EDA), the major goal of this project is to analyze the data through statistical measures and visualizations. This helps us turn raw data into practical knowledge.

## About Data
The data was obtained from the [Kaggle Supermarket Sales](https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales/data) This dataset was recorded in 3 different branches for 3 months of data. The data consists of 1000 rows and 17 columns.
|  Column  | Desription  | Data Type  |
|  ---  |  ---  |  ---  |
|Invoice_ID |Invoice Identification Number |VARCHAR(30)|
|Branch |Branch of supermarket (Branch A, B, and C) |VARCHAR(5)|
|City |Location of supermarket |VARCHAR(5)|
|Customer_type |Type of customers (With members card or not) |VARCHAR(30)|
|Gender |Gender of the customer |VARCHAR(10)|
|Product_line |General item categorization groups |VARCHAR(100)|
|Unit_price |Price of each product in dollars |DECIMAL(10,2)|
|Quantity |Number of products purchased |INT
|Tax |5% Tax fee |FLOAT(6,4)|
|Total |Total price including tax |DECIMAL(10,2)|
|Date |Date of purchase |DATE|
|Time |Time of purchase |TIMESTAMP|
|Payment |Payment used for purchase |TEXT|
|cogs |Cost of goods sold |DECIMAL(10,2)
|gross_margin_percentage |Gross margin percentage |FLOAT(11,9)|
|gross_income |Gross income |DECIMAL(10,2)|
|Rating |Customer rating of their shopping experience |FLOAT(2,1)|

## Methods Used
1. Data Wrangling: Data inspection is conducted to identify and address NULL values. Various data replacement methods are employed to substitute or fill in the missing or NULL values.
2. Exploratory Data Analysis (EDA): Exploratory data analysis is conducted to answer the listed questions and the goal of this project.
3. Conclusion

## Questions To Answer
1. What is the most popular payment method used by customers?
2. Which branch is the most profitable?
3. Which product category generates the highest revenue?
4. What are the spending patterns of females and males, and in which categories do they spend the most money?
5. How many products are purchased by customers?
6. Which product category should be the focus of the supermarket?
7. In which city branch should expansion be considered, and which products should be emphasized?

## Code
For the rest of the code check the [Query_Sales](https://github.com/kaylaisya/SupermarketSalesAnalysis/blob/main/Query_Sales.sql)
```ruby
-- Create table
CREATE TABLE IF NOT EXISTS sales(
	Invoice_ID VARCHAR(30) NOT NULL PRIMARY KEY,
    Branch VARCHAR(5) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Customer_type VARCHAR(30) NOT NULL,
    Gender VARCHAR(30) NOT NULL,
    Product_line VARCHAR(100) NOT NULL,
    Unit_price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL,
    Tax FLOAT(6,4) NOT NULL,
    Total DECIMAL(12, 4) NOT NULL,
    Purchase_Date DATETIME NOT NULL,
    Purchase_Time TIME NOT NULL,
    Payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_percentage FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    Rating FLOAT(2, 1)
);


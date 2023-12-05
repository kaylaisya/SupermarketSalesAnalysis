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

-- What is the most popular payment method used by customers?
SELECT
  Payment,
  COUNT(Payment) AS payment_method
FROM
  sales
ORDER BY 
  count(Payment) DESC;

-- Which branch is the most profitable?
SELECT
  Branch,
  AVG(gross_income) AS income_total
FROM
  sales
GROUP BY 
  AVG(gross_income) DESC;

-- Which product category generates the highest revenue?
SELECT
  Product_line,
  ROUND(SUM(gross_income)) AS gross_income
FROM
  sales
GROUP BY 
  Product_line
ORDER BY
  SUM(gross_income);

-- What are the spending patterns of females and males, and in which categories do they spend the most money?
SELECT 
  Gender, Product_line, 
  SUM(Quantity) AS total_spending 
FROM 
  sales 
WHERE 
  gender 
    IN ('Female', 'Male') 
GROUP BY 
  Gender, Product_line 
ORDER BY 
  gender, total_spending DESC;

-- How many products are purchased by customers?
SELECT
  Purchase_quantity,
  COUNT(Purchase_quantity) AS transaction_total
FROM
 sales
GROUP BY
  Purchase_quantity
ORDER BY
  COUNT(Purchase_quantity);

-- Which product category should be the focus of the supermarket?
SELECT
  Product_line,
  ROUND(AVG(rating),2), AS avg_rating
FROM
  sales
GROUP BY
  Product_line
ORDER BY
  AVG(rating) DESC;  
SELECT
  Product_line,
  ROUND(AVG(Purchase_quantity),2) AS avg_purchase
FROM
  sales
GROUP BY
  Product_line
ORDER BY
  AVG(Purchase_quantity);

-- In which city branch should expansion be considered, and which products should be emphasized?
SELECT
  Branch,
  AVG(gross_income) AS income_total
FROM
  sales
GROUP BY 
  AVG(gross_income) DESC;
SELECT
  Branch, Product_line,
  COUNT(*) AS total_sales
FROM
 sales
GROUP BY
  Branch,
  Product_line
ORDER BY
  total_sales DESC;
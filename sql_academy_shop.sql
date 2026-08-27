SELECT first_name, last_name, email, city FROM customers WHERE country = 'Polska';

SELECT DISTINCT country FROM customers; 

SELECT product_name, unit_price, stock_quantity FROM products
ORDER BY 1,2;

SELECT product_name, category_id, unit_price FROM products
WHERE unit_price > 500 AND (category_id = 1 OR category_id = 2)

SELECT product_id, product_name FROM academy.products WHERE NOT discontinued;

-- Total sales per customer
SELECT c.name, SUM(p.price*oi.qty) AS total_spent
FROM customers c
JOIN orders o ON c.id=o.customer_id
JOIN order_items oi ON o.id=oi.order_id
JOIN products p ON oi.product_id=p.id
GROUP BY c.name;

-- Top selling products
SELECT p.name, SUM(oi.qty) AS total_sold
FROM products p
JOIN order_items oi ON p.id=oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Customers from USA with orders
SELECT * FROM customers WHERE country='USA';

-- Orders with order value > average
SELECT o.id, SUM(p.price*oi.qty) AS order_value
FROM orders o
JOIN order_items oi ON o.id=oi.order_id
JOIN products p ON oi.product_id=p.id
GROUP BY o.id
HAVING order_value > (
    SELECT AVG(sub.total)
    FROM (
        SELECT SUM(p2.price*oi2.qty) AS total
        FROM orders o2
        JOIN order_items oi2 ON o2.id=oi2.order_id
        JOIN products p2 ON oi2.product_id=p2.id
        GROUP BY o2.id
    ) sub
);

-- Create view for monthly revenue
CREATE VIEW IF NOT EXISTS monthly_revenue AS
SELECT substr(order_date,1,7) AS month,
       SUM(p.price*oi.qty) AS revenue
FROM orders o
JOIN order_items oi ON o.id=oi.order_id
JOIN products p ON oi.product_id=p.id
GROUP BY month;

-- Index optimization
CREATE INDEX IF NOT EXISTS idx_orders_customer ON orders(customer_id);

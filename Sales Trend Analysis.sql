-- Create the online_sales table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date TEXT,
    amount REAL,
    product_id TEXT
);

-- Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 200.00, 'P001'),
(2, '2023-01-20', 200.00, 'P002'),
(3, '2023-02-10', 250.00, 'P001'),
(4, '2023-02-22', 230.00, 'P003'),
(5, '2023-03-05', 180.00, 'P004'),
(6, '2023-03-18', 200.00, 'P002'),
(7, '2023-03-30', 210.00, 'P001'),
(8, '2023-04-12', 250.00, 'P003'),
(9, '2023-04-25', 250.00, 'P004'),
(10, '2023-05-02', 400.00, 'P005');

-- Analyze monthly trends
SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

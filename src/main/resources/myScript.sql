SELECT o.product_name FROM content.orders o
JOIN content.customers c ON o.customer_id = c.id
WHERE lower(c.name) = :name;
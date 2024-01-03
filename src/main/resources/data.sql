INSERT INTO content.customers(name, surname, age, phone_number)
VALUES
('Vasia', 'Vasiliev', 20, '+7123456789'),
('Ivan', 'Ivanov', 30, '+7123456722'),
('Alexey', 'Alexeev', 30, '+7123456722'),
('Petr', 'Petrov', 40, '+7555555555');

INSERT INTO content.orders(customer_id, product_name, amount)
VALUES
(2, 'gdsg fg ds', 4),
(2, 'ghf hfd', 4),
(4, 'gjkj', 4),
(1, 'dfg fdfg h gd', 4),
(3, 'hjfg gfhfd f ffd', 4),
(3, 'gjghfg ', 4);
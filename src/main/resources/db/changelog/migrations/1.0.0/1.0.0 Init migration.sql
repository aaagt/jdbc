CREATE SCHEMA IF NOT EXISTS content;

CREATE TABLE IF NOT EXISTS content.customers (
    id             SERIAL PRIMARY KEY,
    name           VARCHAR(32) NOT NULL,
    surname        VARCHAR(32) NOT NULL,
    age            INTEGER     NOT NULL,
    phone_number   VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS content.orders (
    id             SERIAL       PRIMARY KEY,
    date           TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP NOT NULL,
    customer_id    INTEGER      REFERENCES content.customers(id) NOT NULL,
    product_name   VARCHAR(255) NOT NULL,
    amount         INTEGER      NOT NULL
);

INSERT INTO content.customers(name, surname, age, phone_number)
VALUES
('Vasia', 'Vasiliev', 20, '+7123456789'),
('Ivan', 'Ivanov', 30, '+7123456722'),
('Alexey', 'Alexeev', 30, '+7123456722'),
('Petr', 'Petrov', 40, '+7555555555');

INSERT INTO content.orders(customer_id, product_name, amount)
VALUES
(2, 'gdsg fg ds', 4),
(2, 'ghf hfd 1', 4),
(4, 'gjkj', 4),
(1, 'dfg fdfg h gd', 4),
(3, 'hjfg gfhfd f ffd', 4),
(3, 'gjghfg ', 4);

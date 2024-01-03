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

-- ENV-03: first test table in the novamart database

CREATE TABLE IF NOT EXISTS test_customers (
    customer_id INTEGER PRIMARY KEY,
    full_name   TEXT,
    city        TEXT
);

INSERT INTO test_customers (customer_id, full_name, city) VALUES
    (1, 'Antony Smith', 'NY'),
    (2, 'Hassan benjelloun', 'Rabat'),
    (3, 'Andrew pite', 'BC') ON CONFLICT (customer_id) DO NOTHING;

SELECT * FROM test_customers WHERE city = 'Rabat';
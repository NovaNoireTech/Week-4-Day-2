CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR (50),
    movie_ticket VARCHAR,
    FOREIGN KEY (cusomter_id) REFERENCES customers(cusomter_id)
)

CREATE TABLE tickets(
    ticket_id VARCHAR PRIMARY KEY, 
    customer_id VARCHAR,
    movie_theater INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

CREATE TABLE concessions(
    cusomter_id VARCHAR PRIMARY KEY, 
    price SERIAL,
)


CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    cusomter_id TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    rating VARCHAR
    FOREIGN KEY (cusomter_id) REFERENCES customers(cusomter_id)
)
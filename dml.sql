CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR (50),
    movie_ticket VARCHAR,
    FOREIGN KEY (movie_ticket) REFERENCES customers(movie_ticket)
)

CREATE TABLE tickets(
    movie_ticket VARCHAR PRIMARY KEY, 
    showtime VARCHAR,
    movie_theater INTEGER NOT NULL,
    FOREIGN KEY (showtime) REFERENCES tickets(showtime)
)

CREATE TABLE concessions(
    product_id VARCHAR PRIMARY KEY, 
    price SERIAL,
)


CREATE TABLE movies (
    sale_id SERIAL PRIMARY KEY,
    showtime TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    rating VARCHAR
    FOREIGN KEY (showtime) REFERENCES movies(showtime)
)
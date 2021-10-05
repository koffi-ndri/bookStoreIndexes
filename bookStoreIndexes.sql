SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

SELECT *
FROM books
LIMIT 10;

SELECT *
FROM pg_Indexes 
WHERE tablename = 'customers';

SELECT *
FROM pg_Indexes 
WHERE tablename = 'books';

SELECT *
FROM pg_Indexes 
WHERE tablename = 'orders';

CREATE INDEX orders_customer_id_book_id_idx ON orders(customer_id, book_id);

EXPLAIN ANALYZE SELECT original_language, title, sales_in_millions
FROM books
WHERE original_language = 'French';

SELECT pg_size_pretty (pg_total_relation_size('books'));

CREATE INDEX books_title_sales_in_millions_idx ON books(title, sales_in_millions);

DROP INDEX IF EXISTS books_title_sales_in_millions_idx;
DROP INDEX IF EXISTS orders_customer_id_book_id_idx;
SELECT NOW();
 
\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;
 
SELECT NOW();

CREATE INDEX orders_customer_id_book_id_idx ON orders(customer_id, book_id);

CREATE INDEX books_title_sales_in_millions_idx ON books(title, sales_in_millions);
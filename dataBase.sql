CREATE TYPE product_type AS ENUM ('organic', 'conventional');

CREATE TABLE avocado_price (
	id SERIAL PRIMARY KEY,
	Date DATE,
	AveragePrice NUMERIC(5,2),
	Total_Volume NUMERIC(10,2),
	plu_4046 NUMERIC(10,2), --small avocado
	plu_4225 NUMERIC(10,2), --large avocado
	plu_4770 NUMERIC(10,2), --extra large avocado
	type product_type,
	year int,
	region VARCHAR(50)
);

COPY avocado_price (Date, AveragePrice, Total_Volume, plu_4046, plu_4225, plu_4770, type, year, region)
FROM '/avocado_filtrado.csv' DELIMITER ',' CSV HEADER;
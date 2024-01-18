CREATE TABLE CUSTOMERS(
	customer_id VARCHAR (50) NOT NULL PRIMARY KEY,
	customer_unique_id VARCHAR (50),
	customer_zip_code_prefix varchar(50),
	customer_city VARCHAR (50),
	customer_state VARCHAR (50)
);
select * from ORDER_ITEMS

CREATE TABLE ORDERS (
	order_id VARCHAR(225) PRIMARY KEY,
	customer_id VARCHAR(225),
	order_status VARCHAR(50),
	order_purchase_timestamp DATETIME2,
	order_approved_at DATETIME2,
	order_delivered_carrier_date DATETIME2,
	order_delivered_customer_date DATETIME2,
	order_estimated_delivery_date DATETIME2
);

CREATE TABLE ORDER_ITEMS (
	order_id VARCHAR(50) NOT NULL,
	order_item_id VARCHAR(50),
	product_id VARCHAR(50),
	seller_id VARCHAR(50),
	shipping_limit_date DATETIME2,
	price FLOAT,
	freight_value FLOAT
);


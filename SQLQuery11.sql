CREATE DATABASE example; 

USE example;

CREATE TABLE customer ( id INT ,
						AUTO_INCREMENT int
						PRIMARY KEY, 
						postalCode VARCHAR(15) 
						default NULL);

SELECT * FROM customer;

DROP TABLE IF EXISTS customer; 

DROP TABLE IF EXISTS product; 

CREATE TABLE product (  id INT, AUTO_INCREMENT int
						PRIMARY KEY, 
						product_name 
						CHAR(50) NOT NULL, 
						price CHAR(7) NOT NULL, 
						qty VARCHAR(4) NOT NULL ) ;

DROP TABLE IF EXISTS transactions; 

CREATE TABLE transactions (id INT, AUTO_INCREMENT INT
							PRIMARY KEY, 
							cust_id INT, 
							timedate TIMESTAMP 
							FOREIGN KEY (cust_id),
							REFERENCES customer(id)); 

CREATE TABLE product_transaction ( 
									prod_id INT, trans_id INT,
									PRIMARY KEY(prod_id, trans_id), 
									FOREIGN KEY(prod_id),
									REFERENCES product(id), 
									FOREIGN KEY (trans_id)
									REFERENCES, transactions(id));
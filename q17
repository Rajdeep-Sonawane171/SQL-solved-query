CREATE TABLE PRODUCT
(
    product_id int,
    product_name varchar(20),
    unit_price int,
    constraint pk PRIMARY key (product_id)
);

create table SALES
(
    seller_id int,
    product_id int,
    buyer_id int,
    sale_date DATE,
    quantity int,
    price INT,
    foreign KEY(product_id) REFERENCES PRODUCT(PRODUCT_ID)
);

INSERT INTO PRODUCT VALUES(1,'S8',1000),
                          (2,'G4',800),
                          (3,'iPhone',1400);
                          
select * from PRODUCT;

INSERT INTO SALES VALUES(1,2, 2,' 2019-02-17 ',1, 800),
                        (2, 2, 3, '2019-06-02', 1, 800),
                        (3 ,3 ,4 ,'2019-05-13' ,2 ,2800);
                        
SELECT * FROM SALES;

Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
between 2019-01-01 and 2019-03-31 inclusive.
Return the result table in any order
-->WITH PRO AS (SELECT SALES.PRODUCT_ID,PRODUCT.PRODUCT_NAME,SALES.sale_date FROM PRODUCT  JOIN SALES 
   ON PRODUCT.PRODUCT_ID=SALES.PRODUCT_ID
   WHERE SALES.SALE_DATE   BETWEEN  '2019-01-01' AND '2019-03-31' )
   SELECT product_id,product_name from PRO where 
   sale_date=(select  max(sale_date) from SALES GROUP BY product_id having product_id=PRO.product_id);
--

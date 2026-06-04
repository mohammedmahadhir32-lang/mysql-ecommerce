CREATE TABLE shopping (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    quantity INT
);

INSERT INTO shopping (product_id, product_name, category, price, quantity)
VALUES
(101, 'Laptop', 'Electronics', 55000.00, 10),
(102, 'Mobile Phone', 'Electronics', 20000.00, 15),
(103, 'Headphones', 'Accessories', 1500.00, 25),
(104, 'Keyboard', 'Accessories', 800.00, 20),
(105, 'Mouse', 'Accessories', 500.00, 30),
(106, 'Refrigerator', 'Home Appliance', 30000.00, 5),
(107, 'Washing Machine', 'Home Appliance', 25000.00, 7);

select product_name,price
  from shopping
  where price = (
  select max(price)
  from shopping
  );
  
select product_name,price
  from shopping
  where price = (
  select min(price)
  from shopping
  );
  

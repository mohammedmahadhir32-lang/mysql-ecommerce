CREATE TABLE shopping (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    product_id INT,
    order_status VARCHAR(50),
    shipping_detail VARCHAR(100)
);

INSERT INTO shopping (product_id, product_name, price)
VALUES
(101, 'Laptop', 750.00),
(102, 'Mobile', 500.00),
(103, 'Headphones', 80.00),
(104, 'Keyboard', 40.00);

INSERT INTO orders (product_id, order_status, shipping_detail)
VALUES
(101, 'Shipped', 'New York'),
(102, 'Processing', 'California'),
(105, 'Delivered', 'Texas');

#inner join
select s.product_id,
	   s.product_name,
       s.price,
       o.order_status,
       o.shipping_detail
from shopping s
inner join orders o
on s.product_id = o.product_id;

#left join
select s.product_id,
	   s.product_name,
       s.price,
       o.order_status,
       o.shipping_detail
from shopping s
left join orders o
on s.product_id = o.product_id;

#right join 
select s.product_id,
	   s.product_name,
       s.price,
       o.order_status,
       o.shipping_detail
from shopping s
right join orders o
on s.product_id = o.product_id;

#full outer join
select s.product_id,
	   s.product_name,
       s.price,
       o.order_status,
       o.shipping_detail
from shopping s
left join orders o
on s.product_id = o.product_id

union 

select s.product_id,
	   s.product_name,
       s.price,
       o.order_status,
       o.shipping_detail
from shopping s
right join orders o
on s.product_id = o.product_id;

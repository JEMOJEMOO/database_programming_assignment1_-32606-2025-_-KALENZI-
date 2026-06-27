INSERT INTO suppliers (supplier_name, phone_number, email, address)
VALUES ('Tech Supplies Ltd', '0788000001', 'tech@gmail.com', 'Kigali');

INSERT INTO suppliers (supplier_name, phone_number, email, address)
VALUES ('Computer World', '0788000002', 'computer@gmail.com', 'Musanze');

INSERT INTO suppliers (supplier_name, phone_number, email, address)
VALUES ('Office Equipments', '0788000003', 'office@gmail.com', 'Huye');

INSERT INTO suppliers (supplier_name, phone_number, email, address)
VALUES ('Smart Electronics', '0788000004', 'smart@gmail.com', 'Rubavu');

INSERT INTO suppliers (supplier_name, phone_number, email, address)
VALUES ('Digital Traders', '0788000005', 'digital@gmail.com', 'Muhanga');






INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Laptop', 'Electronics', 1500, 45, 1);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Printer', 'Office', 700, 30, 3);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Mouse', 'Accessories', 40, 200, 2);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Keyboard', 'Accessories', 80, 120, 2);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Monitor', 'Electronics', 450, 60, 4);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Scanner', 'Office', 350, 25, 3);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Projector', 'Office', 900, 15, 5);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Flash Disk', 'Storage', 25, 300, 5);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Hard Drive', 'Storage', 150, 80, 1);

INSERT INTO products (product_name, category, unit_price, stock_quantity, supplier_id)
VALUES ('Webcam', 'Accessories', 100, 55, 4);





INSERT INTO customers (customer_name, phone_number, email)
VALUES ('John Uwimana', '0788111111', 'john@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Alice Mukamana', '0788222222', 'alice@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Patrick Niyonsenga', '0788333333', 'patrick@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Grace Uwase', '0788444444', 'grace@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Eric Habimana', '0788555555', 'eric@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Sandra Uwera', '0788666666', 'sandra@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Claude Mugisha', '0788777777', 'claude@gmail.com');

INSERT INTO customers (customer_name, phone_number, email)
VALUES ('Olivia Nyirahabimana', '0788888888', 'olivia@gmail.com');





INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (1, 1, 2, TO_DATE('2026-06-01','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (2, 3, 10, TO_DATE('2026-06-02','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (3, 4, 5, TO_DATE('2026-06-03','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (4, 2, 1, TO_DATE('2026-06-04','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (5, 5, 3, TO_DATE('2026-06-05','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (6, 8, 20, TO_DATE('2026-06-06','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (7, 9, 4, TO_DATE('2026-06-07','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (8, 7, 2, TO_DATE('2026-06-08','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (1, 6, 1, TO_DATE('2026-06-09','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (2, 10, 3, TO_DATE('2026-06-10','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (3, 3, 8, TO_DATE('2026-06-11','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (4, 8, 15, TO_DATE('2026-06-12','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (5, 1, 1, TO_DATE('2026-06-13','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (6, 5, 2, TO_DATE('2026-06-14','YYYY-MM-DD'));

INSERT INTO orders (customer_id, product_id, quantity_ordered, order_date)
VALUES (7, 4, 6, TO_DATE('2026-06-15','YYYY-MM-DD'));


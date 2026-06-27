CREATE TABLE suppliers (
    supplier_id NUMBER GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    supplier_name VARCHAR2(50) NOT NULL,

    phone_number VARCHAR2(13) UNIQUE,

    email VARCHAR2(50) UNIQUE,

    address VARCHAR2(100)
);


CREATE TABLE products (
    product_id NUMBER GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    product_name VARCHAR2(50) NOT NULL,

    category VARCHAR2(30) NOT NULL,

    unit_price NUMBER(10,2) NOT NULL,

    stock_quantity NUMBER DEFAULT 0,

    supplier_id NUMBER NOT NULL,

    CONSTRAINT fk_products_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)
);




CREATE TABLE customers (
    customer_id NUMBER GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    customer_name VARCHAR2(50) NOT NULL,

    phone_number VARCHAR2(13) UNIQUE,

    email VARCHAR2(50) UNIQUE
);




CREATE TABLE orders (
    order_id NUMBER GENERATED ALWAYS AS IDENTITY
        PRIMARY KEY,

    customer_id NUMBER NOT NULL,

    product_id NUMBER NOT NULL,

    quantity_ordered NUMBER NOT NULL
        CHECK (quantity_ordered > 0),

    order_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_orders_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);





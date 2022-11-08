create table employee (
	employee_id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	zipcode VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL
);
insert into employee (employee_id, first_name, last_name, phone_number, email, address, city, state, zipcode, hire_date) values (1, 'Abner', 'Beardwell', '916-651-8952', 'abeardwell0@webs.com', '6 Dovetail Crossing', 'Sacramento', 'CA', '94237', '7/19/2022');
insert into employee (employee_id, first_name, last_name, phone_number, email, address, city, state, zipcode, hire_date) values (2, 'Gavin', 'Curness', '754-584-1871', 'gcurness1@twitpic.com', '1 Morningstar Place', 'Fort Lauderdale', 'FL', '33310', '12/3/2021');
insert into employee (employee_id, first_name, last_name, phone_number, email, address, city, state, zipcode, hire_date) values (3, 'Grier', 'Castellaccio', '319-376-1073', 'gcastellaccio2@github.com', '0 Pawling Street', 'Waterloo', 'IA', '50706', '8/7/2022');
insert into employee (employee_id, first_name, last_name, phone_number, email, address, city, state, zipcode, hire_date) values (4, 'Bary', 'Portman', '651-250-8114', 'bportman3@simplemachines.org', '0 Summer Ridge Plaza', 'Saint Paul', 'MN', '55146', '9/8/2022');
insert into employee (employee_id, first_name, last_name, phone_number, email, address, city, state, zipcode, hire_date) values (5, 'Gery', 'Elmes', '409-499-6540', 'gelmes4@cnet.com', '25 Carpenter Park', 'Galveston', 'TX', '77554', '4/21/2022');

create table product (
	sku VARCHAR(50) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	brand VARCHAR(50) NOT NULL,
	summary TEXT NOT NULL,
	price FLOAT NOT NULL,
	quantity INT NOT NULL,
	category VARCHAR(50) NOT NULL,
	creator INT NOT NULL,
	creation_date DATE NOT NULL,
	supplier VARCHAR(50)
);
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier) values ('79-114-5362', 'MX Master 3', 'Logitech', 'Ergonomic Mouse', 99.99, 61, 'Electronics', 1, '1/2/2022', 'Skinte');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier) values ('16-232-7508', 'Infinity Bangle', 'Swarovski', 'Symbol of Love ', 131.16, 97, 'Jewelry', 1, '12/16/2021', 'Oyope');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier) values ('28-122-9924', 'Cabernet Sauvignon', 'Hectare', 'American', 2.99, 24, 'Drinks', 1, '8/10/2022', 'Buzzster');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier) values ('32-885-9424', 'Bread', 'Wonder Bread', 'Feed Your Joy. ', 2.89, 95, 'Food', 2, '7/27/2022', 'Avamm');
insert into product (sku, title, brand, summary, price, quantity, category, creator, creation_date, supplier) values ('78-736-0229', 'Superstar', 'Adidas', 'Originally made for basketball courts in the 70s.', 67.00, 62, 'Shoes', 4, '10/17/2022', 'Roodel');

create table transaction (
	transaction_id BIGSERIAL NOT NULL PRIMARY KEY,
	date DATE NOT NULL,
	salesperson_id INT NOT NULL,
	total DECIMAL(5,2) NOT NULL,
	discount_type VARCHAR(50) NOT NULL,
	discount DECIMAL(4,2) NOT NULL,
	final_total DECIMAL(5,2) NOT NULL,
	payment_type VARCHAR(50) NOT NULL,
	creditcard_type VARCHAR(50),
	creditcard_number VARCHAR(50)
);
insert into transaction (transaction_id, date, salesperson_id, total, discount_type, discount, final_total, payment_type, creditcard_type, creditcard_number) values (1, '2022-10-19 10:23:54', 2, 99.99, 'NONE', 0.00, 99.99, 'CASH', 'NA', 'NA');
insert into transaction (transaction_id, date, salesperson_id, total, discount_type, discount, final_total, payment_type, creditcard_type, creditcard_number) values (2, '2022-10-19 10:23:54', 1, 131.16, 'FRIENDS', 6.56, 124.60, 'CARD', 'americanexpress', '374288515952579');
insert into transaction (transaction_id, date, salesperson_id, total, discount_type, discount, final_total, payment_type, creditcard_type, creditcard_number) values (3, '2022-10-19 10:23:54', 14, 2.99, 'MILITARY', 0.30, 2.69, 'CARD', 'americanexpress', '374283762303196');
insert into transaction (transaction_id, date, salesperson_id, total, discount_type, discount, final_total, payment_type, creditcard_type, creditcard_number) values (4, '2022-10-19 10:23:54', 8, 2.89, 'NONE', 0.00, 2.89, 'CARD', 'mastercard', '5108750770479970');
insert into transaction (transaction_id, date, salesperson_id, total, discount_type, discount, final_total, payment_type, creditcard_type, creditcard_number) values (5, '2022-10-19 10:23:54', 12, 67.00, 'FRIENDS', 3.35, 63.65, 'CASH', 'NA', 'NA');

create table discount (
	discount_id INT NOT NULL PRIMARY KEY,
	discount_type VARCHAR(50),
	amount DECIMAL(3,2)
);
insert into discount (discount_id, discount_type, amount) values (1, 'Friends', 0.05);
insert into discount (discount_id, discount_type, amount) values (2, 'Family', 0.15);
insert into discount (discount_id, discount_type, amount) values (3, 'Military', 0.10);


create table transaction_items (
    transaction_id INT REFERENCES transaction(transaction_id) ON UPDATE CASCADE ON DELETE CASCADE,
    sku varchar(50) REFERENCES product(sku) ON UPDATE CASCADE ON DELETE CASCADE,
    quantity INT 
);
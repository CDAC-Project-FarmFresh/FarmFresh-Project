create table user(
user_id int primary key,
address varchar(200),
email varchar(20),
firstname varchar(20),
lastname varchar(20),
password varchar(20),
is_admin bit,
phone_no varchar(15)
);

INSERT INTO user (address, email, firstname, is_admin, lastname, password, phone_no)
VALUES 
    ('123 Main St', 'john@example.com', 'John', 1, 'Doe', 'password123', '123-456-7890'),
    ('456 Elm St', 'jane@example.com', 'Jane', 0, 'Smith', 'pass456', '987-654-3210'),
    ('789 Oak St', 'admin@example.com', 'Admin', 1, 'Admin', 'adminpass', '555-555-5555'),
	('111 Pine St', 'mark@example.com', 'Mark', 0, 'Johnson', 'markpass', '111-222-3333'),
    ('222 Maple St', 'lisa@example.com', 'Lisa', 0, 'Williams', 'lisapass', '444-555-6666'),
    ('333 Birch St', 'sam@example.com', 'Sam', 0, 'Taylor', 'sampass', '777-888-9999'),
    ('444 Cedar St', 'emily@example.com', 'Emily', 0, 'Brown', 'emilypass', '101-202-3030'),
    ('555 Walnut St', 'michael@example.com', 'Michael', 0, 'Anderson', 'michaelpass', '404-505-6060'),
    ('666 Spruce St', 'sarah@example.com', 'Sarah', 0, 'Martinez', 'sarahpass', '707-808-9090'),
    ('777 Ash St', 'chris@example.com', 'Chris', 0, 'Thomas', 'chrispass', '111-223-3444'),
    ('888 Hickory St', 'amanda@example.com', 'Amanda', 0, 'Hernandez', 'amandapass', '555-666-7777'),
    ('999 Poplar St', 'kevin@example.com', 'Kevin', 0, 'Young', 'kevinpass', '888-999-0000'),
    ('123 Pine Ave', 'rachel@example.com', 'Rachel', 0, 'Lee', 'rachelpass', '111-333-4444'),
    ('234 Maple Ave', 'daniel@example.com', 'Daniel', 0, 'Garcia', 'danielpass', '777-888-9999'),
    ('345 Birch Ave', 'jennifer@example.com', 'Jennifer', 0, 'Rodriguez', 'jenniferpass', '555-444-3333'),
    ('456 Cedar Ave', 'justin@example.com', 'Justin', 0, 'Nguyen', 'justinpass', '111-222-3333'),
    ('567 Walnut Ave', 'melissa@example.com', 'Melissa', 0, 'Brown', 'melissapass', '999-888-7777'),
    ('678 Spruce Ave', 'matt@example.com', 'Matt', 0, 'Chen', 'mattpass', '777-666-5555'),
    ('789 Ash Ave', 'katie@example.com', 'Katie', 0, 'Kim', 'katiepass', '222-333-4444'),
    ('890 Hickory Ave', 'ryan@example.com', 'Ryan', 0, 'Singh', 'ryanpass', '444-555-6666'),
    ('901 Poplar Ave', 'nicole@example.com', 'Nicole', 0, 'Patel', 'nicolepass', '333-222-1111'),
    ('111 Oak Ave', 'jason@example.com', 'Jason', 1, 'Wilson', 'jasonpass', '111-222-3333'),
    ('222 Oak Ave', 'jessica@example.com', 'Jessica', 1, 'Lopez', 'jessicapass', '444-555-6666');

create table orders(
order_id int primary key,
delivery_status bit,
payment_status bit,
order_placed_date date,
delivery_date date,
user_id int,
constraint f1_user_id foreign key (user_id) references user (user_id)
on delete set null
on update cascade
);

create table farmer(
farmer_id int primary_key,
address varchar(200),
email varchar(20),
firstname varchar(20),
lastname varchar(20),
phone_no varchar(15)
);

INSERT INTO farmer (address, email, firstname, lastname, phone_no) 
VALUES
    ('123 Main St', 'john@example.com', 'John', 'Doe', '123-456-7890'),
    ('456 Elm St', 'jane@example.com', 'Jane', 'Smith', '987-654-3210'),
    ('789 Oak St', 'admin@example.com', 'Admin', 'Admin', '555-555-5555'),
    ('111 Pine St', 'mark@example.com', 'Mark', 'Johnson', '111-222-3333'),
    ('222 Maple St', 'lisa@example.com', 'Lisa', 'Williams', '444-555-6666'),
    ('333 Birch St', 'sam@example.com', 'Sam', 'Taylor', '777-888-9999'),
    ('444 Cedar St', 'emily@example.com', 'Emily', 'Brown', '101-202-3030'),
    ('555 Walnut St', 'michael@example.com', 'Michael', 'Anderson', '404-505-6060'),
    ('666 Spruce St', 'sarah@example.com', 'Sarah', 'Martinez', '707-808-9090'),
    ('777 Ash St', 'chris@example.com', 'Chris', 'Thomas', '111-223-3444'),
    ('888 Hickory St', 'amanda@example.com', 'Amanda', 'Hernandez', '555-666-7777'),
    ('999 Poplar St', 'kevin@example.com', 'Kevin', 'Young', '888-999-0000'),
    ('123 Pine Ave', 'rachel@example.com', 'Rachel', 'Lee', '111-333-4444'),
    ('234 Maple Ave', 'daniel@example.com', 'Daniel', 'Garcia', '777-888-9999'),
    ('345 Birch Ave', 'jennifer@example.com', 'Jennifer', 'Rodriguez', '555-444-3333');

create table order_details(
id int primary key,
amount double(9,2),
order_item varchar(45),
quantity int,
farmer_id int,
order_id int,
constraint f1_farmer_id foreign key (farmer_id) references farmer (farmer_id),
constraint f1_order_id foreign key (order_id) references order (order_id)
on delete set null
on update cascade
);

create table category(
category_id int,
category_name  varchar(50)
);

create table stock_details(
product_id int primary key,
price_per_unit float(9,2),
quantity int,
stock_item varchar(45),
farmer_id int,
category_id int,
constraint f2_farmer_id foreign key (farmer_id) references farmer (farmer_id),
constraint f1_category_id foreign key (category_id) references category (category_id)
on delete set null
on update cascade
);






















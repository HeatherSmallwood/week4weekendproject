CREATE TABLE car(
    serial_number SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    car_year VARCHAR,
    condition VARCHAR );

CREATE TABLE customer(
    customerID SERIAL PRIMARY KEY,
    customer_fullname VARCHAR,
    customer_contact_info VARCHAR
);

CREATE TABLE salesperson(
    salespersonID SERIAL PRIMARY KEY,
    salesperson_fullname VARCHAR,
    salesperson_contact_info VARCHAR
);

CREATE TABLE mechanic(
    mechanicID SERIAL PRIMARY KEY,
    mechanic_fullname VARCHAR,
    mechanic_contact_info VARCHAR
);

CREATE TABLE mechanic_work(
    work_done SERIAL PRIMARY KEY,
    mechanicID SERIAL,
    car_serial_number SERIAL,
    FOREIGN KEY (car_serial_number) REFERENCES car(serial_number)
);

ALTER TABLE mechanic_work
    ADD FOREIGN KEY (mechanicID) REFERENCES mechanic(mechanicID);

-- The alter was done on purpose to practice :)

CREATE TABLE service_record(
    recordID SERIAL PRIMARY KEY,
    car_serial_number SERIAL,
    FOREIGN KEY (car_serial_number) REFERENCES car(serial_number),
    service_description VARCHAR,
    service_date VARCHAR
);

CREATE TABLE service_ticket(
    ticketID SERIAL PRIMARY KEY,
    customerID SERIAL,
    FOREIGN KEY (customerID) REFERENCES customer(customerID),
    car_serial_number SERIAL,
    FOREIGN KEY (car_serial_number) REFERENCES car(serial_number),
    ticket_date VARCHAR
);

CREATE TABLE invoice(
    invoiceID SERIAL PRIMARY KEY,
    salespersonID SERIAL,
    FOREIGN KEY (salespersonID) REFERENCES salesperson(salespersonID),
    customerID SERIAL,
    FOREIGN KEY (customerID) REFERENCES customer(customerID),
    car_serial_number SERIAL,
    FOREIGN KEY (car_serial_number) REFERENCES car(serial_number),
    sale_date VARCHAR,
    total_amount VARCHAR
);
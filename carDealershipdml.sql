INSERT INTO car(
    serial_number,
    make,
    model,
    car_year,
    condition)VALUES(
        4567,'Honda','Accord',2012,'new'
    );

INSERT INTO customer(
    customerID,
    customer_fullname,
    customer_contact_info
) VALUES(
    2244, 'Bob Marley', 'new_customer'
);

INSERT INTO salesperson(
    salespersonID,
    salesperson_fullname,
    salesperson_contact_info
)Values(
    7790, 'Beyonce Knowles-Carter','no_contact_info'
);

INSERT INTO mechanic(
    mechanicID,
    mechanic_fullname,
    mechanic_contact_info
)VALUES(
    8790, 'Busta Rhymes', 'no_contact_info'
);

INSERT INTO mechanic_work(
    work_done,
    mechanicID,
    car_serial_number
)VALUES(
    4444, 8790,4567
);



INSERT INTO service_record(
    recordID,
    car_serial_number,
    service_description,
    service_date
)VALUES(
    9009,4567,'tire replacement',07-07-07
);

INSERT INTO service_ticket(
    ticketID,
    customerID,
    car_serial_number,
    ticket_date
) VALUES(
    2344, 2244,4567,07-08-07
);

INSERT INTO invoice(
    invoiceID,
    salespersonID,
    customerID,
    car_serial_number,
    sale_date,
    total_amount 
)VALUES(
    1255,7790,2244,4567,07-19-05, 30000
);
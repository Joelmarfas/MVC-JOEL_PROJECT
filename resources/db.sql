CREATE TABLE  agents
   (
  agent_code VARCHAR(6) NOT NULL,
	agent_name VARCHAR(40),
	working_area VARCHAR(35),
	comission INT(10),
	phone_no VARCHAR(15),
	country VARCHAR(25),
  PRIMARY KEY (agent_code)
);

-- INSERTIN AGENTS

INSERT INTO agents VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '');
INSERT INTO agents VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO agents VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO agents VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO agents VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO agents VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO agents VALUES ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '');
INSERT INTO agents VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO agents VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO agents VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO agents VALUES ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '');
INSERT INTO agents VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

-- CREATING CUSTOMERS TABLE

CREATE TABLE  customer
   (	customer_code VARCHAR(6) NOT NULL,
	cust_name VARCHAR(40) NOT NULL,
	cust_city CHAR(35),
	working_area VARCHAR(35) NOT NULL,
	cust_country VARCHAR(20) NOT NULL,
	grade INT,
	opening_amt INT(12) NOT NULL,
	receive_amt INT(12) NOT NULL,
	payment_amt INT(12) NOT NULL,
	outstanding_amt INT(12) NOT NULL,
	phone_no VARCHAR(17) NOT NULL,
	agent_code CHAR(6) NOT NULL REFERENCES agents,
  PRIMARY KEY (customer_code)
);

-- INSERT CUSTOMERS

INSERT INTO customer VALUES ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003');
INSERT INTO customer VALUES ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008');
INSERT INTO customer VALUES ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008');
INSERT INTO customer VALUES ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011');
INSERT INTO customer VALUES ('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006');
INSERT INTO customer VALUES ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003');
INSERT INTO customer VALUES ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008');
INSERT INTO customer VALUES ('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005');
INSERT INTO customer VALUES ('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005');
INSERT INTO customer VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010');
INSERT INTO customer VALUES ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002');
INSERT INTO customer VALUES ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010');
INSERT INTO customer VALUES ('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678','A002');
INSERT INTO customer VALUES ('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005');
INSERT INTO customer VALUES ('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006');
INSERT INTO customer VALUES ('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004');
INSERT INTO customer VALUES ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009');
INSERT INTO customer VALUES ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007');
INSERT INTO customer VALUES ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012');
INSERT INTO customer VALUES ('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004');
INSERT INTO customer VALUES ('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004');
INSERT INTO customer VALUES ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002');
INSERT INTO customer VALUES ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001');
INSERT INTO customer VALUES ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007');
INSERT INTO customer VALUES ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

-- CREATING TABLE ORDERS

CREATE TABLE  orders 
   (
        ord_num INT(6) NOT NULL , 
	ord_amount INT(12) NOT NULL, 
	advance_amount INT(12) NOT NULL, 
	ord_date DATE NOT NULL, 
	cust_code VARCHAR(6) NOT NULL REFERENCES customer, 
	agent_code CHAR(6) NOT NULL REFERENCES agents, 
	ord_description VARCHAR(60) NOT NULL,
  PRIMARY KEY (ord_num)
   );

-- INSERTING ORDERS

INSERT INTO orders VALUES('200100', '1000.00', '600.00', '2021-06-25', 'C00013', 'A003', 'SOD');
INSERT INTO orders VALUES('200110', '3000.00', '500.00', '2021-07-21', 'C00019', 'A010', 'SOD');
INSERT INTO orders VALUES('200107', '4500.00', '900.00', '20021-08-12', 'C00007', 'A010', 'SOD');
INSERT INTO orders VALUES('200112', '2000.00', '400.00', '2021-09-23', 'C00016', 'A007', 'SOD'); 
INSERT INTO orders VALUES('200113', '4000.00', '600.00', '2021-08-13', 'C00022', 'A002', 'SOD');
INSERT INTO orders VALUES('200102', '2000.00', '300.00', '2021-09-15', 'C00012', 'A012', 'SOD');
INSERT INTO orders VALUES('200114', '3500.00', '2000.00', '2021-09-03', 'C00002', 'A008', 'SOD');
INSERT INTO orders VALUES('200122', '2500.00', '400.00', '2021-09-04', 'C00003', 'A004', 'SOD');
INSERT INTO orders VALUES('200118', '500.00', '100.00', '2021-09-08', 'C00023', 'A006', 'SOD');
INSERT INTO orders VALUES('200119', '4000.00', '700.00', '2021-09-12', 'C00007', 'A010', 'SOD');
INSERT INTO orders VALUES('200121', '1500.00', '600.00', '2021-06-13', 'C00008', 'A004', 'SOD');

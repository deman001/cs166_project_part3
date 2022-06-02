DROP TABLE Users CASCADE;
DROP TABLE Orders CASCADE;
DROP TABLE Menu CASCADE;
DROP TABLE ItemStatus;
DROP TYPE IF EXISTS UserType AS ENUM('Manager', 'Employee', 'User');

CREATE TABLE Users(
	login char(50) UNIQUE NOT NULL, 
	phoneNum char(16) UNIQUE, 
	password char(50) NOT NULL,
	favItems char(400),
	type UserType NOT NULL,
	PRIMARY KEY(login));

CREATE TABLE Menu(
	itemName char(50) UNIQUE NOT NULL,
	type char(20) NOT NULL,
	price real NOT NULL,
	description char(400),
	imageURL char(256),
	PRIMARY KEY(itemName));

CREATE TABLE Orders(
	orderid serial UNIQUE NOT NULL,
	login char(50), 
	paid boolean,
	timeStampRecieved timestamp NOT NULL,
	total real NOT NULL,
	PRIMARY KEY(orderid));

CREATE TABLE ItemStatus(
	orderid integer,
	itemName char(50), 
	lastUpdated timestamp NOT NULL,
	status char(20), 
	comments char(130), 
	PRIMARY KEY(orderid,itemName),
	FOREIGN KEY(orderid) REFERENCES Orders(orderid),
	FOREIGN KEY(itemName) REFERENCES Menu(itemName));

CREATE TABLE placesOrder(
	orderid integer UNIQUE NOT NULL,
	itemName char(30) NOT NULL,
	PRIMARY KEY(orderid, itemName),
	FOREIGN KEY(orderid) REFERENCES Orders(orderid),
	FOREIGN KEY(itemName) REFERENCES Menu(itemName));

CREATE TABLE favoriteItem(
	login char(50) UNIQUE NOT NULL,
	itemName char(30) NOT NULL,
	PRIMARY KEY(login, itemName),
	FOREIGN KEY(login) REFERENCES Users(login),
	FOREIGN KEY(itemName) REFERENCES Menu(itemName));

ALTER TABLE Users
ADD CONSTRAINT employeeConstrant
FOREIGN KEY(

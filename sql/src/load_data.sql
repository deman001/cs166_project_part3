
COPY MENU
FROM '/extra/ckurp001/cs166/cs166_project/data/menu.csv'
WITH DELIMITER ';';

COPY USERS
FROM '/extra/ckurp001/cs166/cs166_project/data/users.csv'
WITH DELIMITER ';';

COPY ORDERS
FROM '/extra/ckurp001/cs166/cs166_project/data/orders.csv'
WITH DELIMITER ';';
ALTER SEQUENCE orders_orderid_seq RESTART 87257;

COPY ITEMSTATUS
FROM '/extra/ckurp001/cs166/cs166_project/data/itemStatus.csv'
WITH DELIMITER ';';



COPY MENU
FROM '/extra/deman001/P3/cs166_databases_project/data/menu.csv'
WITH DELIMITER ';';

COPY USERS
FROM '/extra/deman001/P3/cs166_databases_project/data/users.csv'
WITH DELIMITER ';';

COPY ORDERS
FROM '/extra/deman001/P3/cs166_databases_project/data/orders.csv'
WITH DELIMITER ';';
ALTER SEQUENCE orders_orderid_seq RESTART 87257;

COPY ITEMSTATUS
FROM '/extra/deman001/P3/cs166_databases_project/data/itemStatus.csv'
WITH DELIMITER ';';


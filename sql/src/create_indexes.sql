CREATE INDEX index1
ON orders
(timeStampRecieved);

CREATE INDEX index2
ON ItemStatus
( orderid );

CREATE INDEX Users_phoneNum
ON Users
(phoneNum);

CREATE INDEX Menu_Type
ON Menu
(Type);

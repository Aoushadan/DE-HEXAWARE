CREATE TABLE product_details(
   product_id    VARCHAR(6) NOT NULL PRIMARY KEY
  ,price         INTEGER  NOT NULL
  ,product_name  VARCHAR(32) NOT NULL
  ,category_id   INTEGER  NOT NULL
  ,segment_id    INTEGER  NOT NULL
  ,style_id      INTEGER  NOT NULL
  ,category_name VARCHAR(6) NOT NULL
  ,segment_name  VARCHAR(6) NOT NULL
  ,style_name    VARCHAR(19) NOT NULL
);
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c4a632',13,'Navy Oversized Jeans - Womens',1,3,7,'Womens','Jeans','Navy Oversized');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e83aa3',32,'Black Straight Jeans - Womens',1,3,8,'Womens','Jeans','Black Straight');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e31d39',10,'Cream Relaxed Jeans - Womens',1,3,9,'Womens','Jeans','Cream Relaxed');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('d5e9a6',23,'Khaki Suit Jacket - Womens',1,4,10,'Womens','Jacket','Khaki Suit');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('72f5d4',19,'Indigo Rain Jacket - Womens',1,4,11,'Womens','Jacket','Indigo Rain');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('9ec847',54,'Grey Fashion Jacket - Womens',1,4,12,'Womens','Jacket','Grey Fashion');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('5d267b',40,'White Tee Shirt - Mens',2,5,13,'Mens','Shirt','White Tee');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c8d436',10,'Teal Button Up Shirt - Mens',2,5,14,'Mens','Shirt','Teal Button Up');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2a2353',57,'Blue Polo Shirt - Mens',2,5,15,'Mens','Shirt','Blue Polo');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('f084eb',36,'Navy Solid Socks - Mens',2,6,16,'Mens','Socks','Navy Solid');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('b9a74d',17,'White Striped Socks - Mens',2,6,17,'Mens','Socks','White Striped');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2feb6b',29,'Pink Fluro Polkadot Socks - Mens',2,6,18,'Mens','Socks','Pink Fluro Polkadot');

CREATE TABLE sales(
   prod_id        VARCHAR(6) NOT NULL 
  ,qty            INTEGER  NOT NULL
  ,price          INTEGER  NOT NULL
  ,discount       INTEGER  NOT NULL
  ,member         VARCHAR(5) NOT NULL
  ,txn_id         VARCHAR(6) NOT NULL
  ,start_txn_time VARCHAR(24) NOT NULL
);
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',4,13,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',4,40,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,17,'true','54f307','2021-02-13T01:59:43.296Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',2,10,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',3,57,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',3,36,21,'true','26cc98','2021-01-19T01:39:00.346Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',1,13,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',5,32,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',1,23,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',3,40,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',4,36,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',4,17,21,'false','ef648d','2021-01-27T02:18:17.165Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',2,13,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',4,36,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2feb6b',2,29,23,'true','fba96f','2021-03-03T00:32:56.054Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',5,13,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',4,10,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',5,19,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('b9a74d',2,17,11,'true','4e9268','2021-01-23T14:18:54.058Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e83aa3',4,32,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',2,23,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c8d436',4,10,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',1,57,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',1,36,4,'true','9717d4','2021-01-29T07:22:13.267Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',3,19,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,14,'false','e9a1dd','2021-03-28T20:01:43.133Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('c4a632',3,13,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',3,10,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',3,23,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('9ec847',3,54,6,'false','003ea6','2021-01-20T14:21:00.979Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('e31d39',5,10,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',4,23,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('2a2353',4,57,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('f084eb',2,36,20,'false','5d749c','2021-03-28T22:24:25.805Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('d5e9a6',5,23,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('72f5d4',1,19,14,'false','cf6517','2021-02-21T21:45:33.350Z');
INSERT INTO sales(prod_id,qty,price,discount,member,txn_id,start_txn_time) VALUES ('5d267b',5,40,14,'false','cf6517','2021-02-21T21:45:33.350Z');

CREATE TABLE product_prices(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,product_id VARCHAR(6) NOT NULL
  ,price      INTEGER  NOT NULL
);
INSERT INTO product_prices(id,product_id,price) VALUES (7,'c4a632',13);
INSERT INTO product_prices(id,product_id,price) VALUES (8,'e83aa3',32);
INSERT INTO product_prices(id,product_id,price) VALUES (9,'e31d39',10);
INSERT INTO product_prices(id,product_id,price) VALUES (10,'d5e9a6',23);
INSERT INTO product_prices(id,product_id,price) VALUES (11,'72f5d4',19);
INSERT INTO product_prices(id,product_id,price) VALUES (12,'9ec847',54);
INSERT INTO product_prices(id,product_id,price) VALUES (13,'5d267b',40);
INSERT INTO product_prices(id,product_id,price) VALUES (14,'c8d436',10);
INSERT INTO product_prices(id,product_id,price) VALUES (15,'2a2353',57);
INSERT INTO product_prices(id,product_id,price) VALUES (16,'f084eb',36);
INSERT INTO product_prices(id,product_id,price) VALUES (17,'b9a74d',17);
INSERT INTO product_prices(id,product_id,price) VALUES (18,'2feb6b',29);

CREATE TABLE product_hierarchy(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,parent_id  INTEGER 
  ,level_text VARCHAR(19) NOT NULL
  ,level_name VARCHAR(8) NOT NULL
);
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (1,NULL,'Womens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (2,NULL,'Mens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (3,1,'Jeans','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (4,1,'Jacket','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (5,2,'Shirt','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (6,2,'Socks','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (7,3,'Navy Oversized','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (8,3,'Black Straight','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (9,3,'Cream Relaxed','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (10,4,'Khaki Suit','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (11,4,'Indigo Rain','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (12,4,'Grey Fashion','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (13,5,'White Tee','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (14,5,'Teal Button Up','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (15,5,'Blue Polo','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (16,6,'Navy Solid','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (17,6,'White Striped','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (18,6,'Pink Fluro Polkadot','Style');

DROP TABLE IF EXISTS "USER" CASCADE;
DROP TABLE IF EXISTS "PRODUCT" CASCADE;
DROP TABLE IF EXISTS "CATEGORY" CASCADE;
DROP TABLE IF EXISTS "CART" CASCADE;
DROP TABLE IF EXISTS "CARTPRODUCT" CASCADE;
DROP TABLE IF EXISTS "ROLE" CASCADE;


CREATE TABLE User(
    userId int AUTO_INCREMENT PRIMARY KEY,
    username text,
    password text,
    roles int
);

CREATE TABLE Product(
    productId int AUTO_INCREMENT PRIMARY KEY,
    productName text,
    price double,
    seller int,
    Category int
);

CREATE TABLE Category(
    categoryId int AUTO_INCREMENT PRIMARY KEY,
    categoryName text
);

CREATE TABLE Cart(
    cartId int AUTO_INCREMENT PRIMARY KEY,
    totalAmount double,
    user int,
    cartProducts int
);

CREATE TABLE CartProduct(
    cpId int AUTO_INCREMENT PRIMARY KEY,
    cart int,
    product int,
    quantity int
);

CREATE TABLE Role(
    roleId int AUTO_INCREMENT PRIMARY KEY,
    role text
);

CREATE TABLE UserRole(
    userId int,
    role int
);

ALTER TABLE User
ADD FOREIGN KEY (roles) REFERENCES UserRole(userId);
ALTER TABLE Product
ADD FOREIGN KEY (Category) REFERENCES Category(categoryId);
ALTER TABLE Product
ADD FOREIGN KEY (seller) REFERENCES User(userId);
ALTER TABLE Cart
ADD FOREIGN KEY (cartProducts) REFERENCES CartProduct(cpId);
ALTER TABLE Cart
ADD FOREIGN KEY (user) REFERENCES User(userId);
ALTER TABLE CartProduct
ADD FOREIGN KEY (product) REFERENCES Product(productId);

INSERT INTO Category (categoryName) VALUES ('Fashion');
INSERT INTO Category (categoryName) VALUES ('Electronics');
INSERT INTO Category (categoryName) VALUES ('Books');
INSERT INTO Category (categoryName) VALUES ('Groceries');
INSERT INTO Category (categoryName) VALUES ('Medicines');

INSERT INTO Role (role) VALUES ('CONSUMER');
INSERT INTO Role (role) VALUES ('SELLER');

INSERT INTO User (username, password) VALUES ('jack', 'pass_word');
INSERT INTO User (username, password) VALUES ('bob', 'pass_word');
INSERT INTO User (username, password) VALUES ('apple', 'pass_word');
INSERT INTO User (username, password) VALUES ('glaxo', 'pass_word');

INSERT INTO Cart (totalAmount, user) VALUES (20, 1);
INSERT INTO Cart (totalAmount, user) VALUES (0, 2);

INSERT INTO UserRole (userId, role) VALUES (1, 1);
INSERT INTO UserRole (userId, role) VALUES (2, 1);
INSERT INTO UserRole (userId, role) VALUES (3, 2);
INSERT INTO UserRole (userId, role) VALUES (4, 2);

INSERT INTO Product (price, productName, Category, seller) VALUES (
29190, 'Apple iPad 10.2 8th Gen WiFi iOS Tablet', 2, 3);
INSERT INTO Product (price, productName, Category, seller) VALUES (
10, 'Crocin pain relief tablet', 5, 4);

INSERT INTO CartProduct (cart, product, quantity) VALUES (1,2,2);







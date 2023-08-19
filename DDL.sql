--drop table Review;
--drop table Returns;
--drop table Transactions;
--drop table Product;
--drop table Buyer;
--drop table Seller;

create table Seller (
seller_id number not null,
shop_name varchar(50) not null,
shop_type varchar(50) not null,
location varchar(50) not null,
contact varchar(50) not null,
primary key(seller_id));


create table Buyer (
buyer_id number not null,
buyer_name varchar(50) not null,
address varchar(50) not null,
mobile varchar(50) not null,
primary key(buyer_id));


create table Product (
product_id number not null,
product_name varchar(50) not null,
seller_id number not null,
price number check(price>0) not null,
primary key(product_id),
foreign key(seller_id) references Seller(seller_id));


create table Transactions (
transaction_no number not null,
buyer_id number not null,
product_id number not null,
quantity number check(quantity>0) not null,
transaction_date date not null,
primary key(transaction_no),
foreign key(buyer_id) references Buyer(buyer_id),
foreign key(product_id) references Product(product_id));


create table Returns (
return_no number not null,
transaction_no number not null,
buyer_id number not null,
product_id number not null,
return_date date not null,
primary key(return_no),
foreign key(buyer_id) references Buyer(buyer_id),
foreign key(product_id) references Product(product_id),
foreign key(transaction_no) references Transactions(transaction_no));


create table Review (
review_no number not null,
buyer_id number not null,
product_id number not null,
rating number check(rating>=1 and rating<=5) not null,
review_date date not null,
primary key(review_no),
foreign key(buyer_id) references Buyer(buyer_id),
foreign key(product_id) references Product(product_id));

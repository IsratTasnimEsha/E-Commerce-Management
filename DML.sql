-- Insert values into Seller table
insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (1, 'All Electronics', 'Electronics', 'Sylhet', '1234567890');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (2, 'Childrens Fashion', 'Clothing', 'Dhaka', '9876543210');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (3, 'Room Furniture', 'Furniture', 'Khulna', '5555555555');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (4, 'Garden Paradise', 'Home and Garden', 'Chittagong', '1112223333');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (5, 'Fresh Foods', 'Grocery', 'Barisal', '4444444444');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (6, 'Tech Zone', 'Electronics', 'Dhaka', '9999999999');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (7, 'Fashion Avenue', 'Clothing', 'Chittagong', '8888888888');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (8, 'Home Decorations', 'Home and Garden', 'Dhaka', '7777777777');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (9, 'Tech Hub', 'Electronics', 'Chittagong', '9999999999');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (10, 'Fashion House', 'Clothing', 'Sylhet', '8888888888');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (11, 'Green Groceries', 'Grocery', 'Dhaka', '5555555555');

insert into Seller (seller_id, shop_name, shop_type, location, contact)
values (12, 'Furniture Bazaar', 'Furniture', 'Chittagong', '1111111111');



-- Insert values into Buyer table
insert into Buyer (buyer_id, buyer_name, address, mobile)
values (1, 'Israt', 'Jaflong, Sylhet', '5555555555');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (2, 'Tasnim', 'Narsingdi, Dhaka', '1111111111');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (3, 'Esha', 'Shibbari, Khulna', '2222222222');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (4, 'Niaj', 'Coxs Bazar, Chittagong', '3333333333');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (5, 'Noor', 'Patuakhali, Barisal', '4444444444');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (6, 'Rafi', 'Dhanmondi, Dhaka', '7777777777');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (7, 'Farah', 'Gulshan, Dhaka', '6666666666');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (8, 'Sakib', 'Comilla', '2222222222');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (9, 'Nadia', 'Rajshahi', '6666666666');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (10, 'Tamanna', 'Dhaka', '7777777777');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (11, 'Rahim', 'Chittagong', '8888888888');

insert into Buyer (buyer_id, buyer_name, address, mobile)
values (12, 'Fahad', 'Dhaka', '9999999999');




-- Insert values into Product table
insert into Product (product_id, product_name, seller_id, price)
values (1, 'iPhone 13 Pro', 1, 110000);

insert into Product (product_id, product_name, seller_id, price)
values (2, 'Samsung Galaxy S21', 1, 14000);

insert into Product (product_id, product_name, seller_id, price)
values (3, 'Leather Jacket', 2, 3500);

insert into Product (product_id, product_name, seller_id, price)
values (4, 'Sofa Set', 3, 25000);

insert into Product (product_id, product_name, seller_id, price)
values (5, 'Flower Seeds', 4, 300);

insert into Product (product_id, product_name, seller_id, price)
values (6, 'Smart Watch', 1, 15000);

insert into Product (product_id, product_name, seller_id, price)
values (7, 'Grocery Box', 5, 50000);

insert into Product (product_id, product_name, seller_id, price)
values (8, 'Headphones', 9, 350);

insert into Product (product_id, product_name, seller_id, price)
values (9, 'T-Shirt', 10, 600);

insert into Product (product_id, product_name, seller_id, price)
values (10, 'Bed', 12, 25000);

insert into Product (product_id, product_name, seller_id, price)
values (11, 'Vegetables', 5, 250);

insert into Product (product_id, product_name, seller_id, price)
values (12, 'Laptop', 1, 85000);



-- Insert values into Transactions table
insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (1, 1, 1, 2, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (2, 1, 3, 5, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (3, 2, 2, 8, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (4, 3, 4, 3, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (5, 3, 6, 6, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (6, 4, 5, 1, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (7, 4, 7, 4, date '2023-05-20');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (8, 5, 8, 7, date '2023-05-21');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (9, 6, 11, 4, date '2023-05-22');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (10, 7, 12, 2, date '2023-05-23');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (11, 8, 9, 5, date '2023-05-24');

insert into Transactions (transaction_no, buyer_id, product_id, quantity, transaction_date)
values (12, 9, 10, 1, date '2023-05-25');



-- Insert values into Returns table
insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (1, 6, 4, 5, date '2023-05-22');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (2, 4, 3, 4, date '2023-05-23');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (3, 3, 2, 2, date '2023-05-25');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (4, 6, 3, 6, date '2023-05-27');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (5, 5, 4, 5, date '2023-05-28');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (6, 2, 1, 3, date '2023-05-11');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (7, 2, 7, 3, date '2023-05-31');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (8, 7, 5, 8, date '2023-05-25');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (9, 9, 6, 11, date '2023-05-26');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (10, 2, 8, 9, date '2023-05-18');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (11, 12, 4, 10, date '2023-05-29');

insert into Returns (return_no, transaction_no, buyer_id, product_id, return_date)
values (12, 10, 7, 12, date '2023-05-10');



-- Insert values into Review table
insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (1, 1, 1, 4, date '2023-05-21');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (2, 1, 3, 5, date '2023-05-22');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (3, 2, 2, 3, date '2023-05-11');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (4, 7, 3, 5, date '2023-05-24');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (5, 3, 4, 4, date '2023-05-23');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (6, 6, 2, 3, date '2023-05-23');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (7, 3, 1, 5, date '2023-05-22');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (8, 3, 6, 2, date '2023-05-22');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (9, 4, 5, 5, date '2023-05-21');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (10, 4, 7, 4, date '2023-05-24');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (11, 5, 8, 4, date '2023-05-24');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (12, 6, 11, 3, date '2023-05-25');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (13, 7, 12, 5, date '2023-05-26');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (14, 8, 9, 2, date '2023-05-27');

insert into Review (review_no, buyer_id, product_id, rating, review_date)
values (15, 9, 10, 4, date '2023-05-18');

--Ques-01
--Find the products with rating <= 3
select Product.product_name, Review.rating
from Product join Review
using (product_id) where Review.rating <= 3;


--Ques-02
--Find the shop with maximum product with rating = 5
select Seller.shop_name
from Seller, Product, Review 
where Seller.seller_id = Product.seller_id
and Product.product_id = Review.product_id
and Review.rating = 5
group by Seller.shop_name
having count(Seller.shop_name)=(
select max(count(Seller.shop_name))
from Seller, Product, Review 
where Seller.seller_id = Product.seller_id
and Product.product_id = Review.product_id
and Review.rating = 5
group by Seller.shop_name);


--Ques-03
--Find buyers whose reviews are invalid
--Review will be invalid if there are mismacthes in product_id, buyer_id, or dates
select Buyer.buyer_id, Buyer.buyer_name, Review.review_no
from Review, Buyer
where Buyer.buyer_id = Review.buyer_id
and Review.review_no
not in (
select Review.review_no
from Review, Transactions, Buyer
where Buyer.buyer_id = Transactions.buyer_id 
and Buyer.buyer_id = Review.buyer_id
and Transactions.buyer_id = Review.buyer_id
and Transactions.product_id = Review.product_id
and Transactions.transaction_date < Review.review_date);


--Ques-04
--Find returned products
--Return will be invalid if there are mismacthes in product_id, buyer_id, transaction_no or dates
select Returns.return_no, Returns.transaction_no, Transactions.buyer_id, Transactions.product_id
from Returns, Transactions, Buyer
where Buyer.buyer_id = Transactions.buyer_id 
and Returns.transaction_no = Transactions.transaction_no
and Buyer.buyer_id = Returns.buyer_id
and Transactions.buyer_id = Returns.buyer_id
and Transactions.product_id = Returns.product_id
and Transactions.transaction_date < Returns.return_date;


--Ques-05
--Find shop with the highest net revenue
select Seller.shop_name, sum(Product.price * Transactions.quantity) as Net_Revenue
from Seller, Product, Transactions
where Seller.seller_id = Product.seller_id
and Product.product_id = Transactions.product_id
group by Seller.shop_name
having sum(Product.price * Transactions.quantity)=(
select max(sum(Product.price * Transactions.quantity))
from Seller, Product, Transactions
where Seller.seller_id = Product.seller_id
and Product.product_id = Transactions.product_id
group by Seller.shop_name);


--Ques-06
--Find gross revenue of each shop in descending order
select Seller.shop_name, sum(Product.price * Transactions.quantity) as gross_revenue
from Seller, Product, Transactions
where Seller.seller_id = Product.seller_id
and Product.product_id = Transactions.product_id
and Transactions.transaction_no
not in (
select Returns.transaction_no
from Returns, Transactions, Buyer
where Buyer.buyer_id = Transactions.buyer_id 
and Returns.transaction_no = Transactions.transaction_no
and Buyer.buyer_id = Returns.buyer_id
and Transactions.buyer_id = Returns.buyer_id
and Transactions.product_id = Returns.product_id
and Transactions.transaction_date < Returns.return_date)
group by Seller.shop_name order by gross_revenue desc;


--Ques-07
--Check inter-city transactions
select Seller.shop_name, Seller.location, Buyer.buyer_name, Buyer.address, Transactions.transaction_no
from Transactions, Product, Seller, Buyer
where Transactions.product_id = Product.product_id
and Product.seller_id = Seller.seller_id
and Transactions.buyer_id = Buyer.buyer_id
and Buyer.address like '%' || Seller.location || '%';


--Ques-08
--Check if buyer or seller is from Dhaka
select Seller.shop_name, Seller.location, Buyer.buyer_name, Buyer.address, Transactions.transaction_no
from Transactions, Product, Seller, Buyer
where Transactions.product_id = Product.product_id
and Product.seller_id = Seller.seller_id
and Transactions.buyer_id = Buyer.buyer_id
and Buyer.address like '%Dhaka%'
union
select Seller.shop_name, Seller.location, Buyer.buyer_name, Buyer.address, Transactions.transaction_no
from Transactions, Product, Seller, Buyer
where Transactions.product_id = Product.product_id
and Product.seller_id = Seller.seller_id
and Transactions.buyer_id = Buyer.buyer_id
and Seller.location like '%Dhaka%';


--Ques-09
--Find some cheaper products from expensive shops
--Product price < all of avg(product price) 
select Seller.shop_name, Product.product_name, Product.price
from Seller, Product
where Seller.seller_id = Product.seller_id
and Product.price 
< all (
select avg(Product.price)
from Seller, Product
where Seller.seller_id = Product.seller_id
having avg(Product.price) >= 10000
group by Product.seller_id)
and Product.seller_id 
in (
select Seller.seller_id
from Seller, Product
where Seller.seller_id = Product.seller_id
having avg(Product.price) >= 10000
group by Product.seller_id);


--Delete
delete from Review 
where Review.review_no 
not in (
select Review.review_no
from Review, Transactions, Buyer
where Buyer.buyer_id = Transactions.buyer_id 
and Buyer.buyer_id = Review.buyer_id
and Transactions.buyer_id = Review.buyer_id
and Transactions.product_id = Review.product_id
and Transactions.transaction_date < Review.review_date);
select * from Review;


--Update
update Review set rating=2
where review_no=1; 
select * from Review;


--Alter
alter table Review add rating2 number;
select * from Review;
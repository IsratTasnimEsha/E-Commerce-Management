set serveroutput on


declare
    --Variable declaration
    counter number;
    revenue number;

    seller_row Seller%rowtype;
    
    shop_name2 Seller.shop_name % type;
    type array is varray(10) of Seller.shop_name % type;
    seller_array array := array(); 

    return_no Returns.return_no%type := 13;
    transaction_no Returns.transaction_no%type := 5;
    buyer_id Returns.buyer_id%type := 8;
    product_id Returns.product_id%type := 3;
    return_date Returns.return_date%type := date '2023-05-30';

    cursor seller_cursor is
    select Seller.shop_name, sum(Product.price * Transactions.quantity)
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
    group by Seller.shop_name;
    


begin
    --Print value
    select Seller.shop_name
    into seller_row.shop_name
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
    dbms_output.put_line (
        'Shop with the highest net revenue: ' || seller_row.shop_name);



    --Insert and set default value
    --insert into Returns
    --values (return_no, transaction_no, buyer_id, product_id, return_date);


    
    --Loop
    counter := 1;
    for i in 1..10
    loop
        select shop_name
        into shop_name2
        from Seller 
        where seller_id = i;
        seller_array.extend();
        seller_array(counter) := shop_name2;
        counter := counter + 1;
    end loop;
    
    counter := 1;
    while counter <= seller_array.count
        loop
            dbms_output.put_line (counter || '-> ' || seller_array(counter));
            counter := counter + 1;
        end loop;



    --Cursor, if-else
    open seller_cursor;
    fetch seller_cursor into seller_row.shop_name, revenue;
    while seller_cursor % found loop
    if revenue >= 50000
        then
        dbms_output.put_line (
            seller_row.shop_name || ' is a big business with revenue ' || revenue);
    elsif revenue >= 25000
        then
        dbms_output.put_line (
            seller_row.shop_name || ' is a medium business with revenue ' || revenue);
    else
        dbms_output.put_line (
            seller_row.shop_name || ' is a small business with revenue ' || revenue);
        end if;
    fetch seller_cursor into seller_row.shop_name, revenue;
    end loop;
    close seller_cursor;
    
    --Function
    dbms_output.put_line (CalculateTotalPrice(1));
    
    --Procedure
    GetProductDetails(1);

end;
/

create or replace procedure GetProductDetails(p_product_id in number)
as
    v_product_name varchar(50);
    v_seller_name varchar(50);
    v_price number;
begin
    select product_name, shop_name, price
    into v_product_name, v_seller_name, v_price
    from Product, Seller
    where Product.seller_id = Seller.seller_id
    and Product.product_id = p_product_id;
    
    dbms_output.put_line('product: ' || v_product_name || 
        'seller: ' || v_seller_name || 'price: ' || v_price);
end;
/

create or replace function CalculateTotalPrice(p_transaction_no in number)
return number
is
    v_total_price number := 0;
begin
    select sum(quantity * price)
    into v_total_price
    from transactions, product
    where transactions.product_id = product.product_id
    and transactions.transaction_no = p_transaction_no;

    return v_total_price;
end;
/

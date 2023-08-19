/*<TOAD_FILE_CHUNK>*/
create or replace trigger InsertBuyerOnSellerInsert
after insert on seller
for each row
begin
    insert into buyer (buyer_id, buyer_name, address, mobile)
    values (:new.seller_id, :new.shop_name, :new.location, :new.contact);
end;
/

/*<TOAD_FILE_CHUNK>*/
begin
    delete from Seller where seller_id=15;
    delete from Buyer where buyer_id=15;

    --Trigger
    insert into Seller (seller_id, shop_name, shop_type, location, contact)
    values (15, 'Hasina Mamon', 'Clothing', 'Shibpur', '1234567890');  
end;
/

select * from Seller;
select * from Buyer;


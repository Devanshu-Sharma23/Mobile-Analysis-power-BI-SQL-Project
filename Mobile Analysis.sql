create database shanu;
use shanu;
select * from mobile;

-- check mobile feature and price list 
create view check_mobile_feature_and_price_list as

select phone_name,price from mobile;

select * from check_mobile_feature_and_price_list;

-- find out the price of 5 most expensive phones
create view 5_most_expensive_phones as
select * from mobile order by price desc limit 5;
select * from 5_most_expensive_phones;


-- find out the price of 5 most cheapest phones
create view  5_most_cheapest_phones as
select * from mobile order by price asc limit 5;

select * from 5_most_cheapest_phones;


-- list of top 5 samsumg phones with price and all features
create view  top_5_samsumg_phones as
select * from mobile where brands ="samsumg";
select * from mobile where brands ="samsumg" order by price desc limit 5;
select * from top_5_samsumg_phones;

-- must have android list the top 5 high price android phone

select * from mobile where operating_system_type = "Android" order by price desc limit 5;

-- must have android list the top 5 lower price android phone
select * from mobile where operating_system_type = "Android" order by price asc limit 5;

-- must have IOS list the top 5 high price IOS phone
select * from mobile where operating_system_type = "IOS" order by price desc limit 5;


-- must have IOS list the top 5 lower price IOS phone
select * from mobile where operating_system_type = "IOS" order by price asc limit 5;

-- write a query which phone support 5g and also top 5 phone with 5g support 
select * from mobile;

select * from mobile where 5G_Availability = "yes" order by price desc limit 5;

-- Total price of all mobile is to be found with brand name

select brands,sum(price) from mobile group by brands;


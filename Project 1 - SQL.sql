-- 1
create database ecommerce;
-- 2
use ecommerce;
select count(*) from users_data;
-- 3
describe users_data;
-- 4
select * from users_data limit 100;
-- 5
select count(distinct country ) country_count, 
count( distinct language) language_count from users_data;
-- 6
select gender,sum(socialNbFollowers)  from users_data group by gender;
-- 7
select count(hasProfilePicture)  count from users_data where hasProfilePicture = "TRUE"
union
select count(hasAnyApp) Any_App from users_data where hasAnyApp = "TRUE"
union
select count(hasAndroidApp) AndroidApp from users_data where hasAndroidApp = "TRUE"
union
select count(hasIosApp) IosApp from users_data where hasIosApp = "TRUE";
-- 8
select country, count(productsBought) Total_Buyers from users_data where productsBought > 0 
group by country order by count(productsBought) desc;
-- 9
select country, count(productsSold) Total_Sellers from users_data where productsSold > 0 
group by country order by count(productsSold);
-- 10
select country, sum(productsPassRate) MaximumPassRate from users_data 
group by country order by sum(productsPassRate) desc limit 10;
-- 11
select  language, count(language) No_of_Users  from users_data group by language ;
-- 12
select sum(socialProductsLiked) from users_data where gender='F'
union
select sum(productsWished) from users_data where gender='F';
-- 13
select count(productsSold) count from users_data where gender='M' and productsSold >0
union
select count(productsBought) from users_data where gender='M' and productsBought >0;
-- 14
select country, count(productsBought) NoOfBuyers from users_data 
group by country order by count(productsBought) desc limit 1;
-- 15
select country, count(productsSold) ZeroSellers from users_data where productsSold = 0
group by country  order by ZeroSellers desc limit 10;
-- 16
select identifierHash, daysSinceLastLogin  from users_data 
order by daysSinceLastLogin limit 110;
-- 17
select count(identifierHash) FemaleNotLogged from users_data 
where gender = 'F' and daysSinceLastLogin >= 100;
-- 18
select country,count(identifierHash) Female from users_data 
where gender = 'F' group by country;
-- 19
select country,count(identifierHash) Male from users_data 
where gender = 'M' group by country;
-- 20
select country, avg(productsSold) , avg(productsBought) from users_data 
where gender = 'M' group by country;









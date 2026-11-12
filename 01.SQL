--from sh.customers, display customer id, first name, last name, gender and marital status for all female customers.
select cust_id, CUST_FIRST_NAME, cust_last_name, CUST_GENDER, cust_marital_status
from sh.CUSTOMERS
where CUST_GENDER='F'

--From SH.CUSTOMERS, find customers whose last name starts with S and whose year of birth is greater than 1970.
 select cust_last_name, cust_year_of_birth
 from sh.CUSTOMERS
 where cust_last_name like 'S%' and cust_year_of_birth > 1970

 --From SH.PRODUCTS, display product ID, product name, category, and list price for products whose list price is between 100 and 500.
 select PROD_ID, PROD_NAME, PROD_CATEGORY, PROD_LIST_PRICE 
 from SH.products
 where PROD_LIST_PRICE > 100 and PROD_LIST_PRICE < 500 

 --From SH.PRODUCTS, find products whose minimum price is less than 50 and whose status is available.
 select PROD_NAME, prod_min_price, prod_status
 from sh.products
 where prod_min_price < 50 and prod_status='STATUS'

 --From SH.SALES, display product ID, customer ID, quantity sold, and amount sold for transactions where the amount sold is greater than 1000.
 select PROD_ID, CUST_ID, QUANTITY_SOLD, AMOUNT_SOLD
 from sh.SALES
 where AMOUNT_SOLD > 1000

 --From SH.SALES, find transactions where the quantity sold is greater than 2 and the channel ID is 3.
 select * 
 from SH.SALES
 where QUANTITY_SOLD > 2 and channel_id = 3

 --From SH.CHANNELS, display channel ID and channel description for channels whose description contains the word Direct.
 select CHANNEL_ID, CHANNEL_DESC
 from SH.channels
 where CHANNEL_DESC like '%Direct%'

 --From SH.PROMOTIONS, display promotion ID, promotion name, cost, and category where promotion cost is greater than 1000.
 select PROMO_ID, PROMO_NAME, PROMO_COST, PROMO_CATEGORY
 from sh.PROMOTIONS
 where PROMO_COST > 1000

 --From SH.PROMOTIONS, find promotions whose end date is greater than their begin date and whose promotion cost is greater than 500.
 select PROMO_NAME, promo_begin_date, promo_end_date, PROMO_COST
 from SH.promotions
 where promo_end_date > promo_begin_date and promo_cost > 500

 --From SH.COUNTRIES, display country ID, country name, and region ID for countries belonging to region ID 52790.
 select COUNTRY_ID,COUNTRY_NAME, COUNTRY_REGION_ID
 from SH.countries
 where COUNTRY_REGION_ID = 52790

 --From SH.TIMES, display time ID, day name, calendar month name, and calendar year for dates belonging to the year 2000.
 select time_id, day_name, CALENDAR_MONTH_NAME, CALENDAR_YEAR
 from sh.TIMES
 where CALENDAR_YEAR = 2000

 --From SH.TIMES, find all dates where the calendar month name is December and the calendar year is 2001.
 select Time_ID, CALENDAR_MONTH_NAME, CALENDAR_YEAR
 from SH.TIMES
 where CALENDAR_MONTH_NAME = 'December' and CALENDAR_YEAR = 2001

 --From SH.COSTS, display product ID, time ID, unit cost, and unit price where unit price is greater than unit cost.
 select PROD_ID, TIME_ID, UNIT_COST, UNIT_PRICE
 from sh.COSTS
 where UNIT_PRICE > UNIT_COST

 --From SH.COSTS, find records where unit cost is greater than 100 and unit price is less than 1000.
 select * 
 from SH.COSTS
 where UNIT_COST > 100 and UNIT_PRICE < 1000

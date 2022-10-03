/* Student name:  Charles Lewis             */

/* SECTION 1 CREATE TABLE STATEMENTS */
 
create table adck758Idol_group 
(
id integer primary key,
group_name varchar(255),
gender_identity varchar(255),
social_media_followers integer,
fandom_name varchar(255),
number_of_members integer,
combined_net_worth double,
entertainment_agency varchar(255),
country_of_origin varchar(255)
);
 
create table adck758Song (
id integer primary key,
group_id integer,
song_name varchar(255),
youtube_views integer,
foreign key (group_id) references adck758Idol_group (ID)
);

create table adck758Concert (
id integer,
country varchar(255),
city varchar(255),
number_of_attendees integer,
ticket_price float,
total_revenue float,
primary key (ID));

create table adck758Group_concert (
idol_group_id integer,
concert_id integer,
foreign key (concert_id) references adck758Concert (id),
foreign key (idol_group_id) references adck758Idol_group (id)
);

create table adck758Item (
id integer primary key,
concert_id integer,
foreign key (concert_id) references adck758Concert (id)
);

create table adck758Purchase_event (
id integer primary key
);

create table adck758Item_purchase_event (
item_id integer,
purchase_event_id integer,
foreign key (purchase_event_id) references adck758Purchase_event (id),
foreign key (item_id) references adck758Item (id)
);

create table adck758Item_order (
ID integer primary key,
payment_methods_id integer,
item_id integer,
item_quantity integer,
purchase_date timestamp,
number_of_items integer,
purchase_event_id integer,
foreign key (purchase_event_id) references adck758Purchase_event (id),
foreign key (item_id) references adck758Item (id)
);

create table adck758Account_user (
id integer primary key,
gender_identity varchar(255),
full_name varchar(255),
date_of_birth timestamp,
username varchar(255),
email_address varchar(255),
age integer
);

create table adck758Payment_methods (
id integer primary key,
user_id integer,
credit_debit_network varchar(255),
credit_debit_number varchar(255),
expiry_date varchar(255),
foreign key (user_id) references adck758Account_user (id)
);
 

/* SECTION 2 INSERT STATEMENTS */

insert into adck758Account_user (id, gender_identity, full_name, date_of_birth, username, email_address, age) 
values (1,'male','Ujerq Aqwew','1990-01-01','ejherjekrjekr','aqwereujerq@gmail.com',20),
(2,'female','Kelsie Ineq','2000-12-27','jskajdkfjkdaf','kelsieineq@gmail.com',21),(3,'pangender','Serq Dork', '1999-12-27','fjkdjfkdfjdkf','serqdork@gmail.com',22),
(4,'bigender', 'Uoe Qeqe', '1998-12-27', 'jekrjekrjekjrker','qeqeuoe@gmail.com',23),(5,'male','Aup Borp', '1997-12-27','auieorueoreoriooeioreioroe','oeiroioeir@gmail.com',24), 
(6,'male', 'Unilo Qwerty', '1996-12-27','oioioioio','qwertyunilo@gmail.com',25), (7,'agender', 'And Then','1995-12-27','erqrerqerer','andthen@gmail.com',26), 
(8,'male','Hello There','1994-12-27','hellothere','hellothere@gmail.com',27),(9,'female','Goodbye There','1993-12-27','goodbyethere','goodbyethere@gmail.com',28),
(10,'androgyne', 'Hi There','1992-12-27','hithere','hithere@gmail.com',29);

insert into adck758Concert (city, country, id, number_of_attendees, ticket_price, total_revenue) values 
('London','United Kingdom',1,1200, 200.3, 1000000.2),('Lima','Peru',2,2000,210.2, 1500093.22),('Paris','France',3,3000,400.21,200000.13),
('Tokyo','Japan',4,2000,300.12,12032302.31),('Buenos Aires','Argentina',5,4000,230.32,132432434343.33),('Aspen','United States',6,3121,800.32,31212121212.21),
('Santiago','Chile',7,1212,322.0,1203333.21),('Reyjavik','Iceland',8,333,212.12,223322.0),('Iqaluit','Canada',9,111,232.3,333333.21),
('Taipei','Taiwan',10,3321,313.3,112222.33);

insert into adck758Idol_group (id,group_name,gender_identity,social_media_followers,fandom_name,number_of_members,combined_net_worth,entertainment_agency,country_of_origin)
values
(1,'BTS','male',57800000,'ARMY',7,100000000,"Big Hit Music","South Korea"),
(2,'KAACHI','female',132000,'UNI-k',4,221000,"FrontRow Records","United Kingdom"),
(3,'LOONA','female',2000000,'Orbit',12,20000000,'Blockberry Creative','South Korea'),
(4,'TXT','male',10000000,'Moa',5,90000,"Big Hit Music","South Korea"),
(5,"WEEEKLY","female",998000,"Daileee",7,28000,"IST entertainment","South Korea"),
(6,"BLACKPINK","female",44000000,"BLINK",4,40000000,"YG Entertainment","South Korea"),
(7,"ITZY","female",14000000,"MIDZY",5,770000,"JYP Entertainment","South Korea"),
(8,"BRAVE GIRLS","female",237000,"FEARLESS",4, 145000,"Brave Entertainment","South Korea"),
(9,"Stray Kids","male","18000000","STAY",8,17000000,"JYP Entertainment", "South Korea"), 
(10,"TWICE","female",23000000,"ONCE",9,35000000,"JYP Entertainment","South Korea");

insert into adck758Group_concert (concert_id,idol_group_id) values (1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10),(8,2);

insert into adck758Purchase_event (id) values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

insert into adck758Item values (1,1),(2,null),(3,3),(4,null),(5,5),(6,6),(7,null),(8,null),(9,null),(10,10);

insert into adck758Item_purchase_event (item_id,purchase_event_id) values (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);

insert into adck758Payment_methods (credit_debit_network,credit_debit_number,expiry_date,id,user_id) values 
("Mastercard","2323353429932020","05/22",1,1),
("American Express", "0303209220204030","05/23",2,2),
("Visa", "3939202011113311", "05/24",3,3),
("Wells Fargo","8282929201018939", "05/25",4,4),
("Mastercard", "2020199102033193", "03/23",5,5),
("Citi", "2020993993980192", "01/23", 6,6), 
("Discover", "0300293819214993", "02/22",7,7),
("U.S. Bank", "9393020320938978", "03/23", 8, 8), 
("Mastercard", "7473929382819295", "02/24", 9, 9), 
("Visa", "3939202039130202", "04/23",10,10);

insert into adck758Item_order (id,item_id,item_quantity,number_of_items,payment_methods_id,purchase_date,purchase_event_id)
values (1,1,1,1,1,"2021-12-27",1),(2,2,2,2,2,"2021-12-27",2),
(3,3,3,3,3,"2021-13-27",3),(4,4,4,4,4,"2021-12-27",4),(5,5,5,5,5,"2021-12-27",5),
(6,6,6,6,6,"2021-15-27",6), (7,7,7,7,7,"2021-16-27",7),(8,8,8,8,8,"2021-02-27",8), (9,9,9,9,9,"2021-12-27",9), (10,10,10,10,10,"2021-12-27",10);

insert into adck758Song (group_id,id,song_name,youtube_views)
values (1,1,"FIRE",718271614),(2,2,"Photo Magic",4263400),(3,3,"Love Cherry Motion",9256801),
(4,4,"We Lost The Summer", 25778088), (5,5,"After School",115198228), (6,6,"Lovesick Girls",
525748769),(7,7,"LOCO",123123321),(8,8,"Chi Mat Ba Ram",37015358),(9,9,"Christmas EveL",50421455),(10,10,"The Feels",174217135);
              
/* SECTION 3 UPDATE STATEMENTS */

update adck758Account_user
set age = 31
where ID = 5;

update adck758Concert 
set ticket_price = 100 
where country like "Taiwan";

/* SECTION 4 SINGLE TABLE QUERIES */

/* 1) List all items which are not concerts */

select adck758Item.id 
from adck758Item 
where adck758Item.concert_id is null;

/* 2) Select the countries where the concert ticket price was higher than 300.   */

select country 
from adck758Concert 
where ticket_price > 300;

/* 3) Display all credit/debit card networks in alphabetical order  */

select credit_debit_network 
from adck758Payment_methods 
group by credit_debit_network
order by credit_debit_network ASC;

/* 4) Determine the average ticket price of a concert. */

select avg(ticket_price) 
from adck758Concert; 

/* 5) List the combined net worth (net worth of all individual members of a group combined) of groups beginning with “B” */

select combined_net_worth 
from adck758Idol_group 
where group_name like "B%";

/* 6) How many countries where there are concerts
begin with the letter U?. */

select count(country) 
from adck758Concert 
where country like "U%";

/* SECTION 5 MULTIPLE TABLE QUERIES */

/* 1) 
List the number of attendees in the concert performed by Idol Group 3. */

select adck758Concert.number_of_attendees 
from adck758Concert 
inner join adck758Group_concert on adck758Concert.id = adck758Group_concert.concert_id 
where adck758Group_concert.idol_group_id = 3;

/* 2) List the names of groups which have songs starting with 'The' */

select group_name
from adck758Idol_group 
where id in 
(select group_id 
from adck758Song 
where song_name like "The %");

/* 3) List alphabetically the groups that performed songs whose name begins with the letter 'L'. */

select group_name
from adck758Song right join adck758Idol_group on adck758Song.group_id = adck758Idol_group.id 
where adck758Song.song_name like "L%" 
order by group_name ASC;

/* 4) Select a full name with expiry date from users and their payment methods for each credit / debit card network except Mastercard */

select adck758Account_user.full_name, adck758Payment_methods.credit_debit_network, adck758Payment_methods.expiry_date
from adck758Account_user inner join adck758Payment_methods on adck758Account_user.id = adck758Payment_methods.id 
group by adck758Payment_methods.credit_debit_network having adck758Payment_methods.credit_debit_network != "Mastercard";

/* 5) List the groups whose song had more than 100 million views. */
select group_name 
from adck758Idol_group 
inner join adck758Song on adck758Song.group_id = adck758Idol_group.id 
where adck758Song.youtube_views > 100000000;

/* 6) Which group played in Japan? */

select adck758Idol_group.group_name 
from adck758Idol_group, adck758Group_concert, adck758Concert 
where adck758Idol_group.id = adck758Group_concert.idol_group_id 
and adck758Concert.id = adck758Group_concert.concert_id 
and adck758Concert.country like "Japan";

/* SECTION 6 DELETE ROWS (make sure the SQL is commented out in this section) */

/*

delete from adck758Payment_methods where ID = 5;

delete from adck758Payment_methods
where credit_debit_network like "mastercard";

delete from adck758Payment_methods;
delete from adck758Account_user;
delete from adck758Item_order;
delete from adck758Item_purchase_event;
delete from adck758Item;
delete from adck758Purchase_event;
delete from adck758Group_concert;
delete from adck758Concert;
delete from adck758Song;
delete from adck758Idol_group;

*/

/* SECTION 7 DROP TABLES (make sure the SQL is commented out in this section) */

/*

drop table adck758Payment_methods;
drop table adck758Account_user;
drop table adck758Item_order;
drop table adck758Item_purchase_event;
drop table adck758Item;
drop table adck758Purchase_event;
drop table adck758Group_concert;
drop table adck758Concert;
drop table adck758Song;
drop table adck758Idol_group;

*/
create database vehicle_insurance 

create table signup_details(
id int primary key identity(1,1),
[name] varchar(20) not null,
email varchar(50) not null,
[password] varchar(20) not null

)

create table policy_details(
policy_no int primary key identity(100100,4),
policy_type varchar(50) not null,
vehicle_type varchar(15) not null,
full_name varchar(50) not null,
age int not null,
[address] varchar(100) not null,
city varchar(20) not null,
[state] varchar(20) not null,
pincode int not null,
mobile_no int not null,
email varchar(30) not null,
vehicle_number varchar(20) not null,
vehicle_company varchar(20) not null,
vehicle_model varchar(20) not null,
vehicel_purchasedate date not null,
vehicle_color varchar(10) not null,
policy_insured_name varchar(50) not null,
insurance_company varchar(50) not null,
policy_startdate date not null,
policy_endate date not null,

)

select * from signup_details
select * from policy_details



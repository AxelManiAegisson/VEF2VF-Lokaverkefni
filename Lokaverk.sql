create database 2507002960_LokaverkVEF;

create table admin(
user varchar(20) not null primary key,
pass varchar(20) not null,
nafn varchar(20) not null
);

insert into admin(user, pass, nafn)
values("admin","admin","Axel");

create table frett(
id int(11) auto_increment primary key,
titill varchar(50) not null,
frett text not null,
hofundur varchar(50) not null,
user varchar(20) not null,
foreign key (user) references admin(user)
);

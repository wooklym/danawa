create table if not exists user (
	id int primary key auto_increment,
	email varchar(255),
	pw varchar(255),
	created_at timestamp default current_timestamp,
	updated_at timestamp default current_timestamp
);

create table if not exists maker (
	pk int primary key auto_increment,
	name varchar(255)
);

create table if not exists cpu (
	pk int primary key auto_increment,
	name varchar(255)
);

create table if not exists lcd (
	pk int primary key auto_increment,
	name varchar(255)
);

create table if not exists os (
	pk int primary key auto_increment,
	name varchar(255)
);

create table if not exists product (
	pk int primary key auto_increment,
	name varchar(255),
	price varchar(255),
	weight double,
	maker_pk int,
	cpu_pk int,
	lcd_pk int,
	os_pk int,
	created_at timestamp default current_timestamp,
	updated_at timestamp default current_timestamp,
	foreign key (maker_pk) references maker(pk),
	foreign key (cpu_pk) references cpu(pk),
	foreign key (lcd_pk) references lcd(pk),
	foreign key (os_pk) references os(pk)
);

insert into user (email, pw, created_at, updated_at) values (1234, 1234, now(), now());
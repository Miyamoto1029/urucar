set names utf8;
set foreign_key_checks = 0;
drop database if exists urucar;

create database if not exists urucar;

use urucar;
drop table if exists login_user_transaction;
create table login_user_transaction(
	id int not null primary key auto_increment,
	login_id varchar(16) unique,
	login_pass varchar(16),
	user_name varchar(50),
	admin_flg varchar(1),
	insert_date datetime,
	updated_date datetime
);
drop table if exists item_info_transaction;
create table item_info_transaction(
	id int not null primary key auto_increment,
	item_name varchar(30),
	item_price int,
	item_stock int,
	image_file_path varchar(100),
	image_file_name varchar(50),
	insert_date datetime,
	update_date datetime
);
drop table if exists user_buy_item_transaction;
create table user_buy_item_transaction(
	id int not null primary key auto_increment,
	item_transaction_id int,
	total_price int,
	total_count int,
	user_master_id varchar(16),
	pay varchar(30),
	insert_date datetime,
	delete_date datetime
);

INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic001.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic002.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic003.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic004.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic005.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic006.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 2, "./pic", "pic007.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic008.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic009.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic010.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic011.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 2, "./pic", "pic014.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 3, "./pic", "pic015.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic016.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic024.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic025.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic026.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic027.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic028.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic029.jpg");
INSERT INTO item_info_transaction(item_name, item_price, item_stock, image_file_path, image_file_name) VALUES("car", 500000, 1, "./pic", "pic030.jpg");


INSERT INTO login_user_transaction(login_id, login_pass, user_name,admin_flg) VALUES("test01", "test01", "test01","0");


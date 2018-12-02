SET NAMES UTF8;
DROP DATABASE IF EXISTS dior;
CREATE DATABASE dior CHARSET=UTF8;
USE dior;
#网站的基本信息
CREATE TABLE dior_site_info(
	site_name VARCHAR(16) PRIMARY KEY,
	logo VARCHAR(64),
	copyright VARCHAR(64)
);
INSERT INTO dior_site_info VALUES("迪奥","null","null");
#轮播图
CREATE TABLE dior_carousel_item(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(16),
	url VARCHAR(128),
	title VARCHAR(16),
	subtitle VARCHAR(16)
);
INSERT INTO dior_carousel_item VALUES
	(null,"","","男士时装","东京2019早秋系列时装秀"),
	(null,"","","香氛","迪奥真我纯香香水"),
	(null,"","","男士时装","KIM JONES的首个系列"),
	(null,"","","null","DIOR迪奥后台彩妆 全新上市"),
	(null,"","","","迪奥圣诞星愿珍礼"),
	(null,"","","圣诞精选系列","女士时尚礼物");
#导航内容
CREATE TABLE dior_navbar_item(
	name VARCHAR(16) PRIMARY KEY,
	url VARCHAR(64),
	title VARCHAR(32)
);
INSERT INTO dior_navbar_item VALUES
	("me","我","2"),
	("de","你","1"),
	("huan","它","3"),
	("lai","他","4"); 
#用户信息
CREATE TABLE dior_user_register(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	phone VARCHAR(16),
	authCode VARCHAR(16),
	nodeCode VARCHAR(8),
	password VARCHAR(32)
);
#板块分类
CREATE TABLE dior_classify(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	cname VARCHAR(6)
);
INSERT INTO dior_classify VALUES
	(null,"女士"),
	(null,"男士"),
	(null,"童装");
#板块包含的种类
CREATE TABLE dior_classify_item(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	ipic VARCHAR(32),
	url VARCHAR(128),
	title VARCHAR(32)
	#外键
);
INSERT INTO dior_classify_item VALUES
	(null,"","成衣","1"),
	(null,"","迪奥真我纯香香水","1"),
	(null,"","手提包","1"),
	(null,"","首饰","1"),
	(null,"","迪奥圣诞星原珍礼","1"),
	(null,"","2019夏季系列","2"),
	(null,"","DIOR迪奥旷野男士香水系列","2"),
	(null,"","运动鞋","2"),
	(null,"","手提包","2"),
	(null,"","2019春夏季系列","3"),
	(null,"","婴儿","3"),
	(null,"","女童","3"),
	(null,"","男童","3");
#商品分类
CREATE TABLE dior_classify_product(
	clid INT PRIMARY KEY AUTO_INCREMENT,
	clname VARCHAR(12)
);
INSERT INTO dior_classify_product VALUES
	(NULL,"女士"),
	(NULL,"男士"),
	(NULL,"童装"),
	(NULL,"礼物"),
	(NULL,"最新消息&展览"),
	(NULL,"品牌历史&精湛工艺");
#商品详情
CREATE TABLE dior_product_item(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	classify-id INT,
	pname VARCHAR(32),
	title VARCHAR(32),
	subtitle VARCHAR(64),
	price DECIMAL(10,2),

	spec VARCHAR(32),       #规格颜色
	promise VARCHAR(64),    #服务承诺
	details VARCHAR(1024),    #详情
	count BIGINT,

	shelf_time BIGINT,          #上架时间
	sold_count INT,             #已售出的数量
	is_onsale BOOLEAN           #是否促销中
);
#商品图片
CREATE TABLE dior_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,              
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);

USE kcsj_12_17;

DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  username VARCHAR(64) COMMENT '姓名',
  nickname VARCHAR(64) COMMENT '昵称',
  password VARCHAR(64) COMMENT '密码',
  birthday DATETIME COMMENT '生日',
  email VARCHAR(64) COMMENT '邮箱',
  create_time DATETIME COMMENT '创建时间',
  valid VARCHAR(1) COMMENT '是否有效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';


DROP TABLE IF EXISTS product;
CREATE TABLE product(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  name VARCHAR(256) NOT NULL COMMENT '商品名',
  cost INT(10) NOT NULL COMMENT '成本',
  price INT(10) NOT NULL COMMENT '售价',
  factory VARCHAR(100) not null DEFAULT '',
  imageUrl VARCHAR(100) NOT NULL COMMENT '图片链接(七牛云)',
  createTime DATETIME COMMENT '创建时间',
  valid ENUM('Y', 'N') COMMENT '是否有效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';


DROP TABLE IF EXISTS category;
CREATE TABLE category(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  name VARCHAR(256) NOT NULL COMMENT '分类名',
  createTime DATETIME COMMENT '创建时间',
  valid ENUM('Y', 'N') COMMENT '是否有效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表';


DROP TABLE IF EXISTS product_category;
CREATE TABLE product_category(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  product_id int(10) NOT NULL COMMENT '商品编号',
  category_id INT(10) NOT NULL COMMENT '分类编号',
  create_time DATETIME COMMENT '创建时间',
  valid VARCHAR(1) COMMENT '是否有效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类对应表';






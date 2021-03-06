
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


DROP TABLE IF EXISTS manager;
CREATE TABLE manager(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  username VARCHAR(64) NOT NULL COMMENT '用户名',
  password VARCHAR(128) NOT NULL COMMENT '密码',
  phone VARCHAR(24) NOT NULL COMMENT '手机号',
  email VARCHAR(56) NOT NULL COMMENT '邮箱',
  valid ENUM('Y', 'N') COMMENT '是否有效',
  lastLoinTime DATETIME COMMENT '最后登录时间',
  createTime DATETIME COMMENT '创建时间',
  UNIQUE KEY idx_uname (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT= '后台工作人员表';

DROP TABLE IF EXISTS role;
CREATE TABLE role(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT '编号',
  name VARCHAR(64) NOT NULL COMMENT '角色名称',
  description VARCHAR(128) COMMENT '角色描述',
  valid ENUM('Y', 'N') COMMENT '是否有效',
  createTime DATETIME COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT= '角色表';


DROP TABLE IF EXISTS manager_role;
CREATE TABLE manager_role(
  id INT PRIMARY KEY AUTO_INCREMENT COMMENT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT= '后台用户-角色对应关系表';


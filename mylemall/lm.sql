SET NAMES UTF8;
DROP DATABASE IF EXISTS lm;
CREATE DATABASE lm CHARSET=UTF8;
USE lm;


/**用户信息**/
CREATE TABLE lm_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  gender INT                  #性别  0-女  1-男
);
INSERT INTO lm_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560','0');


/****首页轮播广告商品****/
CREATE TABLE lm_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64)
);
INSERT INTO lm_index_carousel VALUES
(NULL, 'img/index/lunbo1.jpg','轮播广告商品1'),
(NULL, 'img/index/lunbo2.jpg','轮播广告商品2'),
(NULL, 'img/index/lunbo3.jpg','轮播广告商品3'),
(NULL, 'img/index/lunbo4.jpg','轮播广告商品4');


/****首页商品****/
CREATE TABLE lm_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2)
);
INSERT INTO lm_index_product VALUES
(NULL, 'X65L', '125%超高色域 | 4K HDR超高清画质', 'img/index/product_2.jpg',4099),
(NULL, 'X50 Pro', '4K HDR超清真彩 | 16GB 高速闪存', 'img/index/product_3.jpg',2599),
(NULL, 'X40L', 'HDR高动态范围 | 16GB超大存储', 'img/index/product_4.jpg',1699),
(NULL, 'X55L', '4K HDR超高清画质 | 16GB超大存储', 'img/index/product_5.jpg',799),
(NULL, 'X43L', 'Mstar四核处理器 | 16GB超大存储', 'img/index/product_6.jpg',1899),
(NULL, '乐视三合一体感摄像头', '来自未来科技的体感摄像头', 'img/index/f2_img1.jpg',599),
(NULL, '乐视体感手枪', '为射击游戏而生的操控设备', 'img/index/f2_img2.jpg',299),
(NULL, '乐视路由器', '高通芯片性能更稳定', 'img/index/f2_img3.jpg',119),
(NULL, '超4 x70 云底座', '高通芯片性能更稳定', 'img/index/f2_img4.jpg',369),
(NULL, '固定式壁挂 LS065NN3', '高通芯片性能更稳定', 'img/index/f2_img5.jpg',99),
(NULL, '旋转壁挂支架LS050NN2P', '高通芯片性能更稳定', 'img/index/f2_img6.jpg',89);






















/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t048`;
CREATE DATABASE IF NOT EXISTS `t048` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t048`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(2, 'picture2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(3, 'picture3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dengguangbaoxiu`;
CREATE TABLE IF NOT EXISTS `dengguangbaoxiu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `dengguangleixing` varchar(200) DEFAULT NULL COMMENT '灯光类型',
  `shifouweixiu` varchar(200) DEFAULT NULL COMMENT '是否维修',
  `weixiushijian` datetime DEFAULT NULL COMMENT '维修时间',
  `dengguangjutiweizhi` longtext COMMENT '灯光具体位置',
  `dengguangsunhaichengdu` varchar(200) DEFAULT NULL COMMENT '灯光损害程度',
  `beizhu` longtext COMMENT '备注',
  `weixiulianxidianhua` varchar(200) DEFAULT NULL COMMENT '维修联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='灯光保修';

DELETE FROM `dengguangbaoxiu`;
INSERT INTO `dengguangbaoxiu` (`id`, `addtime`, `shebeimingcheng`, `dengguangleixing`, `shifouweixiu`, `weixiushijian`, `dengguangjutiweizhi`, `dengguangsunhaichengdu`, `beizhu`, `weixiulianxidianhua`) VALUES
	(101, '2021-04-05 16:13:49', '设备名称1', '灯光类型1', '维修', '2021-04-06 00:13:49', '灯光具体位置1', '未损坏', '备注1', '13823888881'),
	(102, '2021-04-05 16:13:49', '设备名称2', '灯光类型2', '维修', '2021-04-06 00:13:49', '灯光具体位置2', '未损坏', '备注2', '13823888882'),
	(103, '2021-04-05 16:13:49', '设备名称3', '灯光类型3', '维修', '2021-04-06 00:13:49', '灯光具体位置3', '未损坏', '备注3', '13823888883'),
	(104, '2021-04-05 16:13:49', '设备名称4', '灯光类型4', '维修', '2021-04-06 00:13:49', '灯光具体位置4', '未损坏', '备注4', '13823888884'),
	(105, '2021-04-05 16:13:49', '设备名称5', '灯光类型5', '维修', '2021-04-06 00:13:49', '灯光具体位置5', '未损坏', '备注5', '13823888885'),
	(106, '2021-04-05 16:13:49', '设备名称6', '灯光类型6', '维修', '2021-04-06 00:13:49', '灯光具体位置6', '未损坏', '备注6', '13823888886');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1705316162305 DEFAULT CHARSET=utf8mb3 COMMENT='体育论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(111, '2021-04-05 16:13:49', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(112, '2021-04-05 16:13:49', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(113, '2021-04-05 16:13:49', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(114, '2021-04-05 16:13:49', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(115, '2021-04-05 16:13:49', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(116, '2021-04-05 16:13:49', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1705316162304, '2024-01-15 10:56:02', NULL, '666', 114, 11, '学生1', NULL);

DROP TABLE IF EXISTS `huodongyuyue`;
CREATE TABLE IF NOT EXISTS `huodongyuyue` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebumen` varchar(200) DEFAULT NULL COMMENT '预约部门',
  `yuyuechangdi` varchar(200) DEFAULT NULL COMMENT '预约场地',
  `huodongneirong` longtext COMMENT '活动内容',
  `yuyuexiangqing` longtext COMMENT '预约详情',
  `yuyueshijianduan` varchar(200) DEFAULT NULL COMMENT '预约时间段',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='活动预约';

DELETE FROM `huodongyuyue`;
INSERT INTO `huodongyuyue` (`id`, `addtime`, `yuyuebumen`, `yuyuechangdi`, `huodongneirong`, `yuyuexiangqing`, `yuyueshijianduan`, `xuehao`, `xingming`, `nianjibanji`, `tijiaoshijian`, `fengmiantu`, `sfsh`, `shhf`) VALUES
	(91, '2021-04-05 16:13:49', '预约部门1', '预约场地1', '活动内容1', '预约详情1', '预约时间段1', '学号1', '姓名1', '年级班级1', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu1.jpg', '是', ''),
	(92, '2021-04-05 16:13:49', '预约部门2', '预约场地2', '活动内容2', '预约详情2', '预约时间段2', '学号2', '姓名2', '年级班级2', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu2.jpg', '是', ''),
	(93, '2021-04-05 16:13:49', '预约部门3', '预约场地3', '活动内容3', '预约详情3', '预约时间段3', '学号3', '姓名3', '年级班级3', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu3.jpg', '是', ''),
	(94, '2021-04-05 16:13:49', '预约部门4', '预约场地4', '活动内容4', '预约详情4', '预约时间段4', '学号4', '姓名4', '年级班级4', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu4.jpg', '是', ''),
	(95, '2021-04-05 16:13:49', '预约部门5', '预约场地5', '活动内容5', '预约详情5', '预约时间段5', '学号5', '姓名5', '年级班级5', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu5.jpg', '是', ''),
	(96, '2021-04-05 16:13:49', '预约部门6', '预约场地6', '活动内容6', '预约详情6', '预约时间段6', '学号6', '姓名6', '年级班级6', '2021-04-06 00:13:49', 'http://localhost:8080/springboot2yx3h/upload/huodongyuyue_fengmiantu6.jpg', '是', '');

DROP TABLE IF EXISTS `jinrudengji`;
CREATE TABLE IF NOT EXISTS `jinrudengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiyuguanjinrushijian` datetime DEFAULT NULL COMMENT '体育馆进入时间',
  `tiwen` float DEFAULT NULL COMMENT '体温',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='进入登记';

DELETE FROM `jinrudengji`;
INSERT INTO `jinrudengji` (`id`, `addtime`, `tiyuguanjinrushijian`, `tiwen`, `xuehao`, `nianjibanji`, `xingming`, `zhaopian`, `userid`) VALUES
	(71, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 1, '学号1', '年级班级1', '姓名1', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian1.jpg', 1),
	(72, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 2, '学号2', '年级班级2', '姓名2', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian2.jpg', 2),
	(73, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 3, '学号3', '年级班级3', '姓名3', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian3.jpg', 3),
	(74, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 4, '学号4', '年级班级4', '姓名4', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian4.jpg', 4),
	(75, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 5, '学号5', '年级班级5', '姓名5', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian5.jpg', 5),
	(76, '2021-04-05 16:13:49', '2021-04-06 00:13:49', 6, '学号6', '年级班级6', '姓名6', 'http://localhost:8080/springboot2yx3h/upload/jinrudengji_zhaopian6.jpg', 6);

DROP TABLE IF EXISTS `likaidengji`;
CREATE TABLE IF NOT EXISTS `likaidengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `likaitiyuguanshijian` varchar(200) DEFAULT NULL COMMENT '离开体育馆时间',
  `tiwen` float DEFAULT NULL COMMENT '体温',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='离开登记';

DELETE FROM `likaidengji`;
INSERT INTO `likaidengji` (`id`, `addtime`, `likaitiyuguanshijian`, `tiwen`, `xuehao`, `nianjibanji`, `xingming`, `zhaopian`, `userid`) VALUES
	(81, '2021-04-05 16:13:49', '离开体育馆时间1', 1, '学号1', '年级班级1', '姓名1', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian1.jpg', 1),
	(82, '2021-04-05 16:13:49', '离开体育馆时间2', 2, '学号2', '年级班级2', '姓名2', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian2.jpg', 2),
	(83, '2021-04-05 16:13:49', '离开体育馆时间3', 3, '学号3', '年级班级3', '姓名3', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian3.jpg', 3),
	(84, '2021-04-05 16:13:49', '离开体育馆时间4', 4, '学号4', '年级班级4', '姓名4', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian4.jpg', 4),
	(85, '2021-04-05 16:13:49', '离开体育馆时间5', 5, '学号5', '年级班级5', '姓名5', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian5.jpg', 5),
	(86, '2021-04-05 16:13:49', '离开体育馆时间6', 6, '学号6', '年级班级6', '姓名6', 'http://localhost:8080/springboot2yx3h/upload/likaidengji_zhaopian6.jpg', 6);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='体育资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-04-05 16:13:49', '标题1', '简介1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容1'),
	(122, '2021-04-05 16:13:49', '标题2', '简介2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容2'),
	(123, '2021-04-05 16:13:49', '标题3', '简介3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容3'),
	(124, '2021-04-05 16:13:49', '标题4', '简介4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容4'),
	(125, '2021-04-05 16:13:49', '标题5', '简介5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容5'),
	(126, '2021-04-05 16:13:49', '标题6', '简介6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容6');

DROP TABLE IF EXISTS `qicai`;
CREATE TABLE IF NOT EXISTS `qicai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaifenlei` varchar(200) DEFAULT NULL COMMENT '器材分类',
  `qicaizhuyishixiang` longtext COMMENT '器材注意事项',
  `qicaishuoming` longtext COMMENT '器材说明',
  `qicaitupian` varchar(200) DEFAULT NULL COMMENT '器材图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='器材';

DELETE FROM `qicai`;
INSERT INTO `qicai` (`id`, `addtime`, `qicaibianhao`, `qicaimingcheng`, `qicaifenlei`, `qicaizhuyishixiang`, `qicaishuoming`, `qicaitupian`) VALUES
	(21, '2021-04-05 16:13:49', '器材编号1', '器材名称1', '器材分类1', '器材注意事项1', '器材说明1', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian1.jpg'),
	(22, '2021-04-05 16:13:49', '器材编号2', '器材名称2', '器材分类2', '器材注意事项2', '器材说明2', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian2.jpg'),
	(23, '2021-04-05 16:13:49', '器材编号3', '器材名称3', '器材分类3', '器材注意事项3', '器材说明3', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian3.jpg'),
	(24, '2021-04-05 16:13:49', '器材编号4', '器材名称4', '器材分类4', '器材注意事项4', '器材说明4', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian4.jpg'),
	(25, '2021-04-05 16:13:49', '器材编号5', '器材名称5', '器材分类5', '器材注意事项5', '器材说明5', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian5.jpg'),
	(26, '2021-04-05 16:13:49', '器材编号6', '器材名称6', '器材分类6', '器材注意事项6', '器材说明6', 'http://localhost:8080/springboot2yx3h/upload/qicai_qicaitupian6.jpg');

DROP TABLE IF EXISTS `qicaifenlei`;
CREATE TABLE IF NOT EXISTS `qicaifenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='器材分类';

DELETE FROM `qicaifenlei`;
INSERT INTO `qicaifenlei` (`id`, `addtime`, `fenlei`) VALUES
	(51, '2021-04-05 16:13:49', '分类1'),
	(52, '2021-04-05 16:13:49', '分类2'),
	(53, '2021-04-05 16:13:49', '分类3'),
	(54, '2021-04-05 16:13:49', '分类4'),
	(55, '2021-04-05 16:13:49', '分类5'),
	(56, '2021-04-05 16:13:49', '分类6');

DROP TABLE IF EXISTS `qicaiguihai`;
CREATE TABLE IF NOT EXISTS `qicaiguihai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaizhuyishixiang` varchar(200) DEFAULT NULL COMMENT '器材注意事项',
  `qicaifenlei` varchar(200) DEFAULT NULL COMMENT '器材分类',
  `guihaishijian` datetime DEFAULT NULL COMMENT '归还时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `beizhu` longtext COMMENT '备注',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='器材归还';

DELETE FROM `qicaiguihai`;
INSERT INTO `qicaiguihai` (`id`, `addtime`, `qicaibianhao`, `qicaimingcheng`, `qicaizhuyishixiang`, `qicaifenlei`, `guihaishijian`, `xuehao`, `xingming`, `nianjibanji`, `beizhu`, `userid`) VALUES
	(41, '2021-04-05 16:13:49', '器材编号1', '器材名称1', '器材注意事项1', '器材分类1', '2021-04-06 00:13:49', '学号1', '姓名1', '年级班级1', '备注1', 1),
	(42, '2021-04-05 16:13:49', '器材编号2', '器材名称2', '器材注意事项2', '器材分类2', '2021-04-06 00:13:49', '学号2', '姓名2', '年级班级2', '备注2', 2),
	(43, '2021-04-05 16:13:49', '器材编号3', '器材名称3', '器材注意事项3', '器材分类3', '2021-04-06 00:13:49', '学号3', '姓名3', '年级班级3', '备注3', 3),
	(44, '2021-04-05 16:13:49', '器材编号4', '器材名称4', '器材注意事项4', '器材分类4', '2021-04-06 00:13:49', '学号4', '姓名4', '年级班级4', '备注4', 4),
	(45, '2021-04-05 16:13:49', '器材编号5', '器材名称5', '器材注意事项5', '器材分类5', '2021-04-06 00:13:49', '学号5', '姓名5', '年级班级5', '备注5', 5),
	(46, '2021-04-05 16:13:49', '器材编号6', '器材名称6', '器材注意事项6', '器材分类6', '2021-04-06 00:13:49', '学号6', '姓名6', '年级班级6', '备注6', 6);

DROP TABLE IF EXISTS `qicaijiechu`;
CREATE TABLE IF NOT EXISTS `qicaijiechu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) NOT NULL COMMENT '器材名称',
  `qicaifenlei` varchar(200) DEFAULT NULL COMMENT '器材分类',
  `qicaizhuyishixiang` varchar(200) DEFAULT NULL COMMENT '器材注意事项',
  `jiechushijian` datetime DEFAULT NULL COMMENT '借出时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `beizhu` longtext COMMENT '备注',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='器材借出';

DELETE FROM `qicaijiechu`;
INSERT INTO `qicaijiechu` (`id`, `addtime`, `qicaibianhao`, `qicaimingcheng`, `qicaifenlei`, `qicaizhuyishixiang`, `jiechushijian`, `xuehao`, `xingming`, `nianjibanji`, `beizhu`, `userid`) VALUES
	(31, '2021-04-05 16:13:49', '器材编号1', '器材名称1', '器材分类1', '器材注意事项1', '2021-04-06 00:13:49', '学号1', '姓名1', '年级班级1', '备注1', 1),
	(32, '2021-04-05 16:13:49', '器材编号2', '器材名称2', '器材分类2', '器材注意事项2', '2021-04-06 00:13:49', '学号2', '姓名2', '年级班级2', '备注2', 2),
	(33, '2021-04-05 16:13:49', '器材编号3', '器材名称3', '器材分类3', '器材注意事项3', '2021-04-06 00:13:49', '学号3', '姓名3', '年级班级3', '备注3', 3),
	(34, '2021-04-05 16:13:49', '器材编号4', '器材名称4', '器材分类4', '器材注意事项4', '2021-04-06 00:13:49', '学号4', '姓名4', '年级班级4', '备注4', 4),
	(35, '2021-04-05 16:13:49', '器材编号5', '器材名称5', '器材分类5', '器材注意事项5', '2021-04-06 00:13:49', '学号5', '姓名5', '年级班级5', '备注5', 5),
	(36, '2021-04-05 16:13:49', '器材编号6', '器材名称6', '器材分类6', '器材注意事项6', '2021-04-06 00:13:49', '学号6', '姓名6', '年级班级6', '备注6', 6);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'iqfn8542h0vwesce8pvmzvqhsgycoudn', '2024-01-15 10:24:27', '2024-01-15 11:54:12'),
	(2, 11, '学生1', 'xuesheng', '学生', 'bkmok21mt0ol75tjhcn1quh8gspz56ux', '2024-01-15 10:30:30', '2024-01-15 11:55:42');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-05 16:13:49');

DROP TABLE IF EXISTS `xiaoduiqiandao`;
CREATE TABLE IF NOT EXISTS `xiaoduiqiandao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='校队签到';

DELETE FROM `xiaoduiqiandao`;
INSERT INTO `xiaoduiqiandao` (`id`, `addtime`, `qiandaoshijian`, `xuehao`, `xingming`, `nianjibanji`, `zhaopian`, `userid`, `longitude`, `latitude`, `fulladdress`) VALUES
	(61, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号1', '姓名1', '年级班级1', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian1.jpg', 1, 1, 1, '宇宙银河系地球1号'),
	(62, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号2', '姓名2', '年级班级2', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian2.jpg', 2, 2, 2, '宇宙银河系地球2号'),
	(63, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号3', '姓名3', '年级班级3', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian3.jpg', 3, 3, 3, '宇宙银河系地球3号'),
	(64, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号4', '姓名4', '年级班级4', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian4.jpg', 4, 4, 4, '宇宙银河系地球4号'),
	(65, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号5', '姓名5', '年级班级5', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian5.jpg', 5, 5, 5, '宇宙银河系地球5号'),
	(66, '2021-04-05 16:13:49', '2021-04-06 00:13:49', '学号6', '姓名6', '年级班级6', 'http://localhost:8080/springboot2yx3h/upload/xiaoduiqiandao_zhaopian6.jpg', 6, 6, 6, '宇宙银河系地球6号');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nianjibanji` varchar(200) DEFAULT NULL COMMENT '年级班级',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `nianjibanji`, `xingming`, `xingbie`, `shoujihaoma`, `youxiang`, `zhaopian`, `beizhu`) VALUES
	(11, '2021-04-05 16:13:49', '学生1', '123456', '年级班级1', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian1.jpg', '备注1'),
	(12, '2021-04-05 16:13:49', '学生2', '123456', '年级班级2', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian2.jpg', '备注2'),
	(13, '2021-04-05 16:13:49', '学生3', '123456', '年级班级3', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian3.jpg', '备注3'),
	(14, '2021-04-05 16:13:49', '学生4', '123456', '年级班级4', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian4.jpg', '备注4'),
	(15, '2021-04-05 16:13:49', '学生5', '123456', '年级班级5', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian5.jpg', '备注5'),
	(16, '2021-04-05 16:13:49', '学生6', '123456', '年级班级6', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springboot2yx3h/upload/xuesheng_zhaopian6.jpg', '备注6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

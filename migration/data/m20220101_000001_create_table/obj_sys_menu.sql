/*
SQLyog Ultimate
MySQL - 10.6.5-MariaDB-1:10.6.5+maria~focal : Database - wk3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`pid`,`path`,`menu_name`,`icon`,`menu_type`,`query`,`order_sort`,`status`,`api`,`method`,`component`,`visible`,`is_cache`,`is_frame`,`is_data_scope`,`remark`,`created_at`,`updated_at`,`deleted_at`) values 
('00TV8ENLC2DL61K03MS9LT04F3','00UDF5ES6C4NFHC07PM9GCVTEB','user','用户管理','user','C',NULL,1201,'1','system/user/list','GET','system/user/index','1','1','0','0','用户管理','2022-01-15 09:59:03','2022-01-26 11:33:20',NULL),
('00TV8FT34RNV9T5PUSHHOVF56R','00UDF5ES6C4NFHC07PM9GCVTEB','role','角色管理','peoples','C',NULL,1204,'1','system/role/list','GET','system/role/index','1','1','0','0','角色管理','2022-01-15 10:00:20','2022-01-26 11:33:48',NULL),
('00TV8H55BU243CFAFK9O9GKL5P','00UDF5ES6C4NFHC07PM9GCVTEB','dept','部门管理','tree','C',NULL,1202,'1','system/dept/list','GET','system/dept/index','1','1','0','0','部门管理','2022-01-15 10:01:42','2022-01-26 11:33:31',NULL),
('00TV8HV6G76KBTOJ74AM5BPFS1','00UDF5ES6C4NFHC07PM9GCVTEB','post','岗位管理','post','C',NULL,1203,'1','system/post/list','GET','system/post/index','1','1','0','0','岗位管理','2022-01-15 10:02:35','2022-01-26 11:33:38',NULL),
('00TV8J02HNJMAUDJOV5F02BV35','00UDGAK2ESG0UUFHII2UV2JCTD','dict','字典管理','dict','C',NULL,11200,'1','system/dict/list','GET','system/dict/index','1','1','0','0','字典管理','2022-01-15 10:03:43','2022-02-09 16:39:35',NULL),
('00UDF1SCLDT1FESNLIRG0IVD3B','0','monitor','系统监控','table','M',NULL,60000,'1','monitor','','','1','1','0','0','系统监控','2022-01-26 10:48:25','2022-02-13 20:02:55',NULL),
('00UDF5ES6C4NFHC07PM9GCVTEB','00UDGE80NBMO4ST8TJMECI0A73','auth','用户数据','people','M',NULL,12000,'1','system_auth','','','1','1','0','0','用户数据','2022-01-26 10:52:20','2022-02-09 16:38:32',NULL),
('00UDFVHR632BT4PVUGAO6UOSPN','00UDF1SCLDT1FESNLIRG0IVD3B','login_info','登录日志','logininfor','C','',61000,'1','monitor/logininfor/list','GET','monitor/logininfor/index','1','1','1','0','登录日志','2022-01-26 11:20:50','2022-02-13 20:03:09',NULL),
('00UDGAK2ESG0UUFHII2UV2JCTD','00UDGE80NBMO4ST8TJMECI0A73','basic','基础数据','table','M',NULL,11000,'1','M-sys-basic','','','1','1','0','0','基础数据','2022-01-26 11:32:55','2022-02-09 16:40:28',NULL),
('00UDGE80NBMO4ST8TJMECI0A73','0','system','系统管理','system','M',NULL,10000,'1','M-sys','','','1','1','0','0','系统管理',NULL,'2022-02-09 16:40:14',NULL),
('00UDGE80NBMO4SV8TJMF9J8DM3','00UDGAK2ESG0UUFHII2UV2JCTD','menu','菜单管理','tree-table','C',NULL,11100,'1','M-sys-basic-menu','','system/menu/index','1','1','0','0','菜单管理',NULL,'2022-02-09 16:54:53',NULL),
('00ULIS5OED0KGME1B8N38519RG','00UDF1SCLDT1FESNLIRG0IVD3B','online','在线用户','online','C','',64000,'1','system/online/list','GET','monitor/online/index','1','1','0','0','在线用户','2022-02-01 18:09:51','2022-02-13 20:03:31',NULL),
('00UOEO8SVBTSFML8CLSDJR9PLK','00UDF1SCLDT1FESNLIRG0IVD3B','job','定时任务','job','C',NULL,65000,'1','system/job/list','GET','monitor/job/index','1','1','0','0','定时任务','2022-02-03 23:41:13','2022-02-13 20:03:47',NULL),
('00UVPJ8H374OKE77M4EBTHOGIV','00UDGAK2ESG0UUFHII2UV2JCTD','auth_list','权限查询','language','C',NULL,11600,'1','system/menu/auth_list','GET','system/menu/auth','1','1','0','0','权限列表','2022-02-09 16:29:35','2022-02-09 16:39:45',NULL),
('00UVPQPD8ALGBK6BCGTLLLK63U','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单列表','','F',NULL,11101,'1','system/menu/list','GET','','1','1','0','0','菜单列表api','2022-02-09 16:37:49','2022-02-09 16:39:22',NULL),
('00UVQGL51TCNS3AQ78O8495K0S','00TV8ENLC2DL61K03MS9LT04F3','','添加用户','','F',NULL,12103,'1','system/user/add','PUT','','1','1','0','0','添加用户','2022-02-09 17:01:42',NULL,NULL),
('00V54I1ONABMQL25B3TJF7V3LV','00UDF1SCLDT1FESNLIRG0IVD3B','operlog','操作日志','form','C',NULL,61100,'1','M-monitor-operlog','','monitor/operlog/index','1','1','0','0','操作日志','2022-02-13 20:05:09','2022-02-13 20:08:10',NULL),
('00VLT6969VANQLSOVCSQKH58LK','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-列表','','F',NULL,61101,'1','system/oper_log/list','GET','','1','1','0','0','操作日志-列表','2022-02-26 20:41:48',NULL,NULL),
('00VLT7BST1JD6KM37L7GHC6I5B','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-删除','','F',NULL,61103,'1','system/oper_log/delete','DELETE','','1','1','0','0','操作日志-删除','2022-02-26 20:42:59',NULL,NULL),
('00VLT9G6TBM3M239CJDG8E22HG','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-清空','','F',NULL,61105,'1','system/oper_log/clean','DELETE','','1','1','0','0','操作日志-清空','2022-02-26 20:45:19',NULL,NULL),
('00VLTD9D4DDHCGC3S9D984PL9B','00V54I1ONABMQL25B3TJF7V3LV','','详细查看按钮','','F',NULL,61107,'1','sys-operlog-query','button','','1','1','0','0','详细查看按钮','2022-02-26 20:49:27','2022-02-26 21:06:55',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

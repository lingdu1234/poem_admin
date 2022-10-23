/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.9.2-MariaDB : Database - poem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`pid`,`path`,`menu_name`,`icon`,`menu_type`,`query`,`order_sort`,`status`,`api`,`method`,`component`,`visible`,`is_cache`,`log_method`,`data_cache_method`,`is_frame`,`data_scope`,`remark`,`created_at`,`updated_at`,`deleted_at`) values 
('00TV8ENLC2DL61K03MS9LT04F3','00UDF5ES6C4NFHC07PM9GCVTEB','user-manage','用户管理','user','C',NULL,12100,'1','M-sys-user','','system/auth/user-manage','1','1','0','0','0','0','用户管理','2022-01-15 09:59:03','2022-10-15 16:40:48',NULL),
('00TV8FT34RNV9T5PUSHHOVF56R','00UDF5ES6C4NFHC07PM9GCVTEB','role-manage','角色管理','peoples','C',NULL,12400,'1','M-sys-role','','system/auth/role-manage','1','1','0','0','0','0','角色管理','2022-01-15 10:00:20','2022-10-16 18:38:02',NULL),
('00TV8H55BU243CFAFK9O9GKL5P','00UDF5ES6C4NFHC07PM9GCVTEB','dept-manage','部门管理','tree','C',NULL,12200,'1','M-sys-dept','','system/auth/dept-manage','1','1','0','0','0','0','部门管理','2022-01-15 10:01:42','2022-10-16 13:29:40',NULL),
('00TV8HV6G76KBTOJ74AM5BPFS1','00UDF5ES6C4NFHC07PM9GCVTEB','post-manage','岗位管理','post','C',NULL,12300,'1','M-sys-post','','system/auth/post-manage','1','1','0','0','0','0','岗位管理','2022-01-15 10:02:35','2022-10-16 16:46:36',NULL),
('00TV8J02HNJMAUDJOV5F02BV35','00UDGAK2ESG0UUFHII2UV2JCTD','dict','字典管理','dict','C',NULL,11200,'1','M-sys-dict','','system/dict/type','1','1','0','0','0','0','字典管理','2022-01-15 10:03:43','2022-10-15 16:24:15',NULL),
('00UDF1SCLDT1FESNLIRG0IVD3B','0','monitor','系统监控','table','M',NULL,60000,'1','M-monitor','','','1','1','0','0','0','0','系统监控','2022-01-26 10:48:25','2022-03-03 09:08:27',NULL),
('00UDF5ES6C4NFHC07PM9GCVTEB','00UDGE80NBMO4ST8TJMECI0A73','auth','用户数据','people','M',NULL,12000,'1','system_auth','','','1','1','0','0','0','0','用户数据','2022-01-26 10:52:20','2022-02-09 16:38:32',NULL),
('00UDFVHR632BT4PVUGAO6UOSPN','00UDF1SCLDT1FESNLIRG0IVD3B','login-log','登录日志','logininfor','C','',61000,'1','M-monitor-logininfor','','system/monitor/login-log','1','1','0','0','1','0','登录日志','2022-01-26 11:20:50','2022-10-17 16:41:08',NULL),
('00UDGAK2ESG0UUFHII2UV2JCTD','00UDGE80NBMO4ST8TJMECI0A73','basic','基础数据','table','M',NULL,11000,'1','M-sys-basic','','','1','1','0','0','0','0','基础数据','2022-01-26 11:32:55','2022-02-09 16:40:28',NULL),
('00UDGE80NBMO4ST8TJMECI0A73','0','system','系统管理','system','M',NULL,10000,'1','M-sys','','','1','1','0','0','0','0','系统管理',NULL,'2022-02-09 16:40:14',NULL),
('00UDGE80NBMO4SV8TJMF9J8DM3','00UDGAK2ESG0UUFHII2UV2JCTD','menu-manage','菜单管理','tree-table','C',NULL,11100,'1','M-sys-basic-menu','','system/menu/menu-manage','1','1','0','0','0','0','菜单管理',NULL,'2022-10-15 16:25:21',NULL),
('00ULIS5OED0KGME1B8N38519RG','00UDF1SCLDT1FESNLIRG0IVD3B','online-user','在线用户','online','C','',64000,'1','M-sys-online','','system/monitor/online-user','1','1','0','0','0','0','在线用户','2022-02-01 18:09:51','2022-10-17 21:00:01',NULL),
('00UOEO8SVBTSFML8CLSDJR9PLK','00UDF1SCLDT1FESNLIRG0IVD3B','scheduled-tasks','定时任务','job','C',NULL,65000,'1','M-sys-job','','system/monitor/scheduled-tasks','1','1','0','0','0','0','定时任务','2022-02-03 23:41:13','2022-10-17 21:36:41',NULL),
('00UVPJ8H374OKE77M4EBTHOGIV','00UDGAK2ESG0UUFHII2UV2JCTD','auth_list','权限查询','language','C',NULL,11600,'1','M-sys-menAuth','','system/menu/auth','1','1','0','0','0','0','权限列表','2022-02-09 16:29:35','2022-03-03 12:54:56',NULL),
('00UVPQPD8ALGBK6BCGTLLLK63U','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单管理-列表','','F',NULL,11101,'1','system/menu/list','GET','','1','1','0','2','0','0','菜单列表api','2022-02-09 16:37:49','2022-10-15 15:36:10',NULL),
('00UVQGL51TCNS3AQ78O8495K0S','00TV8ENLC2DL61K03MS9LT04F3','','用户-新增','','F',NULL,12103,'1','system/user/add','PUT','','1','1','3','1','0','0','用户-新增','2022-02-09 17:01:42','2022-03-03 10:03:21',NULL),
('00V54I1ONABMQL25B3TJF7V3LV','00UDF1SCLDT1FESNLIRG0IVD3B','operate-log','操作日志','form','C',NULL,61100,'1','M-monitor-operlog','','system/monitor/operate-log','1','1','0','0','0','0','操作日志','2022-02-13 20:05:09','2022-10-17 16:42:09',NULL),
('00VLT6969VANQLSOVCSQKH58LK','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-列表','','F',NULL,61101,'1','system/oper_log/list','GET','','1','1','0','0','0','0','操作日志-列表','2022-02-26 20:41:48','2022-03-26 12:28:06',NULL),
('00VLT7BST1JD6KM37L7GHC6I5B','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-删除','','F',NULL,61103,'1','system/oper_log/delete','DELETE','','1','1','3','1','0','0','操作日志-删除','2022-02-26 20:42:59','2022-03-26 12:09:46',NULL),
('00VLT9G6TBM3M239CJDG8E22HG','00V54I1ONABMQL25B3TJF7V3LV','','操作日志-清空','','F',NULL,61105,'1','system/oper_log/clean','DELETE','','1','1','3','1','0','0','操作日志-清空','2022-02-26 20:45:19','2022-03-26 12:09:54',NULL),
('00VLTD9D4DDHCGC3S9D984PL9B','00V54I1ONABMQL25B3TJF7V3LV','','详细查看按钮','','F',NULL,61107,'1','sys-operlog-query','button','','1','1','0','1','0','0','详细查看按钮','2022-02-26 20:49:27','2022-03-26 12:28:15',NULL),
('00VRNCFGF7FIEK2F2BK3GIMGET','00UDFVHR632BT4PVUGAO6UOSPN','','登录日志-查询','','F',NULL,61001,'1','system/login-log/list','GET','','1','1','3','0','0','0','登录日志-查询','2022-03-03 09:09:45','2022-03-26 12:09:18',NULL),
('00VRNG2J3461ETB20J4AH78ILE','00UDFVHR632BT4PVUGAO6UOSPN','','登录日志-删除','','F',NULL,61002,'1','system/login-log/delete','DELETE','','1','1','3','1','0','0','登录日志-删除','2022-03-03 09:13:40','2022-03-06 16:36:31',NULL),
('00VRNH2NQVNQKUNNPEG24M1S91','00UDFVHR632BT4PVUGAO6UOSPN','','登录日志-清空','','F',NULL,61003,'1','system/login-log/clean','DELETE','','1','1','3','1','0','0','登录日志-清空','2022-03-03 09:14:46','2022-03-06 16:36:39',NULL),
('00VRO4RNUAU5I9A2TC2CFS9HN2','00TV8ENLC2DL61K03MS9LT04F3','','用户-查询','','F',NULL,12101,'1','system/user/list','GET','','1','1','3','1','0','0','用户-查询','2022-03-03 09:36:23',NULL,NULL),
('00VRO6RNKGKJOTJDMDK8JIP6BI','00TV8ENLC2DL61K03MS9LT04F3','','用户-修改','','F',NULL,12102,'1','system/user/edit','POST','','1','1','3','1','0','0','用户-修改','2022-03-03 09:38:34','2022-03-03 18:04:59',NULL),
('00VRO7IC5CJ6IVBGV4EJ4GM64A','00TV8ENLC2DL61K03MS9LT04F3','','用户-删除','','F',NULL,12104,'1','system/user/delete','DELETE','','1','1','3','1','0','0','用户-删除','2022-03-03 09:39:20',NULL,NULL),
('00VRO8BAO5P72IHJ39N7QCCR04','00TV8ENLC2DL61K03MS9LT04F3','','用户-重置密码','','F',NULL,12105,'1','system/user/reset_passwd','PUT','','1','1','3','1','0','0','用户-重置密码','2022-03-03 09:40:11',NULL,NULL),
('00VRO8UU3P5MA05UI4PS3IA6E5','00TV8ENLC2DL61K03MS9LT04F3','','用户-更新密码','','F',NULL,12106,'1','system/user/update_passwd','PUT','','1','1','3','1','0','0','用户-更新密码','2022-03-03 09:40:51',NULL,NULL),
('00VROAOVVU168UETSA60RASJLK','00VS0T54CT6VS5HMHI7N8SQIEO','','用户-切换角色','','F',NULL,12107,'1','system/user/change_role','PUT','','1','1','3','1','0','0','用户-切换角色','2022-03-03 09:42:50','2022-03-16 11:43:13',NULL),
('00VROBKI69BAES1M38BCRB7F6S','00TV8ENLC2DL61K03MS9LT04F3','','用户-刷新token','','F',NULL,12108,'1','system/user/fresh_token','PUT','','1','1','3','1','0','0','用户-刷新token','2022-03-03 09:43:47','2022-03-03 15:44:12',NULL),
('00VROCMVQ29ULNS7AM6MJTR2P9','00TV8ENLC2DL61K03MS9LT04F3','','用户-更新头像','','F',NULL,12109,'1','system/user/update_avatar','POST','','1','1','3','1','0','0','用户-更新头像','2022-03-03 09:44:57',NULL,NULL),
('00VROFLOI602D1KINKFHUO2LJR','00TV8ENLC2DL61K03MS9LT04F3','','用户-获取配置','','F',NULL,12110,'1','system/user/get_profile','GET','','1','1','0','1','0','0','用户-获取配置','2022-03-03 09:48:11','2022-03-27 21:25:56',NULL),
('00VROGH458UN4OHQUCSLG4G0H5','00TV8ENLC2DL61K03MS9LT04F3','','用户-更新配置','','F',NULL,12111,'1','system/user/update_profile','PUT','','1','1','3','1','0','0','用户-更新配置','2022-03-03 09:49:07',NULL,NULL),
('00VROL090BNK833V0H8IVH7CS2','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-查询','','F',NULL,11201,'1','system/dict/type/list','GET','','1','1','0','2','0','0','字典-类型-查询','2022-03-03 09:54:00','2022-03-26 12:27:02',NULL),
('00VRONU7C6HRIE7L475NR7NLTF','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-全部','','F',NULL,11202,'1','system/dict/type/get_all','GET','','1','1','0','2','0','0','字典-类型-获取全部','2022-03-03 09:57:13','2022-03-26 12:27:10',NULL),
('00VROOVCJ1E972M9PTJULKD5IG','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-详情','','F',NULL,11203,'1','system/dict/type/get_by_id','GET','','1','1','0','2','0','0','字典-类型-详情','2022-03-03 09:58:21','2022-03-26 12:27:18',NULL),
('00VROQ0HN0AU6L550C37I8TO39','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-新增','','F',NULL,11204,'1','system/dict/type/add','POST','','1','1','3','1','0','0','字典-类型-新增','2022-03-03 09:59:29',NULL,NULL),
('00VROQJTCL7GRH1JU86GQ5AKH7','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-修改','','F',NULL,11205,'1','system/dict/type/edit','PUT','','1','1','3','1','0','0','字典-类型-修改','2022-03-03 10:00:08',NULL,NULL),
('00VRORAG2T4UVNQS9DSK9HV7RO','00TV8J02HNJMAUDJOV5F02BV35','','字典-类型-删除','','F',NULL,11206,'1','system/dict/type/delete','DELETE','','1','1','3','1','0','0','字典-类型-删除','2022-03-03 10:00:55',NULL,NULL),
('00VRSR13JKV32QEHPJP5BDOO6M','00ULIS5OED0KGME1B8N38519RG','','在线用户-list','','F',NULL,64001,'1','system/online/list','GET','','1','1','3','1','0','0','在线用户-列表','2022-03-03 12:20:24','2022-03-03 12:22:55',NULL),
('00VRSSUQUBO5F71177HSMEOG9E','00ULIS5OED0KGME1B8N38519RG','','在线用户-强退','','F',NULL,64002,'1','system/online/delete','DELETE','','1','1','3','1','0','0','在线用户-强退','2022-03-03 12:22:30',NULL,NULL),
('00VRSUCDM7AS6C0PU0NVSBOUN2','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-list','','F',NULL,65001,'1','system/job/list','GET','','1','1','3','0','0','0','定时任务-查询','2022-03-03 12:24:04','2022-03-07 14:22:27',NULL),
('00VRSVNV7NKCPROSAD148UC07D','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-详情','','F',NULL,65002,'1','system/job/get_by_id','GET','','1','1','3','1','0','0','定时任务-详情','2022-03-03 12:25:33','2022-03-03 12:26:43',NULL),
('00VRT1H9T8QJGH4J90TQ93SRB6','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-状态更改','','F',NULL,65003,'1','system/job/change_status','PUT','','1','1','3','1','0','0','定时任务-状态更改','2022-03-03 12:27:30',NULL,NULL),
('00VRT2KE7V1I7M0U2KRI7O7KO0','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-单次任务','','F',NULL,65004,'1','system/job/run_task_once','PUT','','1','1','3','1','0','0','定时任务-单次任务','2022-03-03 12:28:42',NULL,NULL),
('00VRT3DGH4FLIN86JNTER9NE2J','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-新增','','F',NULL,65005,'1','system/job/add','POST','','1','1','3','1','0','0','定时任务-新增','2022-03-03 12:29:34',NULL,NULL),
('00VRT454SH08536E4S05SSFJQD','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-编辑','','F',NULL,65006,'1','system/job/edit','PUT','','1','1','3','1','0','0','定时任务-编辑','2022-03-03 12:30:22',NULL,NULL),
('00VRT4P39MLBFMLD4GB0A71G6L','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-删除','','F',NULL,65007,'1','system/job/delete','DELETE','','1','1','3','1','0','0','定时任务-删除','2022-03-03 12:31:03',NULL,NULL),
('00VRT8EOPMF28ROSLNRPKG58B3','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-日志-列表','','F',NULL,65008,'1','system/job_log/list','GET','','1','1','3','0','0','0','定时任务-日志-列表','2022-03-03 12:35:04','2022-03-07 14:22:58',NULL),
('00VRT94JEB0UPHGCPB4LE4Q14E','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-日志-删除','','F',NULL,65009,'1','system/job_log/delete','DELETE','','1','1','3','1','0','0','定时任务-日志-删除','2022-03-03 12:35:49',NULL,NULL),
('00VRT9L9I5SFV1637T6QRV2M5B','00UOEO8SVBTSFML8CLSDJR9PLK','','定时任务-日志-清空','','F',NULL,65010,'1','system/job_log/clean','DELETE','','1','1','3','1','0','0','定时任务-日志-清空','2022-03-03 12:36:23',NULL,NULL),
('00VRTCI05221E69JQ5ONBU626H','00UVPJ8H374OKE77M4EBTHOGIV','','权限查询-列表','','F',NULL,11601,'1','system/menu/get_auth_list','GET','','1','1','0','2','0','0','权限查询-列表','2022-03-03 12:39:33','2022-03-27 21:24:26',NULL),
('00VRTGI405R3OUEEQ6I4CF0KLC','00TV8J02HNJMAUDJOV5F02BV35','','字典-数据-列表','','F',NULL,11231,'1','system/dict/data/list','GET','','1','1','0','2','0','0','字典-数据-列表','2022-03-03 12:43:55','2022-03-26 12:27:34',NULL),
('00VRTH8DA232EKF0VFR1S5RGP3','00TV8J02HNJMAUDJOV5F02BV35','','字典-数据-按ID获取','','F',NULL,11232,'1','system/dict/data/get_by_id','GET','','1','1','0','2','0','0','字典-数据-按ID获取','2022-03-03 12:44:41','2022-03-26 12:27:45',NULL),
('00VRTHQVP4KFGSNMKH3PO8T56J','00VS0T54CT6VS5HMHI7N8SQIEO','','字典-数据-按TYPE获取','','F',NULL,90103,'1','system/dict/data/get_by_type','GET','','1','1','3','1','0','0','字典-数据-按TYPE获取','2022-03-03 12:45:19','2022-03-08 12:05:49',NULL),
('00VRTIH4RPLEQRS64RO1O8FCQ1','00TV8J02HNJMAUDJOV5F02BV35','','字典-数据-新增','','F',NULL,11234,'1','system/dict/data/add','POST','','1','1','3','1','0','0','字典-数据-新增','2022-03-03 12:46:04',NULL,NULL),
('00VRTJ2IFCL361KTM7COF31G7C','00TV8J02HNJMAUDJOV5F02BV35','','字典-数据-更新','','F',NULL,11235,'1','system/dict/data/edit','PUT','','1','1','3','1','0','0','字典-数据-更新','2022-03-03 12:46:40',NULL,NULL),
('00VRTJHL4JPB4QF3VTMPCIVFT7','00TV8J02HNJMAUDJOV5F02BV35','','字典-数据-删除','','F',NULL,11236,'1','system/dict/data/delete','DELETE','','1','1','3','1','0','0','字典-数据-删除','2022-03-03 12:47:11',NULL,NULL),
('00VRTO1B3SHTEECODOQ082GQPO','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单管理-详情','','F',NULL,11102,'1','system/menu/get_by_id','GET','','1','1','0','2','0','0','菜单管理-详情','2022-03-03 12:52:05','2022-03-27 21:22:11',NULL),
('00VRTOUC4HQLC3TME4POJV9ASA','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单管理-新增','','F',NULL,11103,'1','system/menu/add','POST','','1','1','3','1','0','0','菜单管理-新增','2022-03-03 12:53:04',NULL,NULL),
('00VRTPBD2ESK6E3IUTU0CQIMSG','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单管理-编辑','','F',NULL,11104,'1','system/menu/edit','PUT','','1','1','3','1','0','0','菜单管理-编辑','2022-03-03 12:53:31',NULL,NULL),
('00VRTPR1M1BLRNF21N2TNVIA0E','00UDGE80NBMO4SV8TJMF9J8DM3','','菜单管理-删除','','F',NULL,11105,'1','system/menu/delete','DELETE','','1','1','3','1','0','0','菜单管理-删除','2022-03-03 12:54:03',NULL,NULL),
('00VRTSB9UTV0052CSMFE1EEV93','00TV8H55BU243CFAFK9O9GKL5P','','部门管理-详情','','F',NULL,12202,'1','system/dept/get_by_id','GET','','1','1','0','1','0','0','部门管理-详情','2022-03-03 12:56:47','2022-03-27 21:26:45',NULL),
('00VRTTQBPBDT7MLGN9844N4QAP','00TV8H55BU243CFAFK9O9GKL5P','','部门管理-新增','','F',NULL,12203,'1','system/dept/add','POST','','1','1','3','1','0','0','部门管理-新增','2022-03-03 12:58:24',NULL,NULL),
('00VRTVF09JPILH0UFCF236BOE2','00TV8H55BU243CFAFK9O9GKL5P','','部门管理-编辑','','F',NULL,12204,'1','system/dept/edit','PUT','','1','1','3','1','0','0','部门管理-编辑','2022-03-03 13:00:12',NULL,NULL),
('00VRTVSH7U34NHE5IDT7P5A6UF','00TV8H55BU243CFAFK9O9GKL5P','','部门管理-删除','','F',NULL,12205,'1','system/dept/delete','DELETE','','1','1','3','1','0','0','部门管理-删除','2022-03-03 13:00:39',NULL,NULL),
('00VRU0G3MI3LU7TFKJ08OQIT8I','00TV8H55BU243CFAFK9O9GKL5P','','部门管理-列表','','F',NULL,12201,'1','system/dept/list','GET','','1','1','3','1','0','0','部门管理-列表','2022-03-03 13:01:19',NULL,NULL),
('00VRU2G6ULR1E2L9Q33PV4L87V','00TV8HV6G76KBTOJ74AM5BPFS1','','岗位管理-列表','','F',NULL,12301,'1','system/post/list','GET','','1','1','0','1','0','0','岗位管理-列表','2022-03-03 13:03:31','2022-03-27 21:27:27',NULL),
('00VRU3JDE3CFU6MLPTG2SS56CE','00TV8HV6G76KBTOJ74AM5BPFS1','','岗位管理-详情','','F',NULL,12302,'1','system/post/get_by_id','GET','','1','1','0','1','0','0','岗位管理-详情','2022-03-03 13:04:43','2022-03-27 21:27:20',NULL),
('00VRU46HO45KUJTQF0R6N3H7N1','00TV8HV6G76KBTOJ74AM5BPFS1','','岗位管理-新增','','F',NULL,12303,'1','system/post/add','POST','','1','1','3','1','0','0','岗位管理-新增','2022-03-03 13:05:22',NULL,NULL),
('00VRU4SCKU568QL7S9F6K0M913','00TV8HV6G76KBTOJ74AM5BPFS1','','岗位管理-编辑','','F',NULL,12304,'1','system/post/edit','PUT','','1','1','3','1','0','0','岗位管理-编辑','2022-03-03 13:06:07',NULL,NULL),
('00VRU5E4E2U47VP7NKER84ANSV','00TV8HV6G76KBTOJ74AM5BPFS1','','岗位管理-删除','','F',NULL,12305,'1','system/post/delete','DELETE','','1','1','3','1','0','0','岗位管理-删除','2022-03-03 13:06:43',NULL,NULL),
('00VRU6SNSR3JKQEJPV42P1TO43','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-列表','','F',NULL,12401,'1','system/role/list','GET','','1','1','0','1','0','0','角色管理-列表','2022-03-03 13:08:19','2022-03-27 21:27:49',NULL),
('00VRU90LRQ009Q85FNKDHDCF2K','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-详情','','F',NULL,12402,'1','system/role/get_by_id','GET','','1','1','0','1','0','0','角色管理-详情','2022-03-03 13:10:38','2022-03-27 21:27:56',NULL),
('00VRU9IHUV512BR8ACOPNVJOEL','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-新增','','F',NULL,12403,'1','system/role/add','POST','','1','1','3','1','0','0','角色管理-新增','2022-03-03 13:11:14',NULL,NULL),
('00VRUA27HG6K7PULSJHEPTK0C7','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-编辑','','F',NULL,12404,'1','system/role/edit','PUT','','1','1','3','1','0','0','角色管理-编辑','2022-03-03 13:11:46',NULL,NULL),
('00VRUBL1O2TEQR950LQRQ5OLQS','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-权限','','F',NULL,12405,'1','system/role/set_data_scope','PUT','','1','1','3','1','0','0','角色管理-设置角色权限','2022-03-03 13:13:30',NULL,NULL),
('00VRUC8BTIF8ATM812K1152JL3','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-状态更改','','F',NULL,12406,'1','system/role/change_status','PUT','','1','1','3','1','0','0','角色管理-状态更改','2022-03-03 13:14:10',NULL,NULL),
('00VRUCU8AJLU73U2KLRPH0PB4T','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-删除','','F',NULL,12407,'1','system/role/delete','DELETE','','1','1','3','1','0','0','角色管理-删除','2022-03-03 13:14:55',NULL,NULL),
('00VRUDODNR5QPREQI9T3S34MS0','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-取消授权','','F',NULL,12408,'1','system/role/cancel_auth_user','PUT','','1','1','3','1','0','0','角色管理-取消授权','2022-03-03 13:15:48',NULL,NULL),
('00VRUEC8OUNJP7TQ1D0Q4AELAL','00TV8FT34RNV9T5PUSHHOVF56R','','角色管理-授权用户','','F',NULL,12409,'1','system/role/add_auth_user','PUT','','1','1','3','1','0','0','角色管理-授权用户','2022-03-03 13:16:29',NULL,NULL),
('00VRVR9A52P9NSTL4VA6A6CGDA','00VS0T54CT6VS5HMHI7N8SQIEO','','用户信息','','F',NULL,99102,'1','system/user/get_info','GET','','1','1','3','0','0','0','用户信息','2022-03-03 14:05:32','2022-03-27 21:06:01',NULL),
('00VRVS1VPSVAKUNVTMHGOTJA79','00VS0T54CT6VS5HMHI7N8SQIEO','','获取路由','','F',NULL,99101,'1','system/menu/get_routers','GET','','1','1','3','0','0','0','获取路由','2022-03-03 14:06:23','2022-03-24 21:26:21',NULL),
('00VS0T54CT6VS5HMHI7N8SQIEO','0','M-A','必须权限','404','M',NULL,99100,'1','S-must-enabled','0','','0','1','3','1','0','0','用户必须权限，一般必须授权A','2022-03-03 14:42:32','2022-03-26 12:11:11',NULL),
('00VS10Q4OB6LMC1PE1H4G0J96F','0','M-B','前端按钮权限','404','M',NULL,99200,'1','S-button','button','','0','1','3','1','0','0','前端按钮权限','2022-03-03 14:46:31','2022-03-24 20:21:52',NULL),
('00VS2I9FVAFCEF4CLL2UIIP373','00TV8ENLC2DL61K03MS9LT04F3','','用户-状态更改','','F',NULL,12115,'1','system/user/change_status','PUT','','1','1','3','1','0','0','用户-状态更改','2022-03-03 15:40:34',NULL,NULL),
('00VTA5F1QRC47LOG0G3CBH223V','0','test','测试项目','excel','M',NULL,95000,'1','M-test','','','1','1','0','0','0','0','测试项目','2022-03-04 14:44:40','2022-03-04 14:45:01',NULL),
('00VTA7E598QUBN7F5NI98B5PHA','00VTA5F1QRC47LOG0G3CBH223V','data_scope','数据权限测试','component','C',NULL,95100,'1','M-test-datascope','','test/data_scope/index','1','1','0','0','0','0','数据权限测试','2022-03-04 14:46:49','2022-03-23 23:22:10',NULL),
('00VTAAUDVFGJDVRGN4J2EP5LKK','00VTA7E598QUBN7F5NI98B5PHA','','数据权限测试-查询','','F',NULL,95101,'1','test/data_scope/list','GET','','1','1','3','1','0','0','数据权限测试-查询','2022-03-04 14:50:39','2022-03-24 21:16:46',NULL),
('00VVUKES7BH195FJDM7AUVI147','00UVPJ8H374OKE77M4EBTHOGIV','','权限查询-数据库关联查询','','F',NULL,11602,'1','system/api_db/get_by_id','GET','','1','1','0','2','0','0','权限查询-数据库关联查询','2022-03-06 15:57:03','2022-03-27 21:24:42',NULL),
('00VVUL5R74RNERJGKTC9OQM0GF','00UVPJ8H374OKE77M4EBTHOGIV','','权限查询-数据库关联修改','','F',NULL,11603,'1','system/api_db/add','POST','','1','1','3','1','0','0','权限查询-数据库关联修改','2022-03-06 15:57:50',NULL,NULL),
('0100TVEON187DJPSHN1F8P8CC2','00VS0T54CT6VS5HMHI7N8SQIEO','','获取全部激活菜单树','','F',NULL,99103,'1','system/menu/get_all_enabled_menu_tree','GET','','1','1','3','1','0','0','获取全部激活菜单树A','2022-03-07 10:12:36','2022-03-24 21:00:52',NULL),
('01054NOSI7GEC0F8JDB6KEDPEL','00UDF1SCLDT1FESNLIRG0IVD3B','server','服务监控','server','C',NULL,66000,'1','M-monitor-server','','monitor/server/index','1','1','0','0','0','0','服务监控','2022-03-10 16:42:47','2022-03-10 21:08:39',NULL),
('01054P7OBFVI0UH5MSL07RG439','01054NOSI7GEC0F8JDB6KEDPEL','','服务监控-信息获取','','F',NULL,65001,'1','system/monitor/server','GET','','1','1','3','0','0','0','服务监控-信息获取','2022-03-10 16:44:23',NULL,NULL),
('010DMOHRV2HCESF61SQQ71TKO5','0','dm','数据管理','date-range','M',NULL,20000,'1','M-dm','','','1','1','0','0','0','0','数据管理','2022-03-17 08:20:38','2022-03-17 08:20:47',NULL),
('010DN3V27Q29FS578T1FL9BGGR','010DMOHRV2HCESF61SQQ71TKO5','basicInfo','基础数据','clipboard','M',NULL,21000,'1','M-dm-basic','','','1','1','0','0','0','0','基础数据','2022-03-17 08:33:06',NULL,NULL),
('010DN6780BL8VQ2AEK7KI14LIQ','010DMOHRV2HCESF61SQQ71TKO5','mc','MC数据管理','component','M',NULL,22000,'1','M-dm-mc','','','1','1','0','0','0','0','MC数据管理','2022-03-17 08:35:34','2022-03-24 19:59:35',NULL),
('010DN8NLH2N8J27F2SVLS3S21D','010DN3V27Q29FS578T1FL9BGGR','city','城市管理','date','C',NULL,21100,'1','M-dm-basic-province','','dm/base_info/city/province','1','1','0','0','0','0','省管理','2022-03-17 08:38:19','2022-03-17 17:30:16',NULL),
('010E20T0ELPGPQD88EROGEISFT','010DN8NLH2N8J27F2SVLS3S21D','','城市管理-列表','','F',NULL,21121,'1','dm/city/list','GET','','1','1','0','2','0','0','','2022-03-17 14:54:14','2022-03-27 21:29:16',NULL),
('010E21JPKU7N0NM0SMMLGFVAUT','010DN8NLH2N8J27F2SVLS3S21D','','省管理-新增','','F',NULL,21102,'1','dm/province/add','POST','','1','1','3','1','0','0','','2022-03-17 14:55:01',NULL,NULL),
('010E2235Q5Q6IACGQF2UONH4BJ','010E84KPUVP4T22SLN86RNMTFD','','医院管理-编辑','','F',NULL,21203,'1','dm/hospital/edit','PUT','','1','1','3','1','0','0','','2022-03-17 14:55:32','2022-03-18 21:09:08',NULL),
('010E22EL2MSHS7FN13MIEFH7BB','010DN8NLH2N8J27F2SVLS3S21D','','省管理-删除','','F',NULL,21104,'1','dm/province/delete','DELETE','','1','1','3','1','0','0','','2022-03-17 14:55:56',NULL,NULL),
('010E2325P0RCU7205RB1ET3GBH','010DN8NLH2N8J27F2SVLS3S21D','','省管理-byId','','F',NULL,21105,'1','dm/province/get_by_id','GET','','1','1','0','2','0','0','','2022-03-17 14:56:36','2022-03-27 21:29:06',NULL),
('010E5CMSJTV806050C0BRSU5I1','010DN8NLH2N8J27F2SVLS3S21D','','省份管理-列表','','F',NULL,21101,'1','dm/province/list','GET','','1','1','0','2','0','0','','2022-03-17 16:51:59','2022-03-27 21:28:44',NULL),
('010E5EO1B96CPST2126AQCLL37','010DN8NLH2N8J27F2SVLS3S21D','','城市管理-新增','','F',NULL,21122,'1','dm/city/add','POST','','1','1','3','1','0','0','','2022-03-17 16:54:13',NULL,NULL),
('010E5G8GVS7P133BD6J5UJQPUK','010DN8NLH2N8J27F2SVLS3S21D','','城市管理-编辑','','F',NULL,21123,'1','dm/city/edit','PUT','','1','1','3','1','0','0','','2022-03-17 16:55:52',NULL,NULL),
('010E5GPCIL3OFPRM4253O7CKGM','010DN8NLH2N8J27F2SVLS3S21D','','城市管理-删除','','F',NULL,21124,'1','dm/city/delete','DELETE','','1','1','3','1','0','0','','2022-03-17 16:56:27',NULL,NULL),
('010E5HDBQ2515L5UPRHOVFSLOU','010DN8NLH2N8J27F2SVLS3S21D','','城市管理-byId','','F',NULL,21125,'1','dm/city/get_by_id','GET','','1','1','0','2','0','0','','2022-03-17 16:57:08','2022-03-27 21:29:29',NULL),
('010E84KPUVP4T22SLN86RNMTFD','010DN3V27Q29FS578T1FL9BGGR','hospital','医院管理','date','C',NULL,21200,'1','M-dm-basic-hospital','','dm/base_info/hospital/hospital','1','1','0','0','0','0','省管理','2022-03-17 18:28:02','2022-03-19 18:33:25',NULL),
('010E856FIVMRKF84S6CE6THKL0','010E84KPUVP4T22SLN86RNMTFD','','医院管理-列表','','F',NULL,21201,'1','dm/hospital/list','GET','','1','1','0','0','0','0','','2022-03-17 18:28:39','2022-03-27 21:29:44',NULL),
('010F1467VT0NE6E0PA4VEA9POC','010DN3V27Q29FS578T1FL9BGGR','lab_test','项目管理','date','C',NULL,21300,'1','M-dm-basic-lab_test','','dm/base_info/lab_test/test','1','1','0','0','0','0','项目管理','2022-03-18 09:01:21',NULL,NULL),
('010FLTOAO01NBGISIRLSQN1GQ2','010E84KPUVP4T22SLN86RNMTFD','','医院管理-新增','','F',NULL,21202,'1','dm/hospital/add','POST','','1','1','3','1','0','0','','2022-03-18 21:08:20',NULL,NULL),
('010FLUV38JTJ1HHD78RO5CN8HM','010E84KPUVP4T22SLN86RNMTFD','','医院管理-删除','','F',NULL,21204,'1','dm/hospital/delete','DELETE','','1','1','3','1','0','0','','2022-03-18 21:09:39',NULL,NULL),
('010FLVO7K6FQC3OVVVASJCAI97','010E84KPUVP4T22SLN86RNMTFD','','医院管理-byId','','F',NULL,21205,'1','dm/hospital/get_by_id','GET','','1','1','0','1','0','0','','2022-03-18 21:10:31','2022-03-27 21:30:01',NULL),
('010FM0BAS48OBKTDPV54DEMHLM','010E84KPUVP4T22SLN86RNMTFD','','仪器管理-列表','','F',NULL,21221,'1','dm/instrument/list','GET','','1','1','0','1','0','0','','2022-03-18 21:11:10','2022-03-27 21:30:09',NULL),
('010FM1G8SBBQJ1TP82VK857B16','010E84KPUVP4T22SLN86RNMTFD','','仪器管理-新增','','F',NULL,21222,'1','dm/instrument/add','POST','','1','1','3','1','0','0','','2022-03-18 21:12:25',NULL,NULL),
('010FM1TRMBILIJ72NSE5I505L2','010E84KPUVP4T22SLN86RNMTFD','','仪器管理-编辑','','F',NULL,21223,'1','dm/instrument/edit','PUT','','1','1','3','1','0','0','','2022-03-18 21:12:53',NULL,NULL),
('010FM2CGMGDVQ034S1QIUEID1V','010E84KPUVP4T22SLN86RNMTFD','','仪器管理-删除','','F',NULL,21224,'1','dm/instrument/delete','DELETE','','1','1','3','1','0','0','','2022-03-18 21:13:23',NULL,NULL),
('010FM2RUKINS1M57HAB1TUFTCG','010F1467VT0NE6E0PA4VEA9POC','','项目关联管理-byId','','F',NULL,21325,'1','dm/mc_group_test/get_by_id','GET','','1','1','0','2','0','0','','2022-03-18 21:13:55','2022-03-27 21:32:29',NULL),
('010FM4747K7BKCBUH8PMHP8KVU','010F1467VT0NE6E0PA4VEA9POC','','项目管理-列表','','F',NULL,21301,'1','dm/mc_test/list','GET','','1','1','0','2','0','0','','2022-03-18 21:15:23','2022-03-27 21:30:38',NULL),
('010FM4TEMN38MN58UUVIFDJFRQ','010F1467VT0NE6E0PA4VEA9POC','','项目管理-新增','','F',NULL,21302,'1','dm/mc_test/add','POST','','1','1','3','1','0','0','','2022-03-18 21:16:09',NULL,NULL),
('010FM6869R4U2AIH3I8TRM7EUR','010F1467VT0NE6E0PA4VEA9POC','','项目管理-编辑','','F',NULL,21303,'1','dm/mc_test/edit','PUT','','1','1','3','1','0','0','','2022-03-18 21:17:37',NULL,NULL),
('010FM6JHPQDGPRJJUKIVQT2A35','010F1467VT0NE6E0PA4VEA9POC','','项目管理-删除','','F',NULL,21304,'1','dm/mc_test/delete','DELETE','','1','1','3','1','0','0','','2022-03-18 21:18:00',NULL,NULL),
('010FM7B0VC8L7GIG9R4AHET7V4','010F1467VT0NE6E0PA4VEA9POC','','项目管理-byId','','F',NULL,21305,'1','dm/mc_test/get_by_id','GET','','1','1','0','2','0','0','','2022-03-18 21:18:48','2022-03-27 21:30:56',NULL),
('010FM7VLPDJEVCGFASGB8E6ORJ','010F1467VT0NE6E0PA4VEA9POC','','项目管理-byall','','F',NULL,21205,'1','dm/mc_test/get_all','GET','','1','1','0','2','0','0','','2022-03-18 21:19:30','2022-03-27 21:30:29',NULL),
('010FM8POV7400R901CVMRKBR72','010F1467VT0NE6E0PA4VEA9POC','','项目关联管理-列表','','F',NULL,21321,'1','dm/mc_group_test/list','GET','','1','1','0','1','0','0','','2022-03-18 21:20:24','2022-03-27 21:32:21',NULL),
('010FM9IOLAEE9GHKC1GDPLBRSF','010F1467VT0NE6E0PA4VEA9POC','','项目关联管理-新增','','F',NULL,21322,'1','dm/mc_group_test/add','POST','','1','1','3','1','0','0','','2022-03-18 21:21:15',NULL,NULL),
('010FMABAGHUV1K42CRO3A985PF','010F1467VT0NE6E0PA4VEA9POC','','项目关联-删除','','F',NULL,21324,'1','dm/mc_group_test/delete','DELETE','','1','1','3','1','0','0','','2022-03-18 21:22:05','2022-03-18 21:23:15',NULL),
('010FMDCJ7PEQA78CDMSR5I45E2','010F1467VT0NE6E0PA4VEA9POC','','项目管理-by_group','','F',NULL,21306,'1','dm/mc_group_test/get_by_test_group','GET','','1','1','3','2','0','0','','2022-03-18 21:25:24','2022-03-26 12:04:19',NULL),
('010FMG38EIB83177GALDMDUK8E','010DN8NLH2N8J27F2SVLS3S21D','','省管理-编辑','','F',NULL,21103,'1','dm/province/edit','PUT','','1','1','3','1','0','0','','2022-03-18 21:28:22',NULL,NULL),
('010GQ873BCMGAP0URLSK5MC7IH','010DN6780BL8VQ2AEK7KI14LIQ','sample','样本管理','date','C',NULL,22100,'1','M-dm-sample-sample','','dm/mc/sample/sample','1','1','0','0','0','0','样本管理','2022-03-19 18:18:03','2022-03-19 18:20:50',NULL),
('010GQAGOO7EG4KCJQ4719IOIUM','010NB6ILJ82B6KMK1I1KK4AROS','bendi','本底','date','C',NULL,22200,'1','M-dm-analyze-bendi','','dm/mc/analyze/bendi','1','1','0','0','0','0','样本管理','2022-03-19 18:20:34','2022-03-24 21:47:20',NULL),
('010J21H7B2DH71G81RGV07M49J','010DN6780BL8VQ2AEK7KI14LIQ','statistics','数据统计','date-range','C',NULL,22400,'1','M-dm-sample-statistics','','dm/mc/sample/statistics','1','1','0','0','0','0','数据统计','2022-03-21 12:07:20','2022-03-24 18:46:37',NULL),
('010M63HGCHM1NK6UI6PK83LLFF','010J21H7B2DH71G81RGV07M49J','','数据统计-原始数据','','F',NULL,21401,'1','dm/statistics/origin_list','GET','','1','1','0','1','0','0','数据统计-原始数据','2022-03-23 22:24:47','2022-03-27 21:32:57',NULL),
('010M65FGBRLHR62T2D0IDQ0B5U','010J21H7B2DH71G81RGV07M49J','','数据统计-样本统计','','F',NULL,21402,'1','dm/statistics/sample_count','GET','','1','1','0','1','0','0','数据统计-样本统计','2022-03-23 22:26:54','2022-03-27 21:33:05',NULL),
('010M6OT5LU8VJ114N69ERHKGJL','010J21H7B2DH71G81RGV07M49J','','数据统计-无效统计','','F',NULL,21403,'1','dm/statistics/invalid_count','GET','','1','1','0','1','0','0','数据统计-无效统计','2022-03-23 22:48:07','2022-03-27 21:33:11',NULL),
('010M6Q3F2E54UPFTT51L77I72E','010J21H7B2DH71G81RGV07M49J','','数据统计-本底统计','','F',NULL,21404,'1','dm/statistics/bendi_count','GET','','1','1','0','1','0','0','数据统计-本底统计','2022-03-23 22:49:25','2022-03-27 21:33:18',NULL),
('010M70KVFQCKV97417A2DBUPFH','010J21H7B2DH71G81RGV07M49J','','数据统计-磁码统计','','F',NULL,21405,'1','dm/statistics/cipian_count','GET','','1','1','0','1','0','0','数据统计-磁码统计','2022-03-23 22:56:34','2022-03-27 21:33:26',NULL),
('010M765NDQOHO494A1IDC0NGDA','010J21H7B2DH71G81RGV07M49J','','数据统计-阳性率统计','','F',NULL,21406,'1','dm/statistics/positive_rate','GET','','1','1','0','1','0','0','数据统计-阳性率统计','2022-03-23 23:02:36','2022-03-27 21:33:34',NULL),
('010M7MU0M5VNDU8SCHCPAPT9OD','010J21H7B2DH71G81RGV07M49J','','数据统计-全部结果','','F',NULL,21407,'1','dm/statistics/all_result','GET','','1','1','0','1','0','0','数据统计-全部结果','2022-03-23 23:20:55','2022-03-27 21:33:42',NULL),
('010NB6ILJ82B6KMK1I1KK4AROS','010DMOHRV2HCESF61SQQ71TKO5','mc_analyze','数据分析','component','M',NULL,23000,'1','M-dm-mc_fx','','','1','1','0','0','0','0','MC数据分析','2022-03-24 20:01:20',NULL,NULL),
('010OB4IFN77FBPK590PT8VPF91','010NB6ILJ82B6KMK1I1KK4AROS','sample_count','样本数','date','C',NULL,22300,'1','M-dm-analyze-count','','dm/mc/analyze/sampleCount','1','1','0','0','0','0','样本数','2022-03-25 14:37:38','2022-03-25 17:36:07',NULL),
('010OG8FOGMJKNOTPL4AF9VTGNR','010NB6ILJ82B6KMK1I1KK4AROS','sample_positive','阳性率','date','C',NULL,22400,'1','M-dm-analyze-positive','','dm/mc/analyze/positive','1','1','0','0','0','0','阳性率','2022-03-25 17:36:40',NULL,NULL),
('010OMB9896DOP897Q8I7CCIFMD','010NB6ILJ82B6KMK1I1KK4AROS','cipian','磁片','color','C',NULL,22500,'1','M-dm-analyze-cipian','','dm/mc/analyze/cipian','1','1','0','0','0','0','磁片','2022-03-25 21:09:26',NULL,NULL),
('010R8IT7UTOKKQMISVODE517L1','00VS10Q4OB6LMC1PE1H4G0J96F','','新增日志11','','F',NULL,99201,'1','dm/update_info/add','POST','','1','1','3','1','0','0','新增日志','2022-03-27 21:03:52','2022-10-14 17:38:48',NULL),
('010R8JJEN88AETEEDOTA50OSJA','00VS10Q4OB6LMC1PE1H4G0J96F','','编辑日志335','','F',NULL,99202,'1','dm/update_info/edit','PUT','','1','1','3','1','0','0','编辑日志335','2022-03-27 21:04:38','2022-10-14 17:29:54',NULL),
('010R8KAK576RGO072UQCOJ1AEU','00VS10Q4OB6LMC1PE1H4G0J96F','','查询日志','','F',NULL,99104,'1','dm/update_info/get_all','GET','','1','1','0','2','0','0','新增日志','2022-03-27 21:05:25','2022-10-14 17:17:54',NULL),
('010R8RRT9D1C1MI0NR5NVKJB23','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-查询','','F',NULL,22101,'1','sm/sample/list','GET','','1','1','0','2','0','0','样本管理-查询','2022-03-27 21:13:39','2022-03-27 21:14:03',NULL),
('010R8SVN046QP2KUQJL0OM1B9L','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-新增样本','','F',NULL,22102,'1','sm/sample/add','POST','','1','1','0','2','0','0','样本管理-新增样本','2022-03-27 21:14:53',NULL,NULL),
('010R8U7PKKUUBUR2TTUHCNPL05','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-软删除','','F',NULL,22103,'1','sm/sample/soft_delete','DELETE','','1','1','3','2','0','0','样本管理-软删除','2022-03-27 21:16:15',NULL,NULL),
('010R8UG3CVRVATETJ5JBBIPT65','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-删除','','F',NULL,22104,'1','sm/sample/delete','DELETE','','1','1','3','2','0','0','样本管理-删除','2022-03-27 21:16:32',NULL,NULL),
('010R8V1PCJ3H5CJ18CE259GIOM','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-恢复删除','','F',NULL,22105,'1','sm/sample/recover_delete','DELETE','','1','1','3','2','0','0','样本管理-恢复删除','2022-03-27 21:17:08',NULL,NULL),
('010R8VR4IJH1FGB7GJGERBQFE6','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-结果查询','','F',NULL,22108,'1','sm/result/list','GET','','1','1','0','2','0','0','样本管理-结果查询','2022-03-27 21:18:00',NULL,NULL),
('010R90AD0QTNATFFAHNUPU4BC3','010GQ873BCMGAP0URLSK5MC7IH','','样本管理-新增结果','','F',NULL,22109,'1','sm/result/add','POST','','1','1','0','2','0','0','样本管理-新增结果','2022-03-27 21:18:31',NULL,NULL),
('0388LWKYZ6OG5VDRHULN5J549','00VS0T54CT6VS5HMHI7N8SQIEO','','编辑日志rrrr','','F',NULL,99207,'1','dm/update_info/edit33vv','PUT','','1','1','3','1','0','0','编辑日志33533vv','2022-10-14 18:03:55','2022-10-14 19:29:28',NULL),
('0388MLPKI4RMBH44UOS79YULA','00VS10Q4OB6LMC1PE1H4G0J96F','','编辑日志ZZZ','','F',NULL,99208,'1','dm/update_info/editdd','PUT','','1','1','3','1','0','0','编辑日志335','2022-10-14 20:12:33',NULL,NULL),
('0388MN8C5TBFXNDA8T1JKA5OQ','00VS10Q4OB6LMC1PE1H4G0J96F','','编辑日志eeeee','','F',NULL,99211,'1','dm/update_info/editddee','PUT','','1','1','3','1','0','0','编辑日志335eee','2022-10-14 20:20:20',NULL,NULL),
('0388MQ2KMKFZMZGL59PS19QRW','00VS10Q4OB6LMC1PE1H4G0J96F','','dvdqqq','','F',NULL,999545,'1','dsvdsvds','GET','','1','1','3','1','0','0','dsvvsd','2022-10-14 20:34:52','2022-10-14 20:52:12',NULL),
('0388MVBKHQ16A3X8F5KIMJTTG','00VS0T54CT6VS5HMHI7N8SQIEO','','dvdEEEE','','F',NULL,999546,'1','dsvdsvdsEE','GET','','1','1','3','1','0','0','dsvvsdEEE','2022-10-14 21:01:45','2022-10-14 21:02:16',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

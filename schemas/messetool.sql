--
-- Host: 127.0.0.1    Database: baywa-nltool
-- ------------------------------------------------------
-- Server version	5.1.50

DROP TABLE IF EXISTS feusers;
CREATE TABLE feusers (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	username varchar(255) COLLATE utf8_general_ci NOT NULL,
	password varchar(255) COLLATE utf8_general_ci NOT NULL,
	first_name varchar(255) COLLATE utf8_general_ci NOT NULL,
	last_name varchar(255) COLLATE utf8_general_ci NOT NULL,
	title varchar(255) COLLATE utf8_general_ci NOT NULL,
	email varchar(255) COLLATE utf8_general_ci NOT NULL,
	phone varchar(255) COLLATE utf8_general_ci NOT NULL,
    address varchar(255) COLLATE utf8_general_ci NOT NULL,
    city  varchar(255) COLLATE utf8_general_ci NOT NULL,
	zip int(11) DEFAULT '0' NOT NULL,
	company  varchar(255) COLLATE utf8_general_ci NOT NULL,
	profileid int(11) DEFAULT '0' NOT NULL,
	usergroup int(11) DEFAULT '0' NOT NULL,
	superuser tinyint(4) DEFAULT '0' NOT NULL,
	userlanguage int(11) DEFAULT '0' NOT NULL,
	gender tinyint(4) DEFAULT '0' NOT NULL,
	fullname varchar(255) COLLATE utf8_general_ci NOT NULL,
	region varchar(255) COLLATE utf8_general_ci NOT NULL,
	jobtitle varchar(255) COLLATE utf8_general_ci NOT NULL,
	division varchar(255) COLLATE utf8_general_ci NOT NULL,
	specialization varchar(255) COLLATE utf8_general_ci NOT NULL,
	image varchar(255) COLLATE utf8_general_ci NOT NULL,	
	onspot tinyint(4) DEFAULT '0' NOT NULL,
	personellnumber int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY email (email)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

LOCK TABLES feusers WRITE;
INSERT INTO feusers VALUES (1,0,NOW(),NOW(),0,0,0,'denkfabrik','$2a$10$3d34c49b983bab20eeba8uqotZMs4qmE74REKms2xR8vL0d1/M7k.','','','','schreiber@denkfabrik-group.com','','','',0,'',1,1,1,0,0,'Philipp Schreiber','','','','','',0,0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `feuser_onspotdates_lookup`;
CREATE TABLE IF NOT EXISTS `feuser_onspotdates_lookup`(  
	uid int(11) NOT NULL auto_increment,
	`uid_local` int(11) NOT NULL DEFAULT '0',
	`uid_foreign` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (uid),	
	KEY `local` (`uid_local`),
    KEY `foreign` (`uid_foreign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS onspotdates;
CREATE TABLE IF NOT EXISTS onspotdates (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,	
  PRIMARY KEY (uid),
  KEY tstamp (tstamp)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

LOCK TABLES onspotdates WRITE;
INSERT INTO `onspotdates` (tstamp) VALUES (1446937200),(1447023600),(1447110000),(1447196400),(1447282800),(1447369200),(1447455600);
UNLOCK TABLES;





--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS permissions;
CREATE TABLE IF NOT EXISTS permissions (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	profileid int(10) unsigned NOT NULL,
	resourceid int(10) unsigned NOT NULL,
	resourceaction varchar(55) NOT NULL,
  PRIMARY KEY (uid),
  KEY profilesid (profileid)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


LOCK TABLES permissions WRITE;
INSERT INTO permissions (uid, crdate, profileid, resourceid, resourceaction) VALUES
(1, NOW(), 1, 1, 'index'),
(2, NOW(), 1, 1, 'create'),
(3, NOW(), 1, 1, 'retrieve'),
(4, NOW(), 1, 1, 'update'),
(5, NOW(), 1, 1, 'delete'),
(6, NOW(), 1, 1, 'upload'),
(7, NOW(), 1, 4, 'index'),
(8, NOW(), 1, 4, 'create'),
(9, NOW(), 1, 4, 'retrieve'),
(10, NOW(), 1, 4, 'update'),
(11, NOW(), 1, 4, 'delete');
UNLOCK TABLES;



--
-- Table structure for table `resources`
--
DROP TABLE IF EXISTS resources;
CREATE TABLE IF NOT EXISTS resources(
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	title varchar(255) NOT NULL,
	PRIMARY KEY (uid)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


LOCK TABLES resources WRITE;
INSERT INTO resources (uid, crdate, title) VALUES
(1, NOW(),'feusers'),
(2, NOW(),'languages'),
(3, NOW(),'permissions'),
(4, NOW(),'usergroups');
UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS profiles;
CREATE TABLE IF NOT EXISTS profiles (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	title varchar(255) NOT NULL,	
  PRIMARY KEY (uid),
  KEY hidden (hidden)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2;

LOCK TABLES profiles WRITE;
INSERT INTO profiles (uid, crdate, title) VALUES
(1,NOW() ,'Superuser');
UNLOCK TABLES;
--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS usergroups;
CREATE TABLE IF NOT EXISTS usergroups (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	title varchar(255) NOT NULL,	
	lang int(11) DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY hidden (hidden)
) ENGINE=InnoDB  AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


LOCK TABLES usergroups WRITE;
INSERT INTO usergroups (uid, crdate, cruser_id, title, lang) VALUES
(1,NOW(),0,'Global',2),
(2,NOW(),1,'Berater',1),
(3,NOW(),1,'Standmitarbeiter',1);
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	title varchar(255) NOT NULL,
	shorttitle varchar(4) NOT NULL,
  PRIMARY KEY (uid),
  KEY hidden (hidden)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

LOCK TABLES `languages` WRITE;
INSERT INTO `languages` (uid, crdate, title,shorttitle) VALUES
(1,NOW(),'Deutsch','de'),
(2,NOW(),'English','en');
UNLOCK TABLES;


--
-- Table structure for table `failed_logins`
--

DROP TABLE IF EXISTS `failed_logins`;
CREATE TABLE IF NOT EXISTS `failed_logins` (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	userid	 int(10) unsigned DEFAULT NULL,
	ipaddress char(15) NOT NULL,
	attempted int(10) unsigned DEFAULT NULL,
	useragent varchar(120) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Table structure for table `success_logins`
--

DROP TABLE IF EXISTS `success_logins`;
CREATE TABLE IF NOT EXISTS `success_logins` (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	endsession int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	userid	 int(10) unsigned DEFAULT NULL,
	ipaddress char(15) NOT NULL,
	attempted int(10) unsigned DEFAULT NULL,
	useragent varchar(120) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `zipcodes`;
CREATE TABLE IF NOT EXISTS `zipcodes` (
   `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `country` tinytext CHARACTER SET utf8,
  `language` tinytext CHARACTER SET utf8,
  `iso2` tinytext CHARACTER SET utf8,
  `region1` tinytext CHARACTER SET utf8,
  `region2` tinytext CHARACTER SET utf8,
  `region3` tinytext CHARACTER SET utf8,
  `region4` tinytext CHARACTER SET utf8,
  `zip` int(11) NOT NULL DEFAULT '0',
  `city` tinytext CHARACTER SET utf8,
  `area1` tinytext CHARACTER SET utf8,
  `area2` tinytext CHARACTER SET utf8,
  `latitude` tinytext CHARACTER SET utf8,
  `longitude` tinytext CHARACTER SET utf8,
  `tz` tinytext CHARACTER SET utf8,
  `utc` tinytext CHARACTER SET utf8,
  `dst` tinytext CHARACTER SET utf8,
  `baywaid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `kfz` varchar(256) CHARACTER SET utf8 NOT NULL,
  `zipcode` varchar(6) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `baywaid` (`baywaid`),
  KEY `zip` (`zip`),
  KEY `zipcode` (`zipcode`),
  KEY `city` (`city`(100))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `feuser_zipcodes_lookup`;
CREATE TABLE IF NOT EXISTS `feuser_zipcodes_lookup`(  
	`uid` int(11) NOT NULL AUTO_INCREMENT,
	`uid_local` int(11) NOT NULL DEFAULT '0',
	`uid_foreign` int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`uid`),
	KEY `local` (`uid_local`),
    KEY `foreign` (`uid_foreign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `session` varchar(255) COLLATE utf8_general_ci NOT NULL,  
  `questionnumber` int(11) NOT NULL DEFAULT '0',
  `message` text,
	PRIMARY KEY (`uid`),
	KEY `questionnumber` (`questionnumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `session` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `result` varchar(255) COLLATE utf8_general_ci NOT NULL,    
	PRIMARY KEY (`uid`)
	
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `questionitems`;
CREATE TABLE IF NOT EXISTS `questionitems` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `session` int(11) NOT NULL DEFAULT '0',
  `questionnumber` int(11) NOT NULL DEFAULT '0',
  `itemnumber` int(11) NOT NULL DEFAULT '0',
  `answernumber` int(11) NOT NULL DEFAULT '0',
  `truefalse` tinyint(4) NOT NULL DEFAULT '0',  
	PRIMARY KEY (`uid`),
	KEY `questionnumber` (`questionnumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `surveysession`;
CREATE TABLE IF NOT EXISTS `surveysession` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `session` varchar(255) COLLATE utf8_general_ci NOT NULL,  
	PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `session` varchar(255) COLLATE utf8_general_ci NOT NULL,  
  `feuserid` int(11) NOT NULL DEFAULT '0',
  `message` text,
  `firstname` varchar(255) COLLATE utf8_general_ci NOT NULL,  
  `lastname` varchar(255) COLLATE utf8_general_ci NOT NULL,  
  `phone` varchar(255) COLLATE utf8_general_ci NOT NULL, 
  `zip` varchar(255) COLLATE utf8_general_ci NOT NULL, 
  `city` varchar(255) COLLATE utf8_general_ci NOT NULL, 
  `farmer` tinyint(4) NOT NULL DEFAULT '0',
  `termsagreed` tinyint(4) NOT NULL DEFAULT '0',
	PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
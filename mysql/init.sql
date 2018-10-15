-- Adminer 4.2.5 MySQL dump
use loopback;
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

-- CREATE USER 'user'@'%' IDENTIFIED BY 'password';
-- ALTER USER 'user'@'%' IDENTIFIED WITH mysql_native_password;
-- GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';

-- CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
-- ALTER USER 'user'@'localhost' IDENTIFIED WITH mysql_native_password;
-- GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';


-- CREATE USER 'root'@'%' IDENTIFIED BY 'root';
-- ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password;
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

-- CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password;
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'root';

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `service` varchar(80) DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`username`, `password`, `service`, `nom`, `prenom`, `email`, `role`) VALUES
('barrezj',	NULL,	'DSI',	'BARREZ',	'Jean-Christophe',	'jean-christophe.barrez@lecnam.net',	'gest'),
('exploit',	'something',	NULL,	'',	'',	'',	'admin'),
('jarbouil',	NULL,	NULL,	'JARBOUI',	'Lina',	'lina.jarboui@lecnam.net',	'gest'),
('labonneo',	NULL,	'DSI',	'LABONNE-JAYAT',	'Olivier',	'olivier.labonne-jayat@lecnam.net',	'gest'),
('leblancm',	NULL,	'DSI',	'LEBLANC',	'Matthieu',	'matthieu.leblanc@lecnam.net',	'gest'),
('lelongj',	'',	'DSI',	'LELONG',	'Jérôme',	'jerome.lelong@lecnam.net',	'admin');

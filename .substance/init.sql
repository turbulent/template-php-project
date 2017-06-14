CREATE DATABASE IF NOT EXISTS `dev`;
CREATE DATABASE IF NOT EXISTS `ci`;
GRANT ALL PRIVILEGES ON `dev`.* TO `admin`@'%' identified by 'dev';
GRANT ALL PRIVILEGES ON `ci`.* TO `admin`@'%' identified by 'dev';

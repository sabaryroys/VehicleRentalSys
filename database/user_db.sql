create database vehicle_db;
use vehicle_db;
create table user_pass (`uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into user_pass values('sabari','12345');
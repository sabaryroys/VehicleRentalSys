create database vehicle_db;
use vehicle_db;
create table user_pass (`uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


insert into user_pass values('sabari','test');
insert into user_pass values('admin','admin');


CREATE TABLE `vehicle_db`.`vehicle_details` ( `v_id` VARCHAR(5) NOT NULL , `v_reg_no` VARCHAR(10) NOT NULL , `v_type` VARCHAR(23) NOT NULL , `v_model` VARCHAR(30) NOT NULL , `v_avble` VARCHAR(1) NOT NULL , `v_ins_st_dt` DATE NOT NULL , `v_ins_end_dt` DATE NOT NULL , `v_remark` VARCHAR(255) NULL DEFAULT NULL ) ENGINE = MyISAM;

INSERT INTO `vehicle_details`(`v_id`, `v_reg_no`, `v_type`, `v_model`, `v_avble`, `v_ins_st_dt`, `v_ins_end_dt`, `v_remark`) VALUES ('A0010','KL16F3899','Motor Cycle w/Gear','YAMAHA R15','Y','2022-05-22','2023-05-22','Good condition');

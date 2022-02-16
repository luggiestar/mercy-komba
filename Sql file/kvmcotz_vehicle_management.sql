
CREATE TABLE `dbo_tbl_leaveapp` (
  `LeaveNO` int(11) DEFAULT NULL,
  `FiscalYear` varchar(4) DEFAULT NULL,
  `Mon` varchar(2) DEFAULT NULL,
  `Jon` varchar(30) DEFAULT NULL,
  `Codeno` varchar(50) DEFAULT NULL,
  `FullName` mediumtext DEFAULT NULL,
  `Trans_Date` datetime DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

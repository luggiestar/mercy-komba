-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 06:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kvmcotz_vehicle_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_service`
-- (See below for the actual view)
--
CREATE TABLE `all_service` (
);

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

CREATE TABLE `car_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`id`, `brand_name`, `added_by`, `date`) VALUES
(1, 'Nissan', 14, '2022-04-19 20:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `car_capacity`
--

CREATE TABLE `car_capacity` (
  `id` int(11) NOT NULL,
  `car_capacity` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_capacity`
--

INSERT INTO `car_capacity` (`id`, `car_capacity`, `date`, `added_by`) VALUES
(1, 'EC engine', '2022-04-19 20:37:41', 14);

-- --------------------------------------------------------

--
-- Table structure for table `dbo_tbl_leaveapp`
--

CREATE TABLE `dbo_tbl_leaveapp` (
  `LeaveNO` int(11) DEFAULT NULL,
  `FiscalYear` varchar(4) DEFAULT NULL,
  `Mon` varchar(2) DEFAULT NULL,
  `Jon` varchar(30) DEFAULT NULL,
  `Codeno` varchar(50) DEFAULT NULL,
  `FullName` mediumtext DEFAULT NULL,
  `Trans_Date` datetime DEFAULT NULL,
  `LeaveType` varchar(50) DEFAULT NULL,
  `LeaveFrom` datetime DEFAULT NULL,
  `Days` double DEFAULT NULL,
  `LeaveTo` datetime DEFAULT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  `LeaveAll` double DEFAULT NULL,
  `CashForLeave` double DEFAULT NULL,
  `PlannedNextLeave` datetime DEFAULT NULL,
  `Comments` mediumtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Dept` varchar(255) DEFAULT NULL,
  `ApproveID` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `JobTitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo_tbl_leaveapp`
--

INSERT INTO `dbo_tbl_leaveapp` (`LeaveNO`, `FiscalYear`, `Mon`, `Jon`, `Codeno`, `FullName`, `Trans_Date`, `LeaveType`, `LeaveFrom`, `Days`, `LeaveTo`, `ReturnDate`, `LeaveAll`, `CashForLeave`, `PlannedNextLeave`, `Comments`, `status`, `email`, `Dept`, `ApproveID`, `Phone`, `JobTitle`) VALUES
(230, NULL, NULL, NULL, '0018', 'DORA A. KYUNGU', NULL, 'AL', '2020-04-15 00:00:00', 10, '2020-04-25 00:00:00', '2020-04-26 00:00:00', 0, 0, NULL, NULL, 'Approved', 'musa.mwakitwange@mecsoftware-tz.com', 'Corporate Banking', '0017', NULL, 'Assistant Accounts Relationship Manager'),
(231, NULL, NULL, NULL, '0012', 'CARO MWENDA', NULL, 'AL', '2020-04-15 00:00:00', 10, '2020-04-25 00:00:00', '2020-04-26 00:00:00', 0, 0, NULL, NULL, 'new', 'musa.mwakitwange@mecsoftware-tz.com', 'Corporate Banking', '0019', NULL, 'Assistant Accounts Relationship Manager'),
(232, NULL, NULL, NULL, '0015', 'ZITTO ALFAYO', NULL, 'AL', '2020-04-15 00:00:00', 10, '2020-04-25 00:00:00', '2020-04-26 00:00:00', 0, 0, NULL, NULL, 'new', 'musa.mwakitwange@mecsoftware-tz.com', 'Corporate Banking', '0019', NULL, 'Assistant Accounts Relationship Manager'),
(233, NULL, NULL, NULL, '0019', 'ALBERT NGUSARA', NULL, 'AL', '2020-04-15 00:00:00', 10, '2020-04-25 00:00:00', '2020-04-26 00:00:00', 0, 0, NULL, NULL, 'Approved', 'musa.mwakitwange@mecsoftware-tz.com', 'Corporate Banking', '0017', NULL, 'Assistant Accounts Relationship Manager'),
(234, NULL, NULL, NULL, '0013', 'MICHAEL JOHN MWAKALILE', NULL, 'AL', '2020-04-27 00:00:00', 10, '2020-05-07 00:00:00', '2020-05-08 00:00:00', 0, 0, NULL, NULL, 'New', 'musa.mwakitwange@mecsoftware-tz.com', 'Finance& Administration', '0019', '0715804494', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverid` int(11) NOT NULL,
  `drname` varchar(255) NOT NULL,
  `driverdob` date NOT NULL,
  `drjoin` date NOT NULL,
  `drmobile` varchar(20) NOT NULL,
  `drlicense` varchar(30) NOT NULL,
  `drlicensevalid` date NOT NULL,
  `draddress` varchar(50) NOT NULL,
  `drphoto` varchar(30) NOT NULL,
  `dr_available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `id` int(11) NOT NULL,
  `fuel_type` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fuel_cost` int(10) NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`id`, `fuel_type`, `date`, `fuel_cost`, `added_by`) VALUES
(6, 'mafuta', '2022-04-18 12:43:11', 900, 14);

-- --------------------------------------------------------

--
-- Table structure for table `mantainance`
--

CREATE TABLE `mantainance` (
  `mant_id` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `garage` varchar(40) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `date_mant` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mantainance`
--

INSERT INTO `mantainance` (`mant_id`, `vehicle`, `garage`, `amount`, `description`, `date_mant`) VALUES
(1, 2, 'mwanza', 1000, 'yuo', '2022-04-20'),
(2, 2, 'mwanza', 2100, 'AMAIZING WOW', '2022-04-20'),
(3, 2, 'mtumba', 1000, 'wow', '2022-04-20'),
(4, 2, 'mwanza', 199, 'wer', '2022-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `route_name` varchar(200) NOT NULL,
  `route_fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `route_name`, `route_fare`) VALUES
(1, 'kariakoo', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_chart`
--

CREATE TABLE `tbl_account_chart` (
  `acount_id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_chart`
--

INSERT INTO `tbl_account_chart` (`acount_id`, `account_name`, `created_at`, `created_by`) VALUES
(1, 'NMB BANK', '2022-02-23 18:19:39', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_credit`
--

CREATE TABLE `tbl_account_credit` (
  `credit_id` int(11) NOT NULL,
  `account_chart` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `credited` int(11) NOT NULL DEFAULT 0,
  `debited` int(11) NOT NULL DEFAULT 0,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_credit`
--

INSERT INTO `tbl_account_credit` (`credit_id`, `account_chart`, `balance`, `credited`, `debited`, `last_update`, `created_by`) VALUES
(1, 1, 917000, 3, 1, '2022-02-23 18:19:50', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_summary`
--

CREATE TABLE `tbl_account_summary` (
  `summary_id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `amount_before` bigint(20) NOT NULL,
  `amount_after` bigint(20) NOT NULL,
  `status` enum('debit','credit') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_summary`
--

INSERT INTO `tbl_account_summary` (`summary_id`, `account`, `amount_before`, `amount_after`, `status`, `created_at`, `created_by`) VALUES
(1, 1, 0, 10000, 'credit', '2022-02-23 18:20:11', 14),
(2, 1, 10000, 1010000, 'credit', '2022-02-23 18:20:56', 14),
(3, 1, 1010000, 1017000, 'credit', '2022-02-23 18:22:24', 14),
(4, 1, 1017000, 917000, 'debit', '2022-02-23 18:37:54', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenditure`
--

CREATE TABLE `tbl_expenditure` (
  `exp_id` int(11) NOT NULL,
  `expenditure_amount` bigint(20) NOT NULL,
  `account_debited` int(11) DEFAULT NULL,
  `commited` enum('0','1') NOT NULL DEFAULT '0',
  `expenditure_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_expenditure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_expenditure`
--

INSERT INTO `tbl_expenditure` (`exp_id`, `expenditure_amount`, `account_debited`, `commited`, `expenditure_date`, `user_expenditure`) VALUES
(1, 100000, 1, '1', '2022-02-23 18:37:44', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenditure_logs`
--

CREATE TABLE `tbl_expenditure_logs` (
  `expenditure_logs_id` int(11) NOT NULL,
  `expenditure_type` int(11) NOT NULL,
  `expenditure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_expenditure_logs`
--

INSERT INTO `tbl_expenditure_logs` (`expenditure_logs_id`, `expenditure_type`, `expenditure`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenditure_type`
--

CREATE TABLE `tbl_expenditure_type` (
  `expenditure_type_id` int(11) NOT NULL,
  `expenditure_type_name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_expenditure_type`
--

INSERT INTO `tbl_expenditure_type` (`expenditure_type_id`, `expenditure_type_name`, `date`) VALUES
(1, 'mantainance', '2022-02-23 18:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE `tbl_income` (
  `income_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `account_credited` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_income`
--

INSERT INTO `tbl_income` (`income_id`, `source`, `amount`, `account_credited`, `date`, `posted_by`) VALUES
(1, 1, 10000, 1, '2022-02-23 18:20:11', 14),
(2, 1, 1000000, 1, '2022-02-23 18:20:56', 14),
(3, 1, 7000, 1, '2022-02-23 18:22:24', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_list`
--

CREATE TABLE `tbl_income_list` (
  `income_list_id` int(11) NOT NULL,
  `income_list_name` varchar(100) NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_income_list`
--

INSERT INTO `tbl_income_list` (`income_list_id`, `income_list_name`, `posted_at`, `posted_by`) VALUES
(1, 'education', '2022-02-23 18:20:01', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL,
  `log_action` varchar(100) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `log_action`, `log_date`, `user`) VALUES
(1, 'adding new account Chart type', '2022-02-23 18:19:38', 14),
(2, 'adding new account', '2022-02-23 18:19:50', 14),
(3, 'adding new income source type', '2022-02-23 18:20:01', 14),
(4, 'adding new income', '2022-02-23 18:20:11', 14),
(5, 'adding new income', '2022-02-23 18:20:56', 14),
(6, 'adding new income', '2022-02-23 18:22:24', 14),
(7, 'adding new expenditure type', '2022-02-23 18:36:38', 14),
(8, 'adding new expenditure type', '2022-02-23 18:37:08', 14),
(9, 'Commit expenditure of amount Tsh.100000/=', '2022-02-23 18:37:54', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mantainance_service`
--

CREATE TABLE `tbl_mantainance_service` (
  `mantainance_service_id` int(11) NOT NULL,
  `mantainance` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `service_id` int(11) NOT NULL,
  `vehicle_num` int(11) NOT NULL,
  `location` varchar(300) CHARACTER SET latin1 NOT NULL,
  `service_price` bigint(20) NOT NULL,
  `service_description` text CHARACTER SET latin1 NOT NULL,
  `service_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL,
  `registred_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `sex`, `email`, `username`, `is_admin`, `is_active`, `password`, `registred_at`, `profile_picture`) VALUES
(14, 'Mercy', 'Komba', NULL, 'rakib@gmail.com', 'mercy', 1, 1, '$2y$10$uhoIVVUS0P6WEqpUtNIJOej3.JLCZ61NAyHzDIFHLY9CBshUfPyAi', '2022-01-21 10:46:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `plate_no` varchar(100) NOT NULL,
  `veh_type` varchar(40) NOT NULL,
  `chesisno` varchar(100) NOT NULL,
  `brand` int(11) NOT NULL,
  `veh_color` varchar(100) NOT NULL,
  `veh_regdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `veh_description` varchar(255) NOT NULL,
  `veh_photo` varchar(255) NOT NULL,
  `veh_available` int(11) NOT NULL,
  `no_passengers` int(11) NOT NULL,
  `eng_capacity` int(11) NOT NULL,
  `fuel_type` int(11) NOT NULL,
  `route_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `plate_no`, `veh_type`, `chesisno`, `brand`, `veh_color`, `veh_regdate`, `veh_description`, `veh_photo`, `veh_available`, `no_passengers`, `eng_capacity`, `fuel_type`, `route_name`) VALUES
(2, '1009TZ', 'Nissan Civillian', '1234', 1, 'Blue', '0000-00-00 00:00:00', 'morogoro to mzumbe', 'newcar-civilian-front.jpg', 1, 32, 1, 6, 1);

-- --------------------------------------------------------

--
-- Structure for view `all_service`
--
DROP TABLE IF EXISTS `all_service`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_service`  AS  select `tbl_service`.`service_name` AS `service_name`,`tbl_mantainance_service`.`mantainance` AS `mantainance` from ((`tbl_mantainance_service` join `tbl_service`) join `mantainance`) where `tbl_mantainance_service`.`mantainance` = `mantainance`.`mant_id` and `tbl_mantainance_service`.`service` = `tbl_service`.`service_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `car_brand`
--
ALTER TABLE `car_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addeByUserFK` (`added_by`);

--
-- Indexes for table `car_capacity`
--
ALTER TABLE `car_capacity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enginecapacityFK` (`added_by`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverid`);

--
-- Indexes for table `fuel_type`
--
ALTER TABLE `fuel_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FuelTypeAddedByFK` (`added_by`);

--
-- Indexes for table `mantainance`
--
ALTER TABLE `mantainance`
  ADD PRIMARY KEY (`mant_id`),
  ADD KEY `mntainanceVehicleFK` (`vehicle`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_chart`
--
ALTER TABLE `tbl_account_chart`
  ADD PRIMARY KEY (`acount_id`),
  ADD UNIQUE KEY `account_name` (`account_name`),
  ADD KEY `created_by_chart` (`created_by`);

--
-- Indexes for table `tbl_account_credit`
--
ALTER TABLE `tbl_account_credit`
  ADD PRIMARY KEY (`credit_id`),
  ADD UNIQUE KEY `account_chart` (`account_chart`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `tbl_account_summary`
--
ALTER TABLE `tbl_account_summary`
  ADD PRIMARY KEY (`summary_id`),
  ADD KEY `account_summary_userFK` (`created_by`),
  ADD KEY `account_summary_fk` (`account`);

--
-- Indexes for table `tbl_expenditure`
--
ALTER TABLE `tbl_expenditure`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `user_expenditure` (`user_expenditure`),
  ADD KEY `accountdebited` (`account_debited`);

--
-- Indexes for table `tbl_expenditure_logs`
--
ALTER TABLE `tbl_expenditure_logs`
  ADD PRIMARY KEY (`expenditure_logs_id`),
  ADD KEY `expenditureFK` (`expenditure`),
  ADD KEY `expenditure_typeFK` (`expenditure_type`);

--
-- Indexes for table `tbl_expenditure_type`
--
ALTER TABLE `tbl_expenditure_type`
  ADD PRIMARY KEY (`expenditure_type_id`),
  ADD UNIQUE KEY `expenditure_type_name` (`expenditure_type_name`);

--
-- Indexes for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD PRIMARY KEY (`income_id`),
  ADD KEY `income_user` (`posted_by`),
  ADD KEY `source` (`source`),
  ADD KEY `account` (`account_credited`);

--
-- Indexes for table `tbl_income_list`
--
ALTER TABLE `tbl_income_list`
  ADD PRIMARY KEY (`income_list_id`),
  ADD KEY `income_list_name` (`posted_by`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `userlog` (`user`);

--
-- Indexes for table `tbl_mantainance_service`
--
ALTER TABLE `tbl_mantainance_service`
  ADD PRIMARY KEY (`mantainance_service_id`),
  ADD KEY `mantainanceFK` (`mantainance`),
  ADD KEY `serviceFK` (`service`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `serviceVehicleFk` (`vehicle_num`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`),
  ADD KEY `BrandVahicle` (`brand`),
  ADD KEY `FuelTypeVihacle` (`fuel_type`),
  ADD KEY `VehicleRoute` (`route_name`),
  ADD KEY `carCapacity` (`eng_capacity`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_brand`
--
ALTER TABLE `car_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_capacity`
--
ALTER TABLE `car_capacity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_type`
--
ALTER TABLE `fuel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mantainance`
--
ALTER TABLE `mantainance`
  MODIFY `mant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_account_chart`
--
ALTER TABLE `tbl_account_chart`
  MODIFY `acount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_account_credit`
--
ALTER TABLE `tbl_account_credit`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_account_summary`
--
ALTER TABLE `tbl_account_summary`
  MODIFY `summary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_expenditure`
--
ALTER TABLE `tbl_expenditure`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_expenditure_logs`
--
ALTER TABLE `tbl_expenditure_logs`
  MODIFY `expenditure_logs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_expenditure_type`
--
ALTER TABLE `tbl_expenditure_type`
  MODIFY `expenditure_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_income`
--
ALTER TABLE `tbl_income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_income_list`
--
ALTER TABLE `tbl_income_list`
  MODIFY `income_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_mantainance_service`
--
ALTER TABLE `tbl_mantainance_service`
  MODIFY `mantainance_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_brand`
--
ALTER TABLE `car_brand`
  ADD CONSTRAINT `addeByUserFK` FOREIGN KEY (`added_by`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `car_capacity`
--
ALTER TABLE `car_capacity`
  ADD CONSTRAINT `enginecapacityFK` FOREIGN KEY (`added_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `fuel_type`
--
ALTER TABLE `fuel_type`
  ADD CONSTRAINT `FuelTypeAddedByFK` FOREIGN KEY (`added_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `mantainance`
--
ALTER TABLE `mantainance`
  ADD CONSTRAINT `mntainanceVehicleFK` FOREIGN KEY (`vehicle`) REFERENCES `vehicle` (`veh_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_account_chart`
--
ALTER TABLE `tbl_account_chart`
  ADD CONSTRAINT `created_by_chart` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_account_credit`
--
ALTER TABLE `tbl_account_credit`
  ADD CONSTRAINT `chart_summary` FOREIGN KEY (`account_chart`) REFERENCES `tbl_account_chart` (`acount_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_account_summary`
--
ALTER TABLE `tbl_account_summary`
  ADD CONSTRAINT `account_summary_fk` FOREIGN KEY (`account`) REFERENCES `tbl_account_credit` (`credit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `account_summary_userFK` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_expenditure`
--
ALTER TABLE `tbl_expenditure`
  ADD CONSTRAINT `accountdebited` FOREIGN KEY (`account_debited`) REFERENCES `tbl_account_credit` (`credit_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_expenditure` FOREIGN KEY (`user_expenditure`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_expenditure_logs`
--
ALTER TABLE `tbl_expenditure_logs`
  ADD CONSTRAINT `expenditureFK` FOREIGN KEY (`expenditure`) REFERENCES `tbl_expenditure` (`exp_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `expenditure_typeFK` FOREIGN KEY (`expenditure_type`) REFERENCES `tbl_expenditure_type` (`expenditure_type_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD CONSTRAINT `account` FOREIGN KEY (`account_credited`) REFERENCES `tbl_account_chart` (`acount_id`),
  ADD CONSTRAINT `income_user` FOREIGN KEY (`posted_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `source` FOREIGN KEY (`source`) REFERENCES `tbl_income_list` (`income_list_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_income_list`
--
ALTER TABLE `tbl_income_list`
  ADD CONSTRAINT `income_list_name` FOREIGN KEY (`posted_by`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD CONSTRAINT `userlog` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_mantainance_service`
--
ALTER TABLE `tbl_mantainance_service`
  ADD CONSTRAINT `mantainanceFK` FOREIGN KEY (`mantainance`) REFERENCES `mantainance` (`mant_id`),
  ADD CONSTRAINT `serviceFK` FOREIGN KEY (`service`) REFERENCES `tbl_service` (`service_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD CONSTRAINT `serviceVehicleFk` FOREIGN KEY (`vehicle_num`) REFERENCES `vehicle` (`veh_id`) ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `BrandVahicle` FOREIGN KEY (`brand`) REFERENCES `car_brand` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FuelTypeVihacle` FOREIGN KEY (`fuel_type`) REFERENCES `fuel_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `VehicleRoute` FOREIGN KEY (`route_name`) REFERENCES `route` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `carCapacity` FOREIGN KEY (`eng_capacity`) REFERENCES `car_capacity` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

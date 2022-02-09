-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 06:07 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_management`
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

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'mihaf24', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `car_brand`
--

CREATE TABLE `car_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_brand`
--

INSERT INTO `car_brand` (`id`, `brand_name`, `added_by`, `date`) VALUES
(1, 'Toyota', 14, '2021-07-16 10:29:35'),
(2, 'Toyota', 14, '2021-07-16 10:29:35'),
(3, 'Suzuki', 14, '2021-09-19 18:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `car_capacity`
--

CREATE TABLE `car_capacity` (
  `id` int(11) NOT NULL,
  `car_capacity` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_capacity`
--

INSERT INTO `car_capacity` (`id`, `car_capacity`, `date`, `added_by`) VALUES
(1, '6000cc', '2021-07-16 11:42:26', 14),
(2, '1500cc', '2021-07-16 12:09:23', 14),
(4, '1000cc', '2021-07-16 12:25:39', 14);

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
  `FullName` mediumtext,
  `Trans_Date` datetime DEFAULT NULL,
  `LeaveType` varchar(50) DEFAULT NULL,
  `LeaveFrom` datetime DEFAULT NULL,
  `Days` double DEFAULT NULL,
  `LeaveTo` datetime DEFAULT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  `LeaveAll` double DEFAULT NULL,
  `CashForLeave` double DEFAULT NULL,
  `PlannedNextLeave` datetime DEFAULT NULL,
  `Comments` mediumtext,
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
  `dr_available` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `drname`, `driverdob`, `drjoin`, `drmobile`, `drlicense`, `drlicensevalid`, `draddress`, `drphoto`, `dr_available`) VALUES
(22, 'lugano Emmanuel', '2004-07-08', '0000-00-00', '0762506012', '3232334jk237', '2021-06-19', 'P.O BOX 01 Mbeya', 'mulogo.png', 1),
(23, 'lugano Mwakapuku', '2021-06-25', '0000-00-00', '0762506012', '3232334jk237', '2021-06-25', 'P.O BOX 01 m', 'mulogo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `id` int(11) NOT NULL,
  `fuel_type` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`id`, `fuel_type`, `date`, `added_by`) VALUES
(1, 'Diesel', '2021-07-16 10:44:08', 14),
(2, 'Petroll', '2021-09-19 18:08:45', 14);

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
(5, 2, 'Mlimani city', 100, 'Nothing', '2021-07-17');

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
(1, 'Mjini_Manyuki', 600),
(2, 'Mjini_Mkundi', 600),
(3, 'Mjini_Bigwa', 400);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `is_admin`, `is_active`, `password`) VALUES
(13, 'dadoooo', 'ahmed', 'fahaha@gmail.com', 'asdasd', 1, 1, 'asdasdad'),
(14, 'Mercy', 'Komba', 'rakib@gmail.com', 'mercy', 1, 0, '1234'),
(15, 'amie', 'charles', 'amiefungo@gmail.com', 'amie', 1, 1, 'amie'),
(17, 'amie', 'charles', 'amiefungo@gmail', 'charlesamie', 0, 1, 'amie2020'),
(21, 'lugano', 'mwakapuku', 'lumwakapuku@gmail.com', 'luggie', 0, 1, '1122'),
(22, 'lugano', 'Mwakapuku', 'lumwakapuku@gmail.com', 'luggie', 0, 1, '1122');

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
  `veh_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
(2, 'T 122 DSC', 'COSTA', '3434', 1, 'GREEN', '2021-07-16 10:03:24', 'For my son luggie', 'mulogo.png', 1, 12, 1, 2, 2),
(3, 'ee33', 'dds', '223', 2, 'blue', '0000-00-00 00:00:00', 'sdasdasd', 'bb.JPG', 1, 12, 2, 1, 1);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_brand`
--
ALTER TABLE `car_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_capacity`
--
ALTER TABLE `car_capacity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fuel_type`
--
ALTER TABLE `fuel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mantainance`
--
ALTER TABLE `mantainance`
  MODIFY `mant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 12:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blsm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `inquiriesID` int(100) NOT NULL,
  `problemDesciption` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`inquiriesID`, `problemDesciption`, `created_at`, `username`) VALUES
(34, 'Can I pay with credit card?', '2025-02-07 19:33:20', 'AfnanD'),
(35, 'Yes, you can', '2025-02-07 19:33:50', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productDescription` text NOT NULL,
  `productPrice` decimal(10,0) DEFAULT NULL,
  `productImage` varchar(255) NOT NULL,
  `productType` enum('sale','donation','rent') NOT NULL,
  `rentalPeriod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productDescription`, `productPrice`, `productImage`, `productType`, `rentalPeriod`) VALUES
(1, 'Medical Bed', 'Medical beds are designed with the user\'s comfort and health in mind. They come with various features:\n\n1- Adjustable Heights: Our beds can be easily adjusted to different heights for comfort and ease of use.\n\n2- Side Rails: For safety, our beds come with side rails to prevent falls.\n\n', 600, 'img/medical bed.png', 'sale', NULL),
(2, 'Blood Pressure Monitor', 'Omron HEM 7124 features Advanced Accuracy Technology, Bluetooth connectivity with the OMRON Connect app, and an Irregular Heartbeat Symbol, ensuring precise and reliable readings.', 80, 'img/blood pr.png', 'sale', NULL),
(3, 'Folding Walker', 'A Folding Walker with adjustable handlebar heights, a reliable braking system, and a folding mechanism ensures mobility aid for individuals with limited mobility.', 55, 'img/walker.png', 'sale', NULL),
(4, 'Blood Sugar Monitor', 'Measures glucose levels in the bloodstream using a blood sample, a test strip, and a glucose meter, offering quick and accurate diabetes management insights.', 150, 'img/Blood sugar.png', 'sale', NULL),
(5, 'First Aid Kit', 'A first aid kit is a comprehensive set of medical supplies used to treat minor injuries and ailments. It typically includes bandages, antiseptic wipes, gauze pads, scissors, tweezers, and pain relievers. Essential for both home and travel use, a well-stocked first aid kit ensures you can respond quickly to injuries and accidents.', 0, 'https://m.media-amazon.com/images/I/71iPD9Ik02L.jpg', 'donation', NULL),
(21, 'Digital Thermometer', 'A digital thermometer is an essential device for accurately measuring body temperature. It provides fast and reliable readings, helping to detect fever or abnormal temperature changes. Available in oral, ear, and forehead versions, digital thermometers are easy to use and provide precise results in a matter of seconds, making them ideal for both home and hospital use.', 0, 'https://www.cnwtc.com/uploads/202132262/body-forehead-handheld-thermometer-medical38582866167.jpg', 'donation', NULL),
(22, 'Blood Pressure Monitor', 'A blood pressure monitor allows for the easy monitoring of blood pressure at home or in clinical settings. It typically features an automatic cuff that inflates and deflates with the press of a button. Regular use of this device helps track blood pressure fluctuations and assists in managing conditions like hypertension, making it a vital tool for people with cardiovascular concerns.', 0, 'https://images-na.ssl-images-amazon.com/images/I/51Vh-YcSGwL.jpg', 'donation', NULL),
(23, 'Pulse Oximeter', 'This small, portable device measures the oxygen saturation level in the blood, offering critical information about respiratory function. By clipping onto the finger, it provides readings of oxygen levels and pulse rate, making it a handy tool for people with respiratory diseases or those recovering after surgery, ensuring they are maintaining adequate oxygen levels.', 0, 'https://m.media-amazon.com/images/I/6189MAMYiqL._AC_UF1000,1000_QL80_.jpg', 'donation', NULL),
(24, 'Wheelchair', 'A wheelchair is a mobility aid that allows individuals with physical disabilities or injuries to move more easily. Wheelchairs come in various designs, including manual and electric models, to suit different levels of need. With features like adjustable footrests and armrests, they can be customized for comfort and support, ensuring greater independence for users.', 0, 'https://vmscart.com/cdn/shop/files/VMSCarelineFoldableWheelchairSELECTPLUSProfileImage-1.png?v=1683976167&width=1445', 'donation', NULL),
(31, 'Hospital Bed', 'Hospital beds are often rented for home care, particularly for patients who require specialized care and comfort at home. These adjustable beds allow for positioning changes that aid in comfort and health, such as raising the head or feet. Rental services provide hospital beds for patients who need them for a short period due to surgery recovery or chronic illness.', 250, 'https://images-cdn.ubuy.co.in/655cf0a1e7ba84330d7f30b5-dargash-medical-hospital-bed-electric.jpg', 'rent', 0),
(32, 'Oxygen Concentrator', 'An oxygen concentrator is a device that extracts oxygen from the surrounding air and delivers it to individuals who need supplemental oxygen. It is often rented for home use by patients with chronic respiratory conditions, such as COPD or asthma, who need continuous oxygen therapy. Renting the device is a cost-effective solution for patients who need temporary oxygen therapy or do not require it long-term.', 130, 'https://m.media-amazon.com/images/I/612MtcDvigS.jpg', 'rent', 0),
(33, 'Compression Therapy Devices', 'Compression therapy devices, such as pneumatic compression pumps, are rented to help with circulation issues, such as those associated with lymphedema, varicose veins, or post-surgery recovery. These devices help improve blood flow and reduce swelling in the legs and arms. Renting compression therapy equipment provides a temporary solution for individuals undergoing recovery or dealing with chronic conditions that require periodic compression therapy.', 185, 'https://m.media-amazon.com/images/I/71PDQp3OYUL.jpg', 'rent', 0),
(34, 'Patient Lift (Hoyer Lift)', 'A patient lift, often known as a Hoyer lift, is used to move patients who are unable to move independently, such as those with severe mobility impairments or recovering from surgery. The device uses a sling to lift and transfer patients safely, preventing injury to both the patient and caregivers. Renting a patient lift is an excellent choice for those who need it temporarily and do not require it for long-term use.', 100, 'https://patientaid.com/cdn/shop/products/patient_aid-21.jpg?v=1604569405', 'rent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `productRating` enum('1','2','3','4','5') DEFAULT NULL,
  `comment` text NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewID`, `productID`, `reviewDate`, `productRating`, `comment`, `username`) VALUES
(51, 4, '2025-02-07 17:33:05', '4', 'Nice!!', 'AfnanD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Status` enum('Guest','Seller','Donor','Vendors') NOT NULL,
  `StateVal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `username`, `password`, `email`, `phoneNumber`, `FullName`, `Status`, `StateVal`) VALUES
(10, 'JanaW', '12345678', 'Jana_walaa@hotmail.com', '0598765432', 'Jana Walaa', 'Guest', 0),
(11, 'Admin', '09128734', 'Admin@gmail.com', '0512345678', 'Admin', 'Guest', 0),
(25, 'AfnanD', '09876543', 'Afnan@gmail.com', '0512345678', 'Afnan Dahlan', 'Guest', 0),
(26, 'jood', '11223344', 'j00d_1424@hotmail.com', '0543224774', 'Jood Albakry', 'Donor', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`inquiriesID`),
  ADD KEY `fk_username` (`username`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `fk_usernameR` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `inquiriesID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_usernameR` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

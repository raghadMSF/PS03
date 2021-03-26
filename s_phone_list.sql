-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 25, 2021 at 05:40 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_phonebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_phone_list`
--

CREATE TABLE `s_phone_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `s_phone_list`
--

INSERT INTO `s_phone_list` (`id`, `name`, `phone`, `mobile`) VALUES
(1, 'Mohamed', '171122333', '0577777777'),
(2, 'samy', '12333222', '0544444444'),
(3, 'ramy', '31123', '0500112233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_phone_list`
--
ALTER TABLE `s_phone_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_phone_list`
--
ALTER TABLE `s_phone_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

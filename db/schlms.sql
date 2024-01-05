-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2023 at 12:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(24, 'admin', '2023-04-04 14:20:11', 'Add Subject s101'),
(25, 'admin', '2023-04-04 17:52:55', 'Add Subject wc1101'),
(26, 'slm', '2023-04-04 19:36:48', 'Add Subject t101'),
(27, 'admin', '2023-04-11 22:29:01', 'Add User s'),
(28, 'slm', '2023-04-12 15:41:44', 'Add School Year 2023-2024'),
(29, 'admin', '2023-04-18 23:22:07', 'Add User sample'),
(30, 'admin', '2023-04-18 23:26:58', 'Edit User one'),
(31, 'admin', '2023-04-19 01:36:19', 'Add Subject S111'),
(32, 'admin', '2023-04-19 01:51:13', 'Edit Subject Sample111'),
(33, 'admin', '2023-04-19 02:36:59', 'Add School Year 2023-2024'),
(34, '', '2023-04-19 21:57:23', 'Add Subject S111'),
(35, 'admin', '2023-04-25 22:37:13', 'Add User sample'),
(36, 'admin', '2023-04-25 22:37:22', 'Edit User sample'),
(37, 'admin', '2023-04-25 23:07:59', 'Add User test'),
(38, 'admin', '2023-04-25 23:08:23', 'Edit User test'),
(39, 'admin', '2023-04-25 23:10:34', 'Add Subject test'),
(40, 'admin', '2023-04-25 23:10:51', 'Edit Subject test'),
(41, 'admin', '2023-04-25 23:13:00', 'Add School Year 2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D'),
(93, 39, 'a', 'A'),
(94, 39, 'b', 'B'),
(95, 39, 'c', 'C'),
(96, 39, 'd', 'D'),
(97, 40, 'Red', 'A'),
(98, 40, 'Green', 'B'),
(99, 40, 'Blue', 'C'),
(100, 40, 'Yellow', 'D'),
(101, 42, 'Red ', 'A'),
(102, 42, 'Blue', 'B'),
(103, 42, 'Yellow', 'C'),
(104, 42, 'Pink', 'D'),
(105, 43, 'Red', 'A'),
(106, 43, 'Green', 'B'),
(107, 43, 'Yellow', 'C'),
(108, 43, 'Pink', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(32, 'admin/uploads/9084_File_sample one.txt', '2023-02-27 19:11:24', 'one', 212, 188, 'sample one'),
(33, 'admin/uploads/8565_File_sample one.txt', '2023-02-27 20:08:18', 'one', 15, 188, 'sample one'),
(34, 'admin/uploads/3748_File_sample one.txt', '2023-04-12 23:59:35', 'Sample', 15, 191, 'Sample'),
(35, 'admin/uploads/1680_File_sample one.txt', '2023-04-16 20:50:37', 'ss', 15, 190, 's s'),
(36, 'admin/uploads/3619_File_sample one.txt', '2023-04-16 21:19:38', 'q', 15, 190, 'q'),
(37, 'admin/uploads/3619_File_sample one.txt', '2023-04-16 21:19:38', 'q', 15, 191, 'q'),
(38, 'admin/uploads/3619_File_sample one.txt', '2023-04-16 21:19:38', 'q', 15, 192, 'q'),
(39, 'admin/uploads/3619_File_sample one.txt', '2023-04-16 21:19:38', 'q', 15, 197, 'q'),
(40, 'admin/uploads/3619_File_sample one.txt', '2023-04-16 21:19:38', 'q', 15, 198, 'q'),
(42, 'admin/uploads/7810_File_sample one.txt', '2023-04-21 01:05:34', 'sample', 22, 200, 'sample'),
(44, 'admin/uploads/9080_File_Test File.pdf', '2023-04-26 00:02:22', 'assignment', 25, 206, 'test test'),
(45, 'admin/uploads/9206_File_Test File.pdf', '2023-04-26 00:04:10', 'test', 25, 206, 'send to all'),
(46, 'admin/uploads/9206_File_Test File.pdf', '2023-04-26 00:04:10', 'test', 25, 207, 'send to all');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(25, 'EcE201'),
(26, 'EcE202'),
(27, 'C201'),
(28, 'C202'),
(29, 'Arch201'),
(30, 'Arch202'),
(31, 'EP201'),
(32, 'EP202'),
(33, 'Mech 201'),
(34, 'Mech 202'),
(36, 'Sample111');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 190, 1800, 7),
(19, 193, 1800, 7),
(20, 191, 1800, 8),
(21, 190, 1800, 8),
(22, 191, 1800, 8),
(23, 192, 1800, 8),
(24, 197, 1800, 8),
(25, 190, 1800, 8),
(26, 191, 1800, 8),
(27, 192, 1800, 8),
(28, 197, 1800, 8),
(29, 200, 1800, 10),
(30, 200, 1800, 10),
(31, 202, 1800, 10),
(32, 190, 1800, 7),
(33, 191, 1800, 7),
(34, 192, 1800, 7),
(35, 197, 1800, 7),
(36, 198, 1800, 7),
(37, 201, 1800, 7),
(38, 200, 1800, 10),
(39, 202, 1800, 10),
(40, 206, 1800, 11),
(41, 207, 1800, 11);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(2, 188, '<p>hiii</p>\r\n'),
(4, 190, '<p>vvv</p>\r\n'),
(5, 191, '<p>Essential subject for all students.</p>\r\n'),
(6, 192, '<p>good</p>\r\n'),
(7, 197, '<p>gg</p>\r\n'),
(8, 200, '<p>Best Subject</p>\r\n'),
(9, 206, '<p>best subject</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Mission</strong></span></span></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Advancing technology research: One of the primary missions of a technological university could be to conduct cutting-edge research in various fields of technology. This could involve exploring new areas of technology or pushing the boundaries of existing ones.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Fostering innovation and entrepreneurship: A technological university could also aim to foster innovation and entrepreneurship among its students and faculty. This could involve providing resources and support to help students and faculty members turn their ideas into successful businesses.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Providing high-quality education: A technological university could prioritize providing high-quality education in technology-related fields, preparing students for careers in a rapidly evolving technological landscape.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Promoting interdisciplinary collaboration: A technological university could encourage collaboration across disciplines, bringing together experts in fields such as engineering, computer science, and business to work on complex technological problems.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Addressing societal challenges: A technological university could also focus on using technology to address pressing societal challenges, such as climate change, healthcare, and social inequality. This could involve partnering with other organizations and stakeholders to develop innovative solutions.</span></p>\r\n	</li>\r\n</ol>\r\n'),
(2, 'Vision', '<p><span style=\"font-family:arial,helvetica,sans-serif\"><strong><span style=\"font-size:16px\">Vision</span></strong></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Empowering future leaders in technology: A technological university could aim to empower the next generation of leaders in technology by providing them with a strong foundation in technological education, critical thinking, and problem-solving skills.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Pushing the boundaries of technology: A technological university could aspire to push the boundaries of technology by conducting groundbreaking research and developing innovative technologies that have the potential to change the world.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Creating a diverse and inclusive community: A technological university could strive to create a diverse and inclusive community that fosters collaboration, creativity, and respect for different perspectives.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Bridging the gap between academia and industry: A technological university could aim to bridge the gap between academia and industry by forging strong partnerships with industry leaders, enabling students and faculty members to gain real-world experience and industry insights.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-family:arial,helvetica,sans-serif\">Making a positive impact on society: A technological university could aspire to use technology to make a positive impact on society by addressing pressing societal challenges such as climate change, healthcare, and social inequality.</span></p>\r\n	</li>\r\n</ol>\r\n'),
(3, 'History', '<pre>\r\n<strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">HISTORY &nbsp; </span></span></strong></pre>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bright Technological University is a private technological university in Myanmar. It is also called BTU. It is technological private research university in Myanmar. BTU was established in 1990 as government university. In 2012, BTU was changed to private university as autonomous university. It is considered as one of the prestigious universities in Myanmar by many education reviewers. BTU produces many valuable architects and engineers. BTU was ranked within the top 5 university in Myanmar. It was located in Yangon City of Yangon Region in Myanmar. There are 2000 students and 200 staffs. There are five majors in BTU. They are Architecture and Civil, Electronic, Electrical Power and Mechanical engineering majors. Before Covid-19, BTU used traditional learning system in campus. BTU faced with many difficulties during the starting of Covid-19. BTU used third party Learning Management System (LMS) to continue their education process. BTU used many digital platforms to solve the difficulties and problem. BTU wants to own all in one system. Then BTU knew that they should have their own LMS for their future. BTU doesn&#39;t want to pay LMS and other platforms fees to other company. Also for the security of the university, BTU decided to create new LMS. The LMS must comfortable and easy for both students and teachers. It will also have the easy methods to manage the system by admins. They will also upgrade the system after lunching.</span></p>\r\n'),
(4, 'Footer', '<p style=\"text-align:center\">Bright Technological University Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2023</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\n<strong><span style=\"font-size:16px\">UP COMING EVENTS</span></strong></pre>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Research Symposium: A symposium or conference could be organized to bring together students, faculty, and researchers to present their research findings and discuss the latest advancements in their respective fields.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hackathon: A hackathon could be organized to encourage students to collaborate, innovate, and develop technological solutions to real-world problems. Hackathons can be focused on specific areas such as cybersecurity, artificial intelligence, or sustainable energy.</p>\r\n	</li>\r\n	<li>\r\n	<p>Guest Speaker Series: A guest speaker series could be organized to invite distinguished professionals and industry leaders to speak about their experiences, insights, and the latest trends in technology.</p>\r\n	</li>\r\n	<li>\r\n	<p>Career Fair: A career fair could be organized to connect students with prospective employers and provide them with an opportunity to explore potential career paths in the technology sector.</p>\r\n	</li>\r\n	<li>\r\n	<p>Alumni Networking Event: An alumni networking event could be organized to provide graduates with an opportunity to connect with their former classmates, faculty members, and industry leaders to share experiences and knowledge, and explore potential collaborations.</p>\r\n	</li>\r\n	<li>\r\n	<p>Virtual Open Day: A virtual open day could be organized to showcase the university&#39;s facilities, courses, and research opportunities to prospective students who are unable to visit the campus in person. This event could include virtual campus tours, online information sessions, and live Q&amp;A sessions with faculty and students.</p>\r\n	</li>\r\n</ol>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">CHMSC Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align: center;\">\r\n<span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\"><strong><span style=\"font-size:16px\">Calendar of the Events\r\n</span>\r\n\r\n</strong>\r\n</span></span></pre>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Fall Semester:<br />\r\nAugust 15 - Fall semester classes begin<br />\r\nSeptember 6 - Labor Day (University closed)<br />\r\nOctober 1-15 - Fall semester midterm exams<br />\r\nOctober 20-22 - Fall break (No classes)<br />\r\nNovember 24-26 - Thanksgiving break (University closed)<br />\r\nDecember 10 - Last day of fall semester classes<br />\r\nDecember 13-17 - Fall semester final exams<br />\r\nDecember 22 - Winter break begins</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Spring Semester:<br />\r\nJanuary 10 - Spring semester classes begin<br />\r\nJanuary 17 - Martin Luther King Jr. Day (University closed)<br />\r\nFebruary 28-March 4 - Spring break (No classes)<br />\r\nMarch 18 - Last day to withdraw from spring semester classes<br />\r\nApril 25-May 6 - Spring semester final exams<br />\r\nMay 7 - Spring semester classes end<br />\r\nMay 14 - Commencement ceremony</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">Summer Sessions:<br />\r\nMay 23 - First day of summer session classes<br />\r\nMay 30 - Memorial Day (University closed)<br />\r\nJune 24 - Last day to withdraw from first summer session classes<br />\r\nJuly 1-4 - Independence Day holiday (University closed)<br />\r\nAugust 5 - Last day of summer session classes</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:14px\">It is important to note that specific dates and events may vary by university and year, and that this example calendar is meant to serve as a general guide. If you are looking for the specific calendar of events for Bright Technological University, I would recommend checking the university&#39;s website or contacting the university&#39;s administration or events office for more information.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><em><strong>DIRECTORIES</strong></em></span></span></pre>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><em><strong>LMS Hotline - +959454545451</strong></em></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">President office - +959454647481, presidentoffice@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Student Affair - +959454647482, studentaffair@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Teacher Affair - +959454647483, teacheraffair@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Admission Affair - +959454647484, admissionaffair@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Scholarship Affair - +959454647485, scholarshipaffair@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Faculty and Staff affair - +959454647486, facultyandstaff@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Campus affair - +9594546475487, campusaffair@btu.edu.mm</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Library &amp; Makerspace&nbsp;- +959454647488, library@btu.edu.mm</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n'),
(12, 'president', '<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">It is my honor to address you all today as the President of Bright Technological University. Our university has a rich history of excellence in technology education and research, and I am proud to lead such a dynamic and innovative institution.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">As we navigate through these challenging times, it is more important than ever that we remain committed to our mission of advancing technology research, fostering innovation and entrepreneurship, providing high-quality education, promoting interdisciplinary collaboration, and addressing societal challenges.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Our faculty members are world-class experts in their respective fields, and they are dedicated to providing our students with the knowledge, skills, and experiences they need to succeed in the rapidly changing world of technology. Our students are talented, passionate, and driven, and they are the future leaders of the technology industry.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">At Bright Technological University, we are committed to creating a diverse and inclusive community that values creativity, collaboration, and respect for different perspectives. We believe that a diverse and inclusive community is essential to achieving our mission of pushing the boundaries of technology and making a positive impact on society.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">I am excited about the upcoming academic year and the opportunities it presents for us to continue our work in advancing technology research, fostering innovation and entrepreneurship, providing high-quality education, promoting interdisciplinary collaboration, and addressing societal challenges.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">I look forward to working together with all of you to achieve our shared goals and to create a brighter future for our university, our community, and our world. Thank you.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Professor Doctor Sann Lwin Moe</p>\r\n\r\n<p>Rector</p>\r\n\r\n<p>Bright Technoligical University</p>\r\n'),
(13, 'motto', '<p>Top(1) Technological University in 2023</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Learn as much as you can while you are young, since life becomes too busy later.&rdquo; &ndash; Dana Stewart Scott</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Join BTU as soon as possible.</p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Campuses</strong></span></span></pre>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:arial,helvetica,sans-serif\">Yangon</span></li>\r\n	<li><span style=\"font-family:arial,helvetica,sans-serif\">Mandalay</span></li>\r\n	<li><span style=\"font-family:arial,helvetica,sans-serif\">Nay Pyi Taw</span></li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(11, 'Architecture ', 'Dr. Seik Htar Myat'),
(12, 'Civil Engineering', 'Dr. Tin Tin Hla'),
(13, 'Electronic Engineering', 'Dr. Yadanar Win'),
(14, 'Electrical Power', 'Dr. Kyaw San'),
(15, 'Mechanical Engineering', 'Dr. Kyi Kyi Myint'),
(16, 'Admin Department', 'Dr. Myo Myo'),
(18, 'IT Department ', 'Dr Htar');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(20, 'Water Festival', 0, '04/10/2023', '04/12/2023'),
(21, 'Deadline', 190, '04/28/2023', '04/30/2023'),
(26, 'Assignment Deadline', 0, '04/28/2023', '04/28/2023'),
(27, 'MM New Year Festival', 191, '04/17/2023', '04/18/2023'),
(30, 'test', 206, '04/29/2023', '04/30/2023');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(142, 'admin/uploads/3816_File_sample one.txt', '2023-02-27 19:11:35', 'one', 212, 188, 'sample one', ''),
(143, 'admin/uploads/9111_File_sample one.txt', '2023-02-27 19:13:13', 'one', 15, 188, 'sample one', 'NwayKhin'),
(144, 'admin/uploads/7318_File_240_F_275606321_fzr4AFSpL8s2MfbJlR36cPh87WDk9F0e.jpg', '2023-02-28 17:45:31', 'one', 15, 190, 'sample one', 'NwayKhin'),
(145, 'admin/uploads/8060_File_sample one.txt', '2023-04-04 20:25:42', 'one', 0, 190, 'aaa bbbb', 'adminadmin'),
(146, 'admin/uploads/8773_File_sample one.txt', '2023-04-04 20:29:48', 'one', 0, 190, 'aaa bbbb', 'adminadmin'),
(147, 'admin/uploads/7504_File_sample one.txt', '2023-04-04 20:34:34', 'one', 15, 190, 'aaa bbbb', 'NwayKhin'),
(149, 'admin/uploads/1008_File_sample one.txt', '2023-04-12 23:58:51', 'Sample', 15, 191, 'Sample', 'NwayKhin'),
(150, 'admin/uploads/8358_File_sample one.txt', '2023-04-21 18:19:09', 'sample', 22, 200, 'sample', 'SampleTeacher'),
(151, 'admin/uploads/2835_File_Test File.pdf', '2023-04-25 23:50:57', 'one', 22, 200, 'test test', 'SampleTeacher'),
(153, 'admin/uploads/4359_File_Test File.pdf', '2023-04-26 00:01:42', 'file', 25, 206, 'test test', 'testtest');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(30, 15, 'hiiii', '2023-04-04 14:28:50', 220, 'Nway Khin', 'admin admin', ''),
(31, 220, 'hiii', '2023-04-04 14:29:18', 15, 'admin admin', 'Nway Khin', 'read'),
(32, 15, 'I am activated', '2023-04-19 14:35:56', 11, 'Nway Khin', 'Min Zaw', ''),
(34, 22, 'Hello Teacher', '2023-04-20 23:28:57', 224, 'Sample Teacher', 'Sample Student', ''),
(35, 224, 'Hi Student', '2023-04-20 23:29:57', 22, 'Sample Student', 'Sample Teacher', ''),
(36, 25, 'hii test', '2023-04-26 00:14:26', 227, 'test test', 'test test', ''),
(37, 227, 'hii test student', '2023-04-26 00:16:58', 25, 'test test', 'test test', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(15, 15, 'hiiii', '2023-04-04 14:28:50', 220, 'Nway Khin', 'admin admin'),
(16, 220, 'hiii', '2023-04-04 14:29:18', 15, 'admin admin', 'Nway Khin'),
(17, 15, 'I am activated', '2023-04-19 14:35:56', 11, 'Nway Khin', 'Min Zaw'),
(18, 22, 'Hello Teacher', '2023-04-20 23:15:59', 224, 'Sample Teacher', 'Sample Student'),
(19, 22, 'Hello Teacher', '2023-04-20 23:28:57', 224, 'Sample Teacher', 'Sample Student'),
(20, 224, 'Hi Student', '2023-04-20 23:29:57', 22, 'Sample Student', 'Sample Teacher'),
(21, 25, 'hii test', '2023-04-26 00:14:26', 227, 'test test', 'test test'),
(22, 227, 'hii test student', '2023-04-26 00:16:58', 25, 'test test', 'test test');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(24, 188, 'Add Assignment file name <b>sample one</b>', '2023-02-27 19:11:24', 'assignment_student.php'),
(25, 188, 'Add Downloadable Materials file name <b>sample one</b>', '2023-02-27 19:11:35', 'downloadable_student.php'),
(26, 188, 'Add Downloadable Materials file name <b>sample one</b>', '2023-02-27 19:13:13', 'downloadable_student.php'),
(27, 188, 'Add Assignment file name <b>sample one</b>', '2023-02-27 20:08:18', 'assignment_student.php'),
(28, 188, 'Add Annoucements', '2023-02-27 20:08:34', 'announcements_student.php'),
(29, 190, 'Add Downloadable Materials file name <b>sample one</b>', '2023-02-28 17:45:31', 'downloadable_student.php'),
(30, 190, 'Add Annoucements', '2023-04-02 22:23:17', 'announcements_student.php'),
(31, 190, 'Add Annoucements', '2023-04-02 22:25:08', 'announcements_student.php'),
(32, 190, 'Add Practice Quiz file', '2023-04-04 14:26:37', 'student_quiz_list.php'),
(33, 193, 'Add Practice Quiz file', '2023-04-04 14:26:37', 'student_quiz_list.php'),
(34, 190, 'Add Downloadable Materials file name <b>aaa bbbb</b>', '2023-04-04 20:34:34', 'downloadable_student.php'),
(35, 190, 'Add Annoucements', '2023-04-04 20:36:22', 'announcements_student.php'),
(36, 191, 'Add Annoucements', '2023-04-04 20:36:22', 'announcements_student.php'),
(37, 192, 'Add Annoucements', '2023-04-04 20:36:22', 'announcements_student.php'),
(38, 194, 'Add Annoucements', '2023-04-04 20:36:22', 'announcements_student.php'),
(39, 190, 'Add Annoucements', '2023-04-04 20:36:59', 'announcements_student.php'),
(40, 191, 'Add Annoucements', '2023-04-04 20:36:59', 'announcements_student.php'),
(41, 192, 'Add Annoucements', '2023-04-04 20:36:59', 'announcements_student.php'),
(42, 194, 'Add Annoucements', '2023-04-04 20:36:59', 'announcements_student.php'),
(43, 190, 'Add Annoucements', '2023-04-04 20:41:37', 'announcements_student.php'),
(44, 191, 'Add Annoucements', '2023-04-04 20:41:37', 'announcements_student.php'),
(45, 192, 'Add Annoucements', '2023-04-04 20:41:37', 'announcements_student.php'),
(46, 194, 'Add Annoucements', '2023-04-04 20:41:37', 'announcements_student.php'),
(47, 194, 'Add Annoucements', '2023-04-04 20:46:03', 'announcements_student.php'),
(48, 190, 'Add Annoucements', '2023-04-04 20:55:18', 'announcements_student.php'),
(49, 191, 'Add Annoucements', '2023-04-04 20:55:18', 'announcements_student.php'),
(50, 192, 'Add Annoucements', '2023-04-04 20:55:18', 'announcements_student.php'),
(51, 194, 'Add Annoucements', '2023-04-04 20:55:18', 'announcements_student.php'),
(52, 190, 'Add Annoucements', '2023-04-04 20:55:59', 'announcements_student.php'),
(53, 191, 'Add Annoucements', '2023-04-04 20:55:59', 'announcements_student.php'),
(54, 192, 'Add Annoucements', '2023-04-04 20:55:59', 'announcements_student.php'),
(55, 194, 'Add Annoucements', '2023-04-04 20:55:59', 'announcements_student.php'),
(56, 191, 'Add Downloadable Materials file name <b>new</b>', '2023-04-12 23:58:19', 'downloadable_student.php'),
(57, 191, 'Add Downloadable Materials file name <b>Sample</b>', '2023-04-12 23:58:51', 'downloadable_student.php'),
(58, 191, 'Add Assignment file name <b>Sample</b>', '2023-04-12 23:59:35', 'assignment_student.php'),
(59, 190, 'Add Annoucements', '2023-04-13 00:01:57', 'announcements_student.php'),
(60, 191, 'Add Annoucements', '2023-04-13 00:01:57', 'announcements_student.php'),
(61, 192, 'Add Annoucements', '2023-04-13 00:01:57', 'announcements_student.php'),
(62, 191, 'Add Practice Quiz file', '2023-04-13 00:11:33', 'student_quiz_list.php'),
(63, 190, 'Add Practice Quiz file', '2023-04-15 15:06:54', 'student_quiz_list.php'),
(64, 191, 'Add Practice Quiz file', '2023-04-15 15:06:54', 'student_quiz_list.php'),
(65, 192, 'Add Practice Quiz file', '2023-04-15 15:06:54', 'student_quiz_list.php'),
(66, 197, 'Add Practice Quiz file', '2023-04-15 15:06:54', 'student_quiz_list.php'),
(67, 190, 'Add Practice Quiz file', '2023-04-16 02:04:06', 'student_quiz_list.php'),
(68, 191, 'Add Practice Quiz file', '2023-04-16 02:04:06', 'student_quiz_list.php'),
(69, 192, 'Add Practice Quiz file', '2023-04-16 02:04:06', 'student_quiz_list.php'),
(70, 197, 'Add Practice Quiz file', '2023-04-16 02:04:06', 'student_quiz_list.php'),
(71, 190, 'Add Assignment file name <b>s s</b>', '2023-04-16 20:50:37', 'assignment_student.php'),
(72, 190, 'Add Assignment file name <b>q</b>', '2023-04-16 21:19:38', 'assignment_student.php'),
(73, 191, 'Add Assignment file name <b>q</b>', '2023-04-16 21:19:38', 'assignment_student.php'),
(74, 192, 'Add Assignment file name <b>q</b>', '2023-04-16 21:19:38', 'assignment_student.php'),
(75, 197, 'Add Assignment file name <b>q</b>', '2023-04-16 21:19:38', 'assignment_student.php'),
(76, 198, 'Add Assignment file name <b>q</b>', '2023-04-16 21:19:38', 'assignment_student.php'),
(77, 200, 'Add Annoucements', '2023-04-19 23:54:30', 'announcements_student.php'),
(78, 200, 'Add Annoucements', '2023-04-20 00:03:27', 'announcements_student.php'),
(79, 190, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(80, 191, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(81, 192, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(82, 197, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(83, 198, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(84, 201, 'Add Annoucements', '2023-04-20 01:28:49', 'announcements_student.php'),
(85, 201, 'Add Assignment file name <b>Sample</b>', '2023-04-21 00:38:13', 'assignment_student.php'),
(86, 200, 'Add Practice Quiz file', '2023-04-21 01:01:07', 'student_quiz_list.php'),
(87, 200, 'Add Assignment file name <b>sample</b>', '2023-04-21 01:05:34', 'assignment_student.php'),
(88, 200, 'Add Downloadable Materials file name <b>sample</b>', '2023-04-21 18:19:09', 'downloadable_student.php'),
(89, 200, 'Add Practice Quiz file', '2023-04-22 03:13:40', 'student_quiz_list.php'),
(90, 202, 'Add Practice Quiz file', '2023-04-22 03:13:40', 'student_quiz_list.php'),
(91, 190, 'Add Annoucements', '2023-04-22 19:06:24', 'announcements_student.php'),
(92, 190, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(93, 191, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(94, 192, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(95, 197, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(96, 198, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(97, 201, 'Add Practice Quiz file', '2023-04-22 19:36:42', 'student_quiz_list.php'),
(98, 200, 'Add Practice Quiz file', '2023-04-22 19:38:34', 'student_quiz_list.php'),
(99, 202, 'Add Practice Quiz file', '2023-04-22 19:38:34', 'student_quiz_list.php'),
(100, 200, 'Add Downloadable Materials file name <b>test test</b>', '2023-04-25 23:50:57', 'downloadable_student.php'),
(101, 206, 'Add Downloadable Materials file name <b>test test</b>', '2023-04-26 00:00:57', 'downloadable_student.php'),
(102, 206, 'Add Downloadable Materials file name <b>test test</b>', '2023-04-26 00:01:42', 'downloadable_student.php'),
(103, 206, 'Add Assignment file name <b>test</b>', '2023-04-26 00:01:57', 'assignment_student.php'),
(104, 206, 'Add Assignment file name <b>test test</b>', '2023-04-26 00:02:22', 'assignment_student.php'),
(105, 206, 'Add Annoucements', '2023-04-26 00:02:34', 'announcements_student.php'),
(106, 206, 'Add Annoucements', '2023-04-26 00:03:43', 'announcements_student.php'),
(107, 207, 'Add Annoucements', '2023-04-26 00:03:43', 'announcements_student.php'),
(108, 206, 'Add Assignment file name <b>send to all</b>', '2023-04-26 00:04:10', 'assignment_student.php'),
(109, 207, 'Add Assignment file name <b>send to all</b>', '2023-04-26 00:04:10', 'assignment_student.php'),
(110, 206, 'Add Practice Quiz file', '2023-04-26 00:05:23', 'student_quiz_list.php'),
(111, 207, 'Add Practice Quiz file', '2023-04-26 00:05:23', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 220, 'yes', 28),
(7, 220, 'yes', 28),
(8, 220, 'yes', 27),
(9, 220, 'yes', 60),
(10, 220, 'yes', 59),
(11, 220, 'yes', 61),
(12, 220, 'yes', 63),
(13, 227, 'yes', 110);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 15, 'yes', 19);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(7, 'test', 'test', '2023-04-04 14:26:12', 15),
(8, 'Week 1', 'week 1', '2023-04-13 00:09:49', 15),
(9, 'test', 'bbbb', '2023-04-19 14:35:40', 11),
(10, 'Sample Quiz', 'Sample', '2023-04-21 00:57:07', 22),
(11, 'test', 'test', '2023-04-26 00:04:20', 25);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(39, 7, '<p>???</p>\r\n', 1, 0, '2023-04-04 14:26:57', ''),
(40, 8, '<p>Color?</p>\r\n', 1, 0, '2023-04-13 00:10:27', 'B'),
(41, 8, '<p>Good or Bad</p>\r\n', 2, 0, '2023-04-13 00:10:48', 'True'),
(42, 10, '<p>What is the theme color?</p>\r\n', 1, 0, '2023-04-21 01:49:44', 'B'),
(43, 11, '<p>Choose Red</p>\r\n', 1, 0, '2023-04-26 00:04:54', 'A'),
(44, 11, '<p>Choose True.</p>\r\n', 2, 0, '2023-04-26 00:05:10', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(4, '2020-2021'),
(5, '2021-2022'),
(6, '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(227, 'test', 'test', 29, 'test', 'test1', 'uploads/Screenshot 2022-05-14 215047.jpg', 'Registered'),
(93, 'John', 'Win', 27, '100000001', 'test', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered'),
(76, 'Thura ', 'Aung', 32, '100000008', 'test', 'uploads/maica.jpg', 'Registered'),
(220, 'admin', 'admin', 26, '1111', '1111', 'uploads/Screenshot 2022-05-14 215047.jpg', 'Registered'),
(221, 'aaa', 'bbbb', 35, '11111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(222, 'zwe', 'zwe', 31, '10000685', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(224, 'Sample', 'Student', 36, 'samplestudent', 'student', 'uploads/253817733_327889402490936_6615468990247131244_n.jpg', 'Registered'),
(73, 'Aung', 'Thu', 34, '100000009', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(71, 'Nyein', 'Hlaing', 29, '100000007', 'test', 'uploads/noli.jpg', 'Registered'),
(210, 'Myat', 'Khin', 26, '100000003', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(193, 'Myat', 'Noe', 29, '100000012', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(194, 'Ei', 'Phyo', 30, '100000010', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(195, 'Nay Lin', 'Ag', 27, '100000011', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(196, 'Myint', 'Myat', 25, '100000013', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(197, 'Yamin', 'Khin', 32, '100000015', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(198, 'Min', 'Thant', 33, '100000016', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(199, 'Zin', 'Ko', 34, '100000019', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(200, 'Jamine', 'Khin', 31, '100000014', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(201, 'Hnin', 'Wai', 28, '100000017', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(202, 'Tun', 'Tun', 27, '100000018', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(208, 'Naw', 'Khay', 28, '100000002', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(212, 'Mary', 'Jane', 27, '100000004', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(214, 'Aye', 'Chan', 31, '100000005', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(218, 'Zaw', 'Zaw', 33, '20100452', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(219, 'Zaw', 'Myint', 25, '100000006', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(2, 33, 'admin/uploads/9229_File_sample one.txt', '2023-02-27 20:15:47', 'one', 'sample one', 220, '99'),
(3, 34, 'admin/uploads/5511_File_science-teaching-illustration-earth-moon-orbit-around-sun-causing-solar-ecli', '2023-04-15 15:01:54', 'assignment', 'assignment', 220, '99'),
(4, 36, 'admin/uploads/2585_File_sample one.txt', '2023-04-16 22:34:03', 'ans', 'ans', 220, ''),
(5, 36, 'admin/uploads/4098_File_sample one.txt', '2023-04-16 22:34:13', 'abc', 'abc', 220, '90'),
(6, 42, 'admin/uploads/1670_File_sample one.txt', '2023-04-21 01:24:33', 'sample', 'Sample', 224, '99'),
(7, 44, 'admin/uploads/9388_File_Test File.pdf', '2023-04-26 00:13:30', 'back', 'test', 227, '100');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(5, 'admin/uploads/7318_File_240_F_275606321_fzr4AFSpL8s2MfbJlR36cPh87WDk9F0e.jpg', '2023-04-15 14:58:28', 'one', 220, 'sample one'),
(6, 'admin/uploads/8358_File_sample one.txt', '2023-04-21 21:33:53', 'sample', 224, 'sample'),
(7, 'admin/uploads/4359_File_Test File.pdf', '2023-04-26 00:12:56', 'file', 227, 'test test');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3'),
(4, 18, 220, '3593', '0 out of 1'),
(5, 20, 220, '3593', '1 out of 2'),
(6, 25, 220, '3593', '2 out of 2'),
(7, 21, 220, '3593', '2 out of 2'),
(8, 27, 220, '3593', ''),
(9, 27, 15, '1794', ''),
(10, 22, 220, '3593', ''),
(11, 29, 224, '3426', '1 out of 1'),
(12, 30, 224, '3426', '1 out of 1'),
(13, 32, 220, '3593', ''),
(14, 38, 224, '3600', '0 out of 1'),
(15, 40, 227, '3600', '1 out of 2');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(45, 'EcE21001', 'Electronic Engineering Circuit', '', '', 6, '', '1st'),
(46, 'EcE21021', 'Digital Electronics', '', '', 6, '', '1st'),
(47, 'EcE21011', 'Microelectronics', '', '', 6, '', '1st'),
(48, 'EcE21002', 'Commulication Principles', '', '', 6, '', '1st'),
(49, 'EcE21014', 'Technical Programming', '', '', 6, '', '1st'),
(54, 'S111', 'Sample', '', '', 5, '', ''),
(44, 'EM21003', 'Engineering Mathematics', '', '', 6, '', '1st'),
(43, 'E21011', 'English', '', '', 20, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'Khin', 'Hnin', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(5, '1002', 'test', 'Kyaw', 'Zaw', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(11, '1003', 'test', 'Min', 'Zaw', 11, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(12, '1000', 'test', 'Thein', 'Htoo', 12, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(22, 'sampleteacher', 'teacher', 'Sample', 'Teacher', 16, 'uploads/Screenshot 2022-05-14 220036.jpg', '', 'Registered', ''),
(25, 'test', 'test2', 'test', 'test', 16, 'uploads/Screenshot 2022-05-14 220036.jpg', '', 'Registered', ''),
(14, '1005', 'test', 'Honey', 'Cho', 15, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(15, 'chaw', 'chaw', 'Nway', 'Khin', 12, 'uploads/248744226_1292018817901619_8440922776812456994_n.jpg', 'Hello ', 'Registered', 'Activated'),
(17, '1004', 'admin', 'Baby', 'Myint', 18, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(18, '1006', 'test', 'Hla', 'Yamin', 16, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(19, '1007', 'test', 'Khun', 'Shwe', 14, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_backpack`
--

INSERT INTO `teacher_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `fname`) VALUES
(1, 'admin/uploads/7318_File_240_F_275606321_fzr4AFSpL8s2MfbJlR36cPh87WDk9F0e.jpg', '2023-02-28 17:52:32', 'one', 15, 'sample one'),
(2, 'admin/uploads/8358_File_sample one.txt', '2023-04-21 18:23:02', 'sample', 22, 'sample'),
(3, 'admin/uploads/7527_File_Test File.pdf', '2023-04-26 00:01:15', 'test', 25, 'test test');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(190, 15, 26, 48, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(191, 15, 34, 45, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(192, 15, 26, 47, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(195, 17, 26, 45, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(196, 15, 30, 45, 'admin/uploads/thumbnails.jpg', '2020-2021'),
(197, 15, 27, 47, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(198, 15, 29, 48, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(199, 11, 27, 48, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(200, 22, 36, 54, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(201, 15, 28, 48, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(202, 22, 26, 47, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(204, 13, 27, 43, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(205, 13, 29, 44, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(206, 25, 29, 43, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(207, 25, 30, 44, 'admin/uploads/thumbnails.jpg', '2022-2023'),
(208, 22, 28, 45, 'admin/uploads/thumbnails.jpg', '2022-2023');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(40, '<p>Hello everyone.&nbsp;</p>\r\n', '15', 188, '2023-02-27 20:08:34'),
(41, '<p>hello</p>\r\n', '15', 190, '2023-04-02 22:23:17'),
(42, '<p>hiii</p>\r\n', '15', 190, '2023-04-02 22:25:08'),
(43, '<p>good idea</p>\r\n', '15', 190, '2023-04-04 20:36:22'),
(44, '<p>good idea</p>\r\n', '15', 191, '2023-04-04 20:36:22'),
(45, '<p>good idea</p>\r\n', '15', 192, '2023-04-04 20:36:22'),
(47, '<p>exam is near</p>\r\n', '15', 190, '2023-04-04 20:36:59'),
(48, '<p>exam is near</p>\r\n', '15', 191, '2023-04-04 20:36:59'),
(49, '<p>exam is near</p>\r\n', '15', 192, '2023-04-04 20:36:59'),
(51, '<p>asdfghj</p>\r\n', '15', 190, '2023-04-04 20:41:37'),
(53, '<p>asdfghj</p>\r\n', '15', 192, '2023-04-04 20:41:37'),
(56, '<p>vvvvvvvv</p>\r\n', '15', 190, '2023-04-04 20:55:17'),
(58, '<p>vvvvvvvv</p>\r\n', '15', 192, '2023-04-04 20:55:18'),
(60, '<p>cccc</p>\r\n', '15', 190, '2023-04-04 20:55:59'),
(62, '<p>cccc</p>\r\n', '15', 192, '2023-04-04 20:55:59'),
(64, '<p>cccccc</p>\r\n', '15', 190, '2023-04-13 00:01:57'),
(66, '<p>cccccc</p>\r\n', '15', 192, '2023-04-13 00:01:57'),
(67, '<p>Do homework.</p>\r\n', '22', 200, '2023-04-19 23:54:30'),
(68, '<p>Best Announcement&nbsp;</p>\r\n', '22', 200, '2023-04-20 00:03:27'),
(69, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 190, '2023-04-20 01:28:49'),
(70, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 191, '2023-04-20 01:28:49'),
(71, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 192, '2023-04-20 01:28:49'),
(72, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 197, '2023-04-20 01:28:49'),
(73, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 198, '2023-04-20 01:28:49'),
(74, '<p>Exam is near. Tomorrow is holiday.</p>\r\n', '15', 201, '2023-04-20 01:28:49'),
(75, '', '15', 190, '2023-04-22 19:06:24'),
(76, '<p>exam is near.</p>\r\n', '25', 206, '2023-04-26 00:02:34'),
(77, '<p>good univeristy</p>\r\n', '25', 206, '2023-04-26 00:03:43'),
(78, '<p>good univeristy</p>\r\n', '25', 207, '2023-04-26 00:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(69, 167, 76, 12),
(77, 167, 73, 12),
(79, 167, 71, 12),
(142, 172, 76, 18),
(150, 172, 73, 18),
(152, 172, 71, 18),
(211, 175, 76, 13),
(219, 175, 73, 13),
(221, 175, 71, 13),
(280, 178, 76, 14),
(288, 178, 73, 14),
(290, 178, 71, 14),
(330, 180, 76, 19),
(338, 180, 73, 19),
(340, 180, 71, 19),
(342, 181, 210, 12),
(346, 183, 214, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(373, 185, 93, 12),
(379, 186, 214, 9),
(382, 186, 219, 9),
(383, 187, 73, 11),
(384, 187, 199, 11),
(385, 188, 93, 15),
(386, 188, 195, 15),
(387, 188, 202, 15),
(388, 188, 212, 15),
(389, 188, 220, 15),
(390, 189, 201, 12),
(391, 189, 208, 12),
(392, 190, 220, 15),
(393, 190, 210, 15),
(394, 191, 73, 15),
(395, 191, 199, 15),
(396, 192, 220, 15),
(397, 192, 210, 15),
(400, 195, 220, 17),
(401, 195, 210, 17),
(402, 191, 71, 15),
(403, 191, 220, 15),
(404, 196, 194, 15),
(405, 197, 93, 15),
(406, 197, 195, 15),
(407, 197, 202, 15),
(408, 197, 212, 15),
(409, 198, 71, 15),
(410, 198, 193, 15),
(411, 199, 93, 11),
(412, 199, 195, 11),
(413, 199, 202, 11),
(414, 199, 212, 11),
(415, 200, 220, 22),
(416, 201, 201, 15),
(417, 201, 208, 15),
(418, 202, 220, 22),
(419, 202, 210, 22),
(420, 200, 224, 22),
(424, 204, 93, 13),
(425, 204, 195, 13),
(426, 204, 202, 13),
(427, 204, 212, 13),
(428, 205, 227, 13),
(429, 205, 71, 13),
(430, 205, 193, 13),
(431, 206, 227, 25),
(432, 206, 71, 25),
(433, 206, 193, 25),
(434, 207, 194, 25),
(435, 207, 227, 25),
(436, 208, 201, 22),
(437, 208, 208, 22);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(19, 188, 'Submit Assignment file name <b>sample one</b>', '2023-02-27 20:15:47', 'view_submit_assignment.php', 220, 33),
(20, 190, 'Add Downloadable Materials file name <b>aaa bbbb</b>', '2023-04-04 20:25:42', 'downloadable.php', 220, 0),
(21, 190, 'Add Downloadable Materials file name <b>aaa bbbb</b>', '2023-04-04 20:29:48', 'downloadable.php', 220, 0),
(22, 191, 'Submit Assignment file name <b>assignment</b>', '2023-04-15 15:01:54', 'view_submit_assignment.php', 220, 34),
(23, 190, 'Submit Assignment file name <b>ans</b>', '2023-04-16 22:34:03', 'view_submit_assignment.php', 220, 36),
(24, 190, 'Submit Assignment file name <b>abc</b>', '2023-04-16 22:34:13', 'view_submit_assignment.php', 220, 36),
(25, 200, 'Submit Assignment file name <b>Sample</b>', '2023-04-21 01:24:33', 'view_submit_assignment.php', 224, 42),
(26, 206, 'Submit Assignment file name <b>test</b>', '2023-04-26 00:13:30', 'view_submit_assignment.php', 227, 44);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(2, 22, 15, 'admin/uploads/8358_File_sample one.txt', '2023-04-21 18:19:25', 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(15, 'admin', 'admin', 'admin', 'admin'),
(16, 'slm', 'slm', 'Sann Lwin', 'Moe');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(96, 'admin', '2023-02-28 14:13:28', '2023-04-27 21:59:06', 15),
(97, 'admin', '2023-02-28 14:16:33', '2023-04-27 21:59:06', 15),
(98, 'admin', '2023-02-28 17:43:00', '2023-04-27 21:59:06', 15),
(99, 'admin', '2023-04-02 18:38:35', '2023-04-27 21:59:06', 15),
(100, 'admin', '2023-04-02 19:18:39', '2023-04-27 21:59:06', 15),
(101, 'admin', '2023-04-04 14:19:15', '2023-04-27 21:59:06', 15),
(102, 'admin', '2023-04-04 17:52:12', '2023-04-27 21:59:06', 15),
(103, 'slm', '2023-04-04 19:36:12', '', 16),
(104, 'admin', '2023-04-11 13:56:49', '2023-04-27 21:59:06', 15),
(105, 'admin', '2023-04-11 18:27:02', '2023-04-27 21:59:06', 15),
(106, 'admin', '2023-04-11 21:45:57', '2023-04-27 21:59:06', 15),
(107, 'admin', '2023-04-11 21:46:07', '2023-04-27 21:59:06', 15),
(108, 'admin', '2023-04-11 22:02:56', '2023-04-27 21:59:06', 15),
(109, 'admin', '2023-04-11 22:04:25', '2023-04-27 21:59:06', 15),
(110, 'slm', '2023-04-11 22:45:23', '', 16),
(111, 'admin', '2023-04-12 16:27:36', '2023-04-27 21:59:06', 15),
(112, 'admin', '2023-04-12 18:49:30', '2023-04-27 21:59:06', 15),
(113, 'admin', '2023-04-16 01:02:20', '2023-04-27 21:59:06', 15),
(114, 'admin', '2023-04-16 12:46:21', '2023-04-27 21:59:06', 15),
(115, 'admin', '2023-04-18 22:51:14', '2023-04-27 21:59:06', 15),
(116, 'admin', '2023-04-18 22:52:17', '2023-04-27 21:59:06', 15),
(117, 'admin', '2023-04-19 14:34:36', '2023-04-27 21:59:06', 15),
(118, 'admin', '2023-04-19 14:36:29', '2023-04-27 21:59:06', 15),
(119, 'admin', '2023-04-19 23:14:14', '2023-04-27 21:59:06', 15),
(120, 'admin', '2023-04-20 00:17:05', '2023-04-27 21:59:06', 15),
(121, 'admin', '2023-04-20 00:30:06', '2023-04-27 21:59:06', 15),
(122, 'admin', '2023-04-20 01:31:25', '2023-04-27 21:59:06', 15),
(123, 'admin', '2023-04-20 19:34:22', '2023-04-27 21:59:06', 15),
(124, 'admin', '2023-04-20 21:53:55', '2023-04-27 21:59:06', 15),
(125, 'admin', '2023-04-20 22:33:50', '2023-04-27 21:59:06', 15),
(126, 'admin', '2023-04-21 14:27:25', '2023-04-27 21:59:06', 15),
(127, 'admin', '2023-04-21 22:19:50', '2023-04-27 21:59:06', 15),
(128, 'admin', '2023-04-22 01:21:52', '2023-04-27 21:59:06', 15),
(129, 'admin', '2023-04-22 02:15:15', '2023-04-27 21:59:06', 15),
(130, 'admin', '2023-04-22 18:07:26', '2023-04-27 21:59:06', 15),
(131, 'admin', '2023-04-22 18:16:25', '2023-04-27 21:59:06', 15),
(132, 'admin', '2023-04-23 14:52:22', '2023-04-27 21:59:06', 15),
(133, 'admin', '2023-04-23 19:34:32', '2023-04-27 21:59:06', 15),
(134, 'admin', '2023-04-25 22:33:37', '2023-04-27 21:59:06', 15),
(135, 'admin', '2023-04-25 22:36:37', '2023-04-27 21:59:06', 15),
(136, 'admin', '2023-04-25 23:07:34', '2023-04-27 21:59:06', 15),
(137, 'admin', '2023-04-25 23:54:08', '2023-04-27 21:59:06', 15),
(138, 'admin', '2023-04-25 23:57:16', '2023-04-27 21:59:06', 15),
(139, 'admin', '2023-04-25 23:58:43', '2023-04-27 21:59:06', 15),
(140, 'admin', '2023-04-26 00:06:15', '2023-04-27 21:59:06', 15),
(141, 'admin', '2023-04-27 20:47:56', '2023-04-27 21:59:06', 15),
(142, 'admin', '2023-04-27 21:48:25', '2023-04-27 21:59:06', 15),
(143, 'admin', '2023-04-27 21:50:52', '2023-04-27 21:59:06', 15),
(144, 'admin', '2023-04-27 21:58:37', '2023-04-27 21:59:06', 15),
(145, 'admin', '2023-04-28 18:21:36', '', 15),
(146, 'admin', '2023-04-28 18:22:41', '', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

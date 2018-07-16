-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2018 at 07:19 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ackosoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `experience_year` int(11) NOT NULL DEFAULT '0',
  `about` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `dob`, `experience_year`, `about`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Job', 'Seeker', '1994-06-30', 0, 'The standard Lorem Ipsum passage, used since the 1500s\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\n\nSection 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '3507 Halvorson Mills Suite 730\nMelvinachester, TX 34733-4899', '2018-06-30 09:29:22', '2018-06-30 10:14:16'),
(2, 'Michale', 'Feil', '1993-11-03', 0, NULL, '751 Lexie Shoals Suite 223\nKihnmouth, TN 21231-7088', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(3, 'Jarrod', 'Dietrich', '1982-10-11', 0, NULL, '41383 Kerluke Mills\nNorth Kierashire, KY 00777-4680', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(4, 'Jamie', 'Kris', '1998-12-05', 0, NULL, '95126 Hagenes Ports Suite 636\nLake Fidel, SC 15231-3418', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(5, 'Dario', 'Tromp', '1993-06-02', 0, NULL, '728 Anderson Harbor\nDallinfurt, AK 65127', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(6, 'Kadin', 'Abernathy', '1977-12-04', 0, NULL, '84004 Mazie Drive\nWildermanshire, IN 34930-4047', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(7, 'Murray', 'Torphy', '1992-06-25', 10, '', '79369 Simonis Shore', '2018-06-30 09:29:23', '2018-07-01 05:19:48'),
(8, 'Soledad', 'Hane', '1995-11-24', 0, NULL, '77983 Stokes Shores Apt. 867\nLake Alexys, MA 40917-0390', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(9, 'Keyshawn', 'Kris', '1971-04-12', 0, NULL, '18684 Pedro Path\nHarbermouth, SD 98952', '2018-06-30 09:29:23', '2018-06-30 09:29:23'),
(10, 'Evan', 'Nolan', '2015-06-23', 0, NULL, '471 Jonathan Terrace\nPort Cleve, MO 79971-2698', '2018-06-30 09:29:24', '2018-06-30 09:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `employee_job`
--

CREATE TABLE `employee_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `job_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for url',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `age_min` int(11) NOT NULL,
  `age_max` int(11) NOT NULL,
  `experience_min` int(11) NOT NULL DEFAULT '0',
  `experience_max` int(11) NOT NULL DEFAULT '0',
  `salary_min` int(11) NOT NULL,
  `salary_max` int(11) NOT NULL,
  `about_job` text COLLATE utf8mb4_unicode_ci,
  `responsibility` text COLLATE utf8mb4_unicode_ci,
  `publish_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=draft, 1=approved,2=pending, 3=deny',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `slug`, `title`, `deadline`, `age_min`, `age_max`, `experience_min`, `experience_max`, `salary_min`, `salary_max`, `about_job`, `responsibility`, `publish_date`, `status`, `created_at`, `updated_at`) VALUES
(98, 'field-construction-office-clerks-timekeepers', 'Field Construction Office Clerks / Timekeepers.', '2018-06-30', 20, 30, 3, 10, 15000, 30000, 'Incorporated in Texas in 1966, Bo-Mac originally focused on providing civil, pipeline and other construction services for the petroleum exploration industry. In 1974, pile driving capability was added and our primary market expanded to include construction related to the oil and gas refining industry and the petrochemical processing industry.', 'Good interpersonal communication skills, both written and verbal.\nMust be able to prioritize tasks to make sure that multiple deadlines are met.\nStrong working knowledge of current office practices and Microsoft Office software, specifically Microsoft Word and Excel.\nTeam player, eager and willing to learn with/from others.\nHigh school diploma and/or equivalent field experience in this type of position.', '2018-06-30', 1, '2018-06-30 09:30:27', '2018-06-30 09:41:45'),
(99, 'construction-administrator-the-woodlands', 'Construction Administrator - The Woodlands', '2018-06-30', 20, 30, 3, 10, 20000, 30000, 'Audit Contractor invoices to ensure company is being billed in accordance to the negotiated terms\nCreate forecasts for construction projects, in support of project management. Term used is cost-to-close analysis\nProduce various project reports as needed using SharePoint, Excel, Power Point, Procore, Vision, and Dynamics for construction team\nReview project submittals', 'Maintain relationships with clients and contractors\nMaintaining construction/inspection logs and request for information (RFI) logs.\nFollow-up with engineers to ensure timely delivery of project paperwork, inspection logs and RFI responses.\nParticipate in construction progress meetings and preparing meeting-minutes when required.', '2018-06-30', 1, '2018-06-30 09:39:41', '2018-06-30 09:39:41'),
(100, 'pre-construction-project-management-system-administrator', 'Pre-Construction Project Management System Administrator', '2018-07-25', 20, 30, 3, 10, 25000, 35000, 'Ability to work independently or as part of a team\nSelf-motivated, well-organized, and detail oriented\nAnalytical skills and ability to interpret data\nAbility to work in a fast pace environment\nBachelor of Arts or Science in a related field preferred', '5+ years directly utilizing construction project management systems as part of role\nKnowledge of data and reporting tools including Tableau, FileMaker, Keynote and Excel\nExcellent communication, interpersonal and time management skills', '2018-06-30', 1, '2018-06-30 09:42:55', '2018-06-30 09:42:55'),
(101, 'construction-administrator', 'Construction Administrator', '2018-06-30', 20, 30, 3, 10, 35000, 60000, 'Jones| Carter is an award-winning, full-service civil engineering, planning, surveying, and professional consulting firm assisting public and private sector clients in design, development, implementation, and execution of infrastructure projects. For over 40 years, we have assisted our clients in a variety of projects including water and wastewater treatment plants, storm drainage, transportation, planning, construction management, and surveying.', 'Jones| Carter is a leader in the civil engineering community. As we continue to grow and serve new areas, we\'ve made a commitment to hold fast to our original mission: to help our clients be successful.', '2018-06-30', 1, '2018-06-30 09:45:26', '2018-06-30 09:45:26'),
(102, 'pre-construction-project-management-system-administrator', 'Pre-Construction Project Management System Administrator', '2018-06-30', 20, 30, 3, 10, 40000, 60000, 'Become a super-user of Development’s PM System application Manage and maintain PM System access, security, configuration and support to ensure data integrity Gathers user feedback on process, tools and templates; and presents change requests Support testing and integrations between PM System and other internal tools When new workflows are created, support enhancements to the PM System Responsible for trouble-shooting PM ', 'Analytical skills and ability to interpret data\nAbility to work in a fast pace environment\nBachelor of Arts or Science in a related field preferred', '2018-06-30', 1, '2018-06-30 09:47:32', '2018-06-30 09:47:32'),
(103, 'vice-president-global-design-construction-global-real-estate', 'Vice President - Global Design & Construction - Global Real Estate', '2018-06-30', 20, 30, 3, 10, 50000, 70000, 'The Construction Laborer performs tasks involving physical labor such as cleaning and preparing job site, loading and delivering materials, setup and take-down of ladders, scaffolding, and other temporary shoring. The Construction Laborer will assist craft workers using a \nvariety of hand tools and power tools, as required by \nProject Superintendent. This is a temporary position, \nwith an anticipated duration of approximately 3-4 \nmonths. ', 'Help develop and manage a strategic program to optimize procurement of construction materials and services.\nCollaborate with engineers, architects, and contractors on estimates and cost build ups.\nHelp drive the bidding process with vendors and sub-contractors by assisting Project Managers and Sourcing team to identify qualified subcontractors, leveling bids, and negotiating price.', '2018-06-30', 1, '2018-06-30 09:49:10', '2018-06-30 09:49:10'),
(104, 'construction-field-office-assistant', 'Construction Field Office Assistant', '2018-07-23', 20, 30, 3, 10, 50000, 90000, 'Perform data entry as needed.\nUse computers for spreadsheets, word processing, database management, and other applications.\nComplete forms in accordance with company policies & procedures\nField telephone calls, receive and direct visitors.\nPerforming other various clerical duties as assigned by Supervisor.', 'Must have strong/advanced computer capabilities in Microsoft Word, Excel, email & internet research\nMust be able to prioritize work effectively\nStrong written and verbal communication skills\nExperience and comfortable with researching and resolving problems\nExtremely detail oriented with strong organizational skills.\nHigh School diploma or equivalent', '2018-06-30', 1, '2018-06-30 09:50:35', '2018-06-30 09:50:35'),
(105, 'vice-president-of-construction-homebuilding', 'Vice President of Construction (Homebuilding)', '2018-07-03', 20, 30, 3, 10, 60000, 10000, 'We are seeking candidates with high volume (300+ units) experience. Experience with a large public or private homebuilder is a must. Local and non-local candidates will be considered. Work with some of the best / smartest leadership on a divisional and corporate level in the homebuilding industry. \n\nThis candidate will oversee the field personnel and processes in implementing and maintaining systems', 'Monitor overhead costs in relation to total volume.\nReview and approve all department budgets.\nMonitor the starts-to-close and backlog process on a monthly basis to facilitate achievement of the business plan while ensuring consistent activity levels in all departments.\nProvide ongoing direction, support, and management to the Homebuilding Supervisor team.\nEnsure homes are built on the budget, on time and in accordance with the quality standards established by the company.', '2018-06-30', 1, '2018-06-30 09:52:00', '2018-06-30 09:52:00'),
(106, 'construction-management-skills-training-cmst-program', 'Construction Management Skills Training (CMST) Program', '2018-06-30', 20, 30, 3, 10, 80000, 150000, 'We are looking for recent or soon-to-be college graduates to be part of our 2018 Construction Management Skills Training (CMST) Program in all of our offices. This unique training program encompasses three twelve-month long rotations in the main areas of construction management: Project Management, Site Supervision, and Estimating.', 'Ensure the proper tools are in place to begin a project\nEnsure all documents and materials are maintained throughout a project\nAssist with financial management of a project\nAssist with the punch list process by coordinating with necessary parties, tracking all items, and distributing lists to all parties', '2018-06-30', 1, '2018-06-30 10:06:34', '2018-06-30 10:06:34'),
(107, 'supply-chain-e2e-analytics-senior-manager', 'Supply Chain E2E Analytics Senior Manager', '2018-06-30', 20, 30, 3, 10, 100000, 150000, 'Johnson & Johnson Consumer Incorporated, a member of Johnson & Johnson\'s Family of Companies, is recruiting for a NA Supply Chain E2E Analytics Senior Manager located in Skillman, NJ with flexibility to sit in Fort Washington, PA. Must be able to float between both sites as needed.', 'Johnson & Johnson Family of Companies touches more than a billion people’s lives each day through our health care products and services, our corporate giving, and the volunteer efforts of our employees. The Johnson & Johnson Group of Consumer Companies develop and market beloved brands that address the needs of consumers and health care professionals worldwide. Our portfolio ranges across several distinct business units: Baby Care, Oral Care, Compromised Skin Care.', '2018-06-30', 1, '2018-06-30 10:11:13', '2018-06-30 10:11:13'),
(108, 'systems-administrator-job', 'Systems Administrator Job', '2018-06-30', 20, 30, 3, 10, 110000, 150000, 'Serve as a technical specialist to provide timely and effective support in maintaining and improving the operation of all corporate computers, networks and servers, Virtualization, VOIP phones, and all server grade services (FileServer, Backups, etc) with a focus on maximizing uptime and meeting the computing needs of the personnel at Organic Technologies.', 'Respond to service disruptions and outages of servers\nMaintain and establish servers to effectively provide for the computing needs of each department\nMaintain accounts and privileges for server and facility access control\nKeep equipment current with updates and security patches', '2018-06-30', 1, '2018-06-30 10:12:27', '2018-06-30 10:12:27'),
(109, 'new-job-post-from-contractor', 'New Job Post From Contractor', '2018-06-30', 20, 31, 3, 16, 80000, 140000, 'Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have been a holiday?\'.', 'Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have been a holiday?\'.Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have been a holiday?\'.', '2018-06-30', 1, '2018-06-30 11:06:45', '2018-06-30 11:06:45'),
(111, 'construction-engineer', 'Construction Engineer', '2018-08-28', 20, 60, 3, 10, 20000, 60000, 'Become a part of a dynamic, fast-growing player in Heavy \nConstruction. Shimmick has an excellent reputation \nwithin the industry and has projects in the greater Bay \nArea and in Southern California. Shimmick takes on \nchallenging projects and performs high-quality work \nranging from expanding/constructing water treatment \nplants to building a BART station to retrofitting the \nGolden Gate Bridge. ', 'Shimmick Construction is currently recruiting for the \nposition of Construction/Field Engineers. We hire our \ninterns and entry-level engineers from our campus effort \nwhere we go to over 20 schools to locate and hire for \nthose positions. We have positions in northern and \nsouthern CA and we are bidding on projects out of state \nas well (currently building a project in WA). ', '2018-07-01', 1, '2018-07-01 04:28:12', '2018-07-01 04:28:12'),
(112, 'project-superintendents', 'Project Superintendents', '2018-08-27', 20, 30, 3, 10, 20000, 60000, 'Our Project Superintendents are the on-site leaders, supervising construction to insure projects are built safely, to the design, and on-time. All our Superintendents are current with OSHA Competent Person, EPA Erosion Control, and First Aid CPR certifications.', 'Our Project Superintendents are the on-site leaders, supervising construction to insure projects are built safely, to the design, and on-time. All our Superintendents are current with OSHA Competent Person, EPA Erosion Control, and First Aid CPR certifications.', '2018-07-01', 1, '2018-07-01 04:34:42', '2018-07-01 04:34:42'),
(113, 'project-engineer', 'Project Engineer', '2018-08-29', 20, 30, 3, 10, 20000, 60000, 'Since 1947, Crowder has built a legacy of success in the construction industry. We work throughout the Southeast on heavy construction infrastructure projects ranging from bridges, dams, water and waste water treatment facilities, power plants and other energy facilities. We are a general contractor who self performs civil, electrical and mechanical trades on both traditional and more complex alternative delivery projects.', 'As a family-owned company, it is the spirit of not only doing the right things, but doing things the right way that is the true legacy of our founders and our people. Crowder is Building America and Proud of It ® as reflected in our Mission Statement: \n\nWe are dedicated to superior performance and committed to making a positive difference for our clients, for our communities, and in the lives of our employees. ', '2018-07-01', 1, '2018-07-01 04:38:31', '2018-07-01 04:38:31'),
(114, 'project-field-engineer', 'Project Field Engineer', '2018-08-19', 20, 30, 3, 10, 20000, 60000, 'Assist project management team with creation of project plan and schedule.\nMonitor project activities and ensures that execution activities comply with established plan and schedule.\nProvides engineering recommendations and guidance to both project management members and craft employees.\nEnsures all necessary project documents and reports are completed and submitted to internal and external individuals.', 'Assist project management team with creation of project plan and schedule.\nMonitor project activities and ensures that execution activities comply with established plan and schedule.\nProvides engineering recommendations and guidance to both project management members and craft employees.\nEnsures all necessary project documents and reports are completed and submitted to internal and external individuals.', '2018-07-01', 1, '2018-07-01 04:41:10', '2018-07-01 04:41:10'),
(115, 'construction-project-coordinator', 'Construction Project Coordinator', '2018-07-30', 20, 30, 3, 10, 20000, 60000, 'Ability to independently manage multiple scopes of work - both subcontracted and self-performed.\nResponsible for coordinating, organizing, tracking, updating and/or expediting the flow of information, files, submittals, drawings and correspondence to internal and external stakeholders.\nAssist in subcontractor strategy and material buyout, including subcontractor outreach and onboarding.', 'The Coordinator works with the Central Operations team and assists with the management of the project from conception through buyout. The Coordinator works with the design, material sourcing, preconstruction, construction materials, and field teams and is responsible for assisting the project team with planning, management and administration of the project(s) to which they are assigned.', '2018-07-01', 1, '2018-07-01 04:43:26', '2018-07-01 04:43:26'),
(116, 'project-engineer', 'Project Engineer', '2018-07-01', 20, 30, 3, 19, 20000, 134000, 'High level of involvement in the operations of our cost control system and analysis of construction costs.\nParticipate in monthly forecasting revenue and costs accruals.\n\nAccumulate all necessary data and prepare monthly pay estimates.\n\nProcess and estimate change orders and Requests for Information as directed by Project Manager.\n\nCoordinate and schedule shop drawings and submittals.', 'Undergraduate degree in Engineering, Business Administration (Accounting, Management or Finance), Construction Management or related field. Equivalent experience in a construction-related position will also be considered.\nMust be willing to travel and relocate. Project sites are located domestically and internationally, so relocation and/or travel are required.', '2018-07-01', 1, '2018-07-01 04:45:21', '2018-07-01 04:45:21'),
(117, 'construction-engineer', 'Construction Engineer', '2018-08-14', 18, 56, 3, 10, 20000, 60000, 'Basic knowledge in materials of construction and trade quality control inspections\nDetermines acceptability of materials provided by the contractors based upon test reports\nPrepared by testing labs that include such items as soil density, soil compaction, concrete compressive strength, asphalt composition and aggregate base course for pavement', 'Chairs job progress meetings and prepares meeting notes to document agreements and decisions on technical matters\nResponsible for leading a team of up to four (4) field inspectors\nCritiques daily field reports prepared by field inspectors for proper technical content and provides guidance to field inspectors on technical matters', '2018-07-01', 1, '2018-07-01 04:47:04', '2018-07-01 04:47:04'),
(118, 'payroll-supervisor', 'Payroll Supervisor', '2018-07-31', 20, 30, 3, 10, 20000, 60000, 'Assist in the preparation of union reporting.\nAddress payroll related queries and requests from employees.\nAssist in the submission of withholding and garnishment payments.\nAssist in monthly general ledger reconciliation of payroll related accounts.\nLead training sessions for new hires on time reporting.', 'Proficient in Microsoft Excel\nConstruction and union payroll experience is preferred\nKnowledge of Viewpoint software is preferred', '2018-07-01', 1, '2018-07-01 04:48:41', '2018-07-01 04:48:41'),
(119, 'construction-project-management-director', 'Construction Project Management Director', '2018-07-01', 20, 30, 3, 10, 20000, 60000, 'Responsible for billing (including documentation required for revenue recognition), accounts receivable (AR) collection, expense monitoring and control, staffing (including allocation, if applicable) and full P&L to EBITDA before all allocations. ', 'Responsible for accurate, timely, and compliant contract procurement, contract negotiation, contract execution, contract administration, and closeout. Contracts included company\'s agreements, client/vendor agreements, company/vendor and supplier agreements. Monitors adherence to policies and procedures regarding internal governance and controls. \n\nDemonstrates ability to identify complex project risks, lead reviews, develop risk mitigation and contingency plans, and implement action', '2018-07-01', 1, '2018-07-01 04:50:26', '2018-07-01 04:50:26'),
(120, 'construction-project-coordinator', 'Construction Project Coordinator', '2018-07-01', 20, 30, 3, 10, 20000000, 60000000, 'Ability to independently manage multiple scopes of work - both subcontracted and self-performed.\nResponsible for coordinating, organizing, tracking, updating and/or expediting the flow of information, files, submittals, drawings and correspondence to internal and external stakeholders.\nAssist in subcontractor strategy and material buyout, including subcontractor outreach and onboarding.', 'The Coordinator works with the Central Operations team and assists with the management of the project from conception through buyout. The Coordinator works with the design, material sourcing, preconstruction, construction materials, and field teams and is responsible for assisting the project team with planning, management and administration of the project(s) to which they are assigned.', '2018-07-01', 1, '2018-07-01 04:55:50', '2018-07-01 04:55:50'),
(121, 'project-engineer-manager', 'Project Engineer Manager', '2018-07-01', 20, 30, 3, 19, 20000000, 134000000, 'High level of involvement in the operations of our cost control system and analysis of construction costs.\nParticipate in monthly forecasting revenue and costs accruals.\n\nAccumulate all necessary data and prepare monthly pay estimates.\n\nProcess and estimate change orders and Requests for Information as directed by Project Manager.\n\nCoordinate and schedule shop drawings and submittals.', 'Undergraduate degree in Engineering, Business Administration (Accounting, Management or Finance), Construction Management or related field. Equivalent experience in a construction-related position will also be considered.\nMust be willing to travel and relocate. Project sites are located domestically and internationally, so relocation and/or travel are required.', '2018-07-01', 1, '2018-07-01 04:56:04', '2018-07-01 04:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=applied 1=shortlisted 2= interview list, 3= final selected',
  `expected_salary` int(11) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=not view, 1= viewed',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `job_id`, `employee_id`, `status`, `expected_salary`, `profile_view`, `created_at`, `updated_at`) VALUES
(47, 108, 1, 0, 20, 0, '2018-06-30 10:14:42', '2018-06-30 10:14:42'),
(48, 107, 1, 0, 0, 0, '2018-06-30 10:14:54', '2018-06-30 10:14:54'),
(49, 106, 1, 0, 0, 0, '2018-06-30 10:15:03', '2018-06-30 10:15:03'),
(50, 105, 1, 0, 0, 0, '2018-06-30 10:16:49', '2018-06-30 10:16:49'),
(51, 104, 1, 0, 0, 0, '2018-06-30 10:16:59', '2018-06-30 10:16:59'),
(52, 103, 1, 0, 0, 0, '2018-06-30 10:17:09', '2018-06-30 10:17:09'),
(53, 102, 1, 0, 0, 0, '2018-06-30 10:17:18', '2018-06-30 10:17:18'),
(54, 101, 1, 0, 150, 0, '2018-06-30 10:17:29', '2018-06-30 10:17:29'),
(55, 100, 1, 0, 20, 0, '2018-06-30 10:17:47', '2018-06-30 10:17:47'),
(56, 99, 1, 0, 25000, 0, '2018-06-30 10:17:59', '2018-06-30 10:17:59'),
(58, 108, 2, 0, 0, 0, '2018-06-30 10:18:35', '2018-06-30 10:18:35'),
(59, 107, 2, 0, 0, 0, '2018-06-30 10:21:09', '2018-06-30 10:21:09'),
(60, 106, 2, 0, 0, 0, '2018-06-30 10:21:14', '2018-06-30 10:21:14'),
(61, 105, 2, 0, 0, 0, '2018-06-30 10:21:20', '2018-06-30 10:21:20'),
(62, 104, 2, 0, 0, 0, '2018-06-30 10:21:26', '2018-06-30 10:21:26'),
(63, 103, 2, 0, 40000, 0, '2018-06-30 10:21:38', '2018-06-30 10:21:38'),
(64, 102, 2, 0, 5000, 0, '2018-06-30 10:21:47', '2018-06-30 10:21:47'),
(65, 101, 2, 0, 6500, 0, '2018-06-30 10:21:53', '2018-06-30 10:21:53'),
(66, 100, 2, 0, 45660, 0, '2018-06-30 10:21:58', '2018-06-30 10:21:58'),
(67, 99, 2, 0, 50000, 0, '2018-06-30 10:22:03', '2018-06-30 10:22:03'),
(69, 108, 3, 0, 1000, 0, '2018-06-30 10:22:35', '2018-06-30 10:22:35'),
(70, 107, 3, 0, 0, 0, '2018-06-30 10:22:44', '2018-06-30 10:22:44'),
(71, 106, 3, 0, 400, 0, '2018-06-30 10:22:55', '2018-06-30 10:22:55'),
(72, 105, 3, 0, 0, 0, '2018-06-30 10:23:01', '2018-06-30 10:23:01'),
(73, 104, 3, 0, 40, 0, '2018-06-30 10:23:11', '2018-06-30 10:23:11'),
(74, 103, 3, 0, 45, 0, '2018-06-30 10:23:18', '2018-06-30 10:23:18'),
(75, 102, 3, 0, 456, 0, '2018-06-30 10:23:23', '2018-06-30 10:23:23'),
(76, 101, 3, 0, 0, 0, '2018-06-30 10:23:27', '2018-06-30 10:23:27'),
(77, 100, 3, 0, 10, 0, '2018-06-30 10:23:34', '2018-06-30 10:23:34'),
(78, 99, 3, 0, 0, 0, '2018-06-30 10:23:39', '2018-06-30 10:23:39'),
(80, 108, 4, 0, 0, 0, '2018-06-30 10:24:14', '2018-06-30 10:24:14'),
(81, 107, 4, 0, 0, 0, '2018-06-30 10:24:19', '2018-06-30 10:24:19'),
(82, 106, 4, 0, 0, 0, '2018-06-30 10:24:22', '2018-06-30 10:24:22'),
(83, 105, 4, 0, 0, 0, '2018-06-30 10:24:27', '2018-06-30 10:24:27'),
(84, 104, 4, 0, 0, 0, '2018-06-30 10:24:33', '2018-06-30 10:24:33'),
(85, 103, 4, 0, 0, 0, '2018-06-30 10:24:37', '2018-06-30 10:24:37'),
(86, 102, 4, 0, 0, 0, '2018-06-30 10:24:42', '2018-06-30 10:24:42'),
(87, 101, 4, 0, 0, 0, '2018-06-30 10:24:46', '2018-06-30 10:24:46'),
(88, 100, 4, 0, 0, 0, '2018-06-30 10:24:50', '2018-06-30 10:24:50'),
(89, 99, 4, 0, 0, 0, '2018-06-30 10:24:55', '2018-06-30 10:24:55'),
(91, 108, 5, 0, 0, 0, '2018-06-30 10:25:26', '2018-06-30 10:25:26'),
(92, 107, 5, 0, 0, 0, '2018-06-30 10:25:31', '2018-06-30 10:25:31'),
(93, 106, 5, 0, 0, 0, '2018-06-30 10:25:36', '2018-06-30 10:25:36'),
(94, 105, 5, 0, 0, 0, '2018-06-30 10:25:40', '2018-06-30 10:25:40'),
(95, 104, 5, 0, 0, 0, '2018-06-30 10:25:46', '2018-06-30 10:25:46'),
(96, 103, 5, 0, 0, 0, '2018-06-30 10:25:51', '2018-06-30 10:25:51'),
(97, 102, 5, 0, 0, 0, '2018-06-30 10:25:55', '2018-06-30 10:25:55'),
(98, 101, 5, 0, 0, 0, '2018-06-30 10:26:00', '2018-06-30 10:26:00'),
(99, 100, 5, 0, 0, 0, '2018-06-30 10:26:05', '2018-06-30 10:26:05'),
(100, 99, 5, 0, 0, 0, '2018-06-30 10:26:10', '2018-06-30 10:26:10'),
(102, 108, 6, 0, 0, 0, '2018-06-30 10:26:38', '2018-06-30 10:26:38'),
(103, 107, 6, 0, 0, 0, '2018-06-30 10:26:43', '2018-06-30 10:26:43'),
(104, 106, 6, 0, 0, 0, '2018-06-30 10:26:48', '2018-06-30 10:26:48'),
(105, 105, 6, 0, 0, 0, '2018-06-30 10:26:51', '2018-06-30 10:26:51'),
(106, 104, 6, 0, 0, 0, '2018-06-30 10:26:56', '2018-06-30 10:26:56'),
(107, 103, 6, 0, 0, 0, '2018-06-30 10:27:02', '2018-06-30 10:27:02'),
(108, 102, 6, 0, 0, 0, '2018-06-30 10:27:06', '2018-06-30 10:27:06'),
(109, 101, 6, 0, 0, 0, '2018-06-30 10:27:11', '2018-06-30 10:27:11'),
(110, 100, 6, 0, 0, 0, '2018-06-30 10:27:16', '2018-06-30 10:27:16'),
(111, 99, 6, 0, 0, 0, '2018-06-30 10:27:21', '2018-06-30 10:27:21'),
(113, 108, 7, 0, 0, 0, '2018-06-30 10:30:02', '2018-06-30 10:30:02'),
(114, 107, 7, 0, 0, 0, '2018-06-30 10:30:07', '2018-06-30 10:30:07'),
(115, 106, 7, 0, 0, 0, '2018-06-30 10:30:12', '2018-06-30 10:30:12'),
(116, 105, 7, 0, 0, 0, '2018-06-30 10:30:16', '2018-06-30 10:30:16'),
(117, 104, 7, 0, 0, 0, '2018-06-30 10:30:19', '2018-06-30 10:30:19'),
(118, 103, 7, 0, 0, 0, '2018-06-30 10:30:24', '2018-06-30 10:30:24'),
(119, 102, 7, 0, 0, 0, '2018-06-30 10:30:29', '2018-06-30 10:30:29'),
(120, 101, 7, 0, 0, 0, '2018-06-30 10:30:32', '2018-06-30 10:30:32'),
(121, 100, 7, 0, 0, 0, '2018-06-30 10:30:36', '2018-06-30 10:30:36'),
(122, 99, 7, 0, 0, 0, '2018-06-30 10:30:40', '2018-06-30 10:30:40'),
(124, 108, 8, 0, 0, 0, '2018-06-30 10:31:08', '2018-06-30 10:31:08'),
(125, 107, 8, 0, 0, 0, '2018-06-30 10:31:12', '2018-06-30 10:31:12'),
(126, 106, 8, 0, 0, 0, '2018-06-30 10:31:15', '2018-06-30 10:31:15'),
(127, 105, 8, 0, 0, 0, '2018-06-30 10:31:18', '2018-06-30 10:31:18'),
(128, 104, 8, 0, 0, 0, '2018-06-30 10:31:22', '2018-06-30 10:31:22'),
(129, 103, 8, 0, 0, 0, '2018-06-30 10:31:28', '2018-06-30 10:31:28'),
(130, 102, 8, 0, 0, 0, '2018-06-30 10:31:33', '2018-06-30 10:31:33'),
(131, 101, 8, 0, 0, 0, '2018-06-30 10:31:38', '2018-06-30 10:31:38'),
(132, 100, 8, 0, 0, 0, '2018-06-30 10:31:43', '2018-06-30 10:31:43'),
(133, 99, 8, 0, 0, 0, '2018-06-30 10:31:47', '2018-06-30 10:31:47'),
(135, 108, 9, 0, 0, 0, '2018-06-30 10:32:20', '2018-06-30 10:32:20'),
(136, 107, 9, 0, 0, 0, '2018-06-30 10:32:24', '2018-06-30 10:32:24'),
(137, 106, 9, 0, 0, 0, '2018-06-30 10:32:27', '2018-06-30 10:32:27'),
(138, 105, 9, 0, 0, 0, '2018-06-30 10:32:31', '2018-06-30 10:32:31'),
(139, 104, 9, 0, 0, 0, '2018-06-30 10:32:34', '2018-06-30 10:32:34'),
(140, 103, 9, 0, 0, 0, '2018-06-30 10:32:40', '2018-06-30 10:32:40'),
(141, 102, 9, 0, 0, 0, '2018-06-30 10:32:44', '2018-06-30 10:32:44'),
(142, 101, 9, 0, 0, 0, '2018-06-30 10:32:47', '2018-06-30 10:32:47'),
(143, 100, 9, 0, 0, 0, '2018-06-30 10:32:51', '2018-06-30 10:32:51'),
(144, 99, 9, 0, 0, 0, '2018-06-30 10:32:57', '2018-06-30 10:32:57'),
(146, 108, 10, 0, 0, 0, '2018-06-30 10:33:21', '2018-06-30 10:33:21'),
(147, 107, 10, 0, 0, 0, '2018-06-30 10:33:28', '2018-06-30 10:33:28'),
(148, 106, 10, 0, 0, 0, '2018-06-30 10:33:30', '2018-06-30 10:33:30'),
(149, 105, 10, 0, 0, 0, '2018-06-30 10:33:34', '2018-06-30 10:33:34'),
(150, 104, 10, 0, 0, 0, '2018-06-30 10:33:37', '2018-06-30 10:33:37'),
(151, 103, 10, 0, 0, 0, '2018-06-30 10:33:42', '2018-06-30 10:33:42'),
(152, 102, 10, 0, 0, 0, '2018-06-30 10:33:46', '2018-06-30 10:33:46'),
(153, 101, 10, 0, 0, 0, '2018-06-30 10:33:49', '2018-06-30 10:33:49'),
(154, 100, 10, 0, 0, 0, '2018-06-30 10:33:52', '2018-06-30 10:33:52'),
(155, 99, 10, 0, 0, 0, '2018-06-30 10:33:55', '2018-06-30 10:33:55'),
(157, 121, 1, 0, 0, 0, '2018-07-01 05:10:33', '2018-07-01 05:10:33'),
(158, 120, 1, 0, 25000, 0, '2018-07-01 05:10:42', '2018-07-01 05:10:42'),
(159, 119, 1, 0, 0, 0, '2018-07-01 05:10:46', '2018-07-01 05:10:46'),
(160, 118, 1, 0, 0, 0, '2018-07-01 05:10:50', '2018-07-01 05:10:50'),
(161, 117, 1, 0, 0, 0, '2018-07-01 05:10:54', '2018-07-01 05:10:54'),
(162, 116, 1, 0, 0, 0, '2018-07-01 05:10:57', '2018-07-01 05:10:57'),
(163, 115, 1, 0, 0, 0, '2018-07-01 05:11:01', '2018-07-01 05:11:01'),
(164, 114, 1, 0, 0, 0, '2018-07-01 05:11:04', '2018-07-01 05:11:04'),
(165, 113, 1, 0, 0, 0, '2018-07-01 05:11:07', '2018-07-01 05:11:07'),
(166, 112, 1, 0, 0, 0, '2018-07-01 05:11:10', '2018-07-01 05:11:10'),
(167, 111, 1, 0, 0, 0, '2018-07-01 05:11:14', '2018-07-01 05:11:14'),
(168, 121, 2, 0, 0, 0, '2018-07-01 05:11:41', '2018-07-01 05:11:41'),
(169, 120, 2, 0, 0, 0, '2018-07-01 05:11:45', '2018-07-01 05:11:45'),
(170, 119, 2, 0, 0, 0, '2018-07-01 05:11:48', '2018-07-01 05:11:48'),
(171, 118, 2, 0, 0, 0, '2018-07-01 05:11:51', '2018-07-01 05:11:51'),
(172, 117, 2, 0, 0, 0, '2018-07-01 05:11:54', '2018-07-01 05:11:54'),
(173, 116, 2, 0, 0, 0, '2018-07-01 05:11:57', '2018-07-01 05:11:57'),
(174, 115, 2, 0, 0, 0, '2018-07-01 05:12:00', '2018-07-01 05:12:00'),
(175, 114, 2, 0, 0, 0, '2018-07-01 05:12:04', '2018-07-01 05:12:04'),
(176, 113, 2, 0, 0, 0, '2018-07-01 05:12:07', '2018-07-01 05:12:07'),
(177, 112, 2, 0, 0, 0, '2018-07-01 05:12:10', '2018-07-01 05:12:10'),
(178, 111, 2, 0, 0, 0, '2018-07-01 05:12:14', '2018-07-01 05:12:14'),
(179, 121, 3, 0, 0, 0, '2018-07-01 05:12:36', '2018-07-01 05:12:36'),
(180, 120, 3, 0, 0, 0, '2018-07-01 05:12:41', '2018-07-01 05:12:41'),
(181, 119, 3, 0, 0, 0, '2018-07-01 05:12:45', '2018-07-01 05:12:45'),
(182, 118, 3, 0, 0, 0, '2018-07-01 05:12:49', '2018-07-01 05:12:49'),
(183, 117, 3, 0, 0, 0, '2018-07-01 05:12:52', '2018-07-01 05:12:52'),
(184, 116, 3, 0, 0, 0, '2018-07-01 05:12:55', '2018-07-01 05:12:55'),
(185, 115, 3, 0, 0, 0, '2018-07-01 05:12:59', '2018-07-01 05:12:59'),
(186, 114, 3, 0, 20000, 0, '2018-07-01 05:13:05', '2018-07-01 05:13:05'),
(187, 113, 3, 0, 0, 0, '2018-07-01 05:13:09', '2018-07-01 05:13:09'),
(188, 112, 3, 0, 0, 0, '2018-07-01 05:13:12', '2018-07-01 05:13:12'),
(189, 111, 3, 0, 0, 0, '2018-07-01 05:13:16', '2018-07-01 05:13:16'),
(190, 121, 4, 0, 0, 0, '2018-07-01 05:15:25', '2018-07-01 05:15:25'),
(191, 120, 4, 0, 12000, 0, '2018-07-01 05:15:31', '2018-07-01 05:15:31'),
(192, 119, 4, 0, 80000, 0, '2018-07-01 05:15:36', '2018-07-01 05:15:36'),
(193, 118, 4, 0, 60000, 0, '2018-07-01 05:15:47', '2018-07-01 05:15:47'),
(194, 117, 4, 0, 20000, 0, '2018-07-01 05:15:53', '2018-07-01 05:15:53'),
(195, 116, 4, 0, 25000, 0, '2018-07-01 05:16:00', '2018-07-01 05:16:00'),
(196, 115, 4, 0, 0, 0, '2018-07-01 05:16:04', '2018-07-01 05:16:04'),
(197, 114, 4, 0, 0, 0, '2018-07-01 05:16:06', '2018-07-01 05:16:06'),
(198, 113, 4, 0, 0, 0, '2018-07-01 05:16:10', '2018-07-01 05:16:10'),
(199, 112, 4, 0, 0, 0, '2018-07-01 05:16:13', '2018-07-01 05:16:13'),
(200, 111, 4, 0, 0, 0, '2018-07-01 05:16:17', '2018-07-01 05:16:17'),
(201, 121, 5, 0, 0, 0, '2018-07-01 05:16:45', '2018-07-01 05:16:45'),
(202, 120, 5, 0, 0, 0, '2018-07-01 05:16:48', '2018-07-01 05:16:48'),
(203, 119, 5, 0, 0, 0, '2018-07-01 05:16:52', '2018-07-01 05:16:52'),
(204, 118, 5, 0, 0, 0, '2018-07-01 05:16:54', '2018-07-01 05:16:54'),
(205, 117, 5, 0, 0, 0, '2018-07-01 05:16:58', '2018-07-01 05:16:58'),
(206, 116, 5, 0, 0, 0, '2018-07-01 05:17:02', '2018-07-01 05:17:02'),
(207, 115, 5, 0, 0, 0, '2018-07-01 05:17:05', '2018-07-01 05:17:05'),
(208, 114, 5, 0, 0, 0, '2018-07-01 05:17:08', '2018-07-01 05:17:08'),
(209, 113, 5, 0, 0, 0, '2018-07-01 05:17:11', '2018-07-01 05:17:11'),
(210, 112, 5, 0, 0, 0, '2018-07-01 05:17:14', '2018-07-01 05:17:14'),
(211, 111, 5, 0, 0, 0, '2018-07-01 05:17:19', '2018-07-01 05:17:19'),
(212, 121, 6, 0, 0, 0, '2018-07-01 05:17:56', '2018-07-01 05:17:56'),
(213, 120, 6, 0, 0, 0, '2018-07-01 05:17:59', '2018-07-01 05:17:59'),
(214, 119, 6, 0, 0, 0, '2018-07-01 05:18:02', '2018-07-01 05:18:02'),
(215, 118, 6, 0, 0, 0, '2018-07-01 05:18:05', '2018-07-01 05:18:05'),
(216, 117, 6, 0, 0, 0, '2018-07-01 05:18:08', '2018-07-01 05:18:08'),
(217, 116, 6, 0, 0, 0, '2018-07-01 05:18:11', '2018-07-01 05:18:11'),
(218, 115, 6, 0, 0, 0, '2018-07-01 05:18:16', '2018-07-01 05:18:16'),
(219, 114, 6, 0, 0, 0, '2018-07-01 05:18:21', '2018-07-01 05:18:21'),
(220, 113, 6, 0, 0, 0, '2018-07-01 05:18:25', '2018-07-01 05:18:25'),
(221, 112, 6, 0, 0, 0, '2018-07-01 05:18:29', '2018-07-01 05:18:29'),
(222, 111, 6, 0, 0, 0, '2018-07-01 05:18:36', '2018-07-01 05:18:36'),
(223, 121, 7, 0, 0, 0, '2018-07-01 05:19:53', '2018-07-01 05:19:53'),
(224, 120, 7, 0, 0, 0, '2018-07-01 05:19:57', '2018-07-01 05:19:57'),
(225, 119, 7, 0, 0, 0, '2018-07-01 05:20:00', '2018-07-01 05:20:00'),
(226, 118, 7, 0, 0, 0, '2018-07-01 05:20:03', '2018-07-01 05:20:03'),
(227, 117, 7, 0, 0, 0, '2018-07-01 05:20:06', '2018-07-01 05:20:06'),
(228, 116, 7, 0, 0, 0, '2018-07-01 05:20:08', '2018-07-01 05:20:08'),
(229, 115, 7, 0, 0, 0, '2018-07-01 05:20:12', '2018-07-01 05:20:12'),
(230, 114, 7, 0, 0, 0, '2018-07-01 05:20:14', '2018-07-01 05:20:14'),
(231, 113, 7, 0, 0, 0, '2018-07-01 05:20:17', '2018-07-01 05:20:17'),
(232, 112, 7, 0, 0, 0, '2018-07-01 05:20:22', '2018-07-01 05:20:22'),
(233, 111, 7, 0, 0, 0, '2018-07-01 05:20:26', '2018-07-01 05:20:26'),
(234, 121, 8, 0, 0, 0, '2018-07-01 05:20:57', '2018-07-01 05:20:57'),
(235, 120, 8, 0, 0, 0, '2018-07-01 05:21:02', '2018-07-01 05:21:02'),
(236, 119, 8, 0, 0, 0, '2018-07-01 05:21:06', '2018-07-01 05:21:06'),
(237, 118, 8, 0, 0, 0, '2018-07-01 05:21:09', '2018-07-01 05:21:09'),
(238, 117, 8, 0, 0, 0, '2018-07-01 05:21:12', '2018-07-01 05:21:12'),
(239, 116, 8, 0, 0, 0, '2018-07-01 05:21:15', '2018-07-01 05:21:15'),
(240, 115, 8, 0, 0, 0, '2018-07-01 05:21:18', '2018-07-01 05:21:18'),
(241, 114, 8, 0, 0, 0, '2018-07-01 05:21:20', '2018-07-01 05:21:20'),
(242, 113, 8, 0, 0, 0, '2018-07-01 05:21:24', '2018-07-01 05:21:24'),
(243, 112, 8, 0, 0, 0, '2018-07-01 05:21:27', '2018-07-01 05:21:27'),
(244, 111, 8, 0, 0, 0, '2018-07-01 05:21:31', '2018-07-01 05:21:31'),
(245, 121, 9, 0, 0, 0, '2018-07-01 05:22:29', '2018-07-01 05:22:29'),
(246, 120, 9, 0, 0, 0, '2018-07-01 05:22:32', '2018-07-01 05:22:32'),
(247, 119, 9, 0, 0, 0, '2018-07-01 05:22:35', '2018-07-01 05:22:35'),
(248, 118, 9, 0, 0, 0, '2018-07-01 05:22:43', '2018-07-01 05:22:43'),
(249, 117, 9, 0, 0, 0, '2018-07-01 05:22:46', '2018-07-01 05:22:46'),
(250, 116, 9, 0, 0, 0, '2018-07-01 05:22:49', '2018-07-01 05:22:49'),
(251, 115, 9, 0, 0, 0, '2018-07-01 05:22:52', '2018-07-01 05:22:52'),
(252, 114, 9, 0, 0, 0, '2018-07-01 05:22:55', '2018-07-01 05:22:55'),
(253, 113, 9, 0, 0, 0, '2018-07-01 05:22:58', '2018-07-01 05:22:58'),
(254, 112, 9, 0, 0, 0, '2018-07-01 05:23:01', '2018-07-01 05:23:01'),
(255, 111, 9, 0, 0, 0, '2018-07-01 05:23:05', '2018-07-01 05:23:05'),
(256, 121, 10, 0, 0, 0, '2018-07-01 05:23:28', '2018-07-01 05:23:28'),
(257, 120, 10, 0, 0, 0, '2018-07-01 05:23:33', '2018-07-01 05:23:33'),
(258, 119, 10, 0, 0, 0, '2018-07-01 05:23:36', '2018-07-01 05:23:36'),
(259, 118, 10, 0, 0, 0, '2018-07-01 05:23:39', '2018-07-01 05:23:39'),
(260, 117, 10, 0, 0, 0, '2018-07-01 05:23:42', '2018-07-01 05:23:42'),
(261, 116, 10, 0, 0, 0, '2018-07-01 05:23:46', '2018-07-01 05:23:46'),
(262, 115, 10, 0, 0, 0, '2018-07-01 05:23:49', '2018-07-01 05:23:49'),
(263, 114, 10, 0, 0, 0, '2018-07-01 05:23:53', '2018-07-01 05:23:53'),
(264, 113, 10, 0, 0, 0, '2018-07-01 05:23:56', '2018-07-01 05:23:56'),
(265, 112, 10, 0, 0, 0, '2018-07-01 05:24:00', '2018-07-01 05:24:00'),
(266, 111, 10, 0, 0, 0, '2018-07-01 05:24:04', '2018-07-01 05:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2018_07_03_101552_create_employee_job_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shofin', 'shofin.cse@gmail.com', '$2y$10$58maoe5113lJ6cePc33AguF.RQWQPNiQDIKyu9rmtsy.yq33ivjsi', NULL, '2018-07-03 01:32:41', '2018-07-03 01:32:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_job_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_job_job_id_foreign` (`job_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_applicants_job_id_employee_id_unique` (`job_id`,`employee_id`),
  ADD KEY `job_applicants_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_job`
--
ALTER TABLE `employee_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_job`
--
ALTER TABLE `employee_job`
  ADD CONSTRAINT `employee_job_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `employee_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 16 juin 2017 à 17:02
-- Version du serveur :  10.1.22-MariaDB
-- Version de PHP :  7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `smf`
--

-- --------------------------------------------------------

--
-- Structure de la table `smf_admin_info_files`
--

CREATE TABLE `smf_admin_info_files` (
  `id_file` tinyint(4) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_admin_info_files`
--

INSERT INTO `smf_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = \"SMF 2.0.14\";', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	\'SMF\': \'SMF 2.0.14\',\n	\'SourcesAdmin.php\': \'2.0.12\',\n	\'SourcesBoardIndex.php\': \'2.0\',\n	\'SourcesCalendar.php\': \'2.0.12\',\n	\'SourcesClass-CurlFetchWeb.php\': \'2.0.14\',\n	\'SourcesClass-Graphics.php\': \'2.0\',\n	\'SourcesClass-Package.php\': \'2.0.8\',\n	\'SourcesDbExtra-mysql.php\': \'2.0\',\n	\'SourcesDbExtra-postgresql.php\': \'2.0\',\n	\'SourcesDbExtra-sqlite.php\': \'2.0\',\n	\'SourcesDbPackages-mysql.php\': \'2.0.12\',\n	\'SourcesDbPackages-postgresql.php\': \'2.0.10\',\n	\'SourcesDbPackages-sqlite.php\': \'2.0\',\n	\'SourcesDbSearch-mysql.php\': \'2.0\',\n	\'SourcesDbSearch-postgresql.php\': \'2.0.7\',\n	\'SourcesDbSearch-sqlite.php\': \'2.0.7\',\n	\'SourcesDisplay.php\': \'2.0.12\',\n	\'SourcesDumpDatabase.php\': \'2.0\',\n	\'SourcesErrors.php\': \'2.0.4\',\n	\'SourcesGroups.php\': \'2.0\',\n	\'SourcesHelp.php\': \'2.0\',\n	\'SourcesKarma.php\': \'2.0\',\n	\'SourcesLoad.php\': \'2.0.14\',\n	\'SourcesLockTopic.php\': \'2.0\',\n	\'SourcesLogInOut.php\': \'2.0.14\',\n	\'SourcesManageAttachments.php\': \'2.0.12\',\n	\'SourcesManageBans.php\': \'2.0\',\n	\'SourcesManageBoards.php\': \'2.0\',\n	\'SourcesManageCalendar.php\': \'2.0\',\n	\'SourcesManageErrors.php\': \'2.0.4\',\n	\'SourcesManageMail.php\': \'2.0\',\n	\'SourcesManageMaintenance.php\': \'2.0.7\',\n	\'SourcesManageMembergroups.php\': \'2.0.7\',\n	\'SourcesManageMembers.php\': \'2.0.11\',\n	\'SourcesManageNews.php\': \'2.0.14\',\n	\'SourcesManagePaid.php\': \'2.0.12\',\n	\'SourcesManagePermissions.php\': \'2.0\',\n	\'SourcesManagePosts.php\': \'2.0.12\',\n	\'SourcesManageRegistration.php\': \'2.0\',\n	\'SourcesManageScheduledTasks.php\': \'2.0\',\n	\'SourcesManageSearch.php\': \'2.0.12\',\n	\'SourcesManageSearchEngines.php\': \'2.0\',\n	\'SourcesManageServer.php\': \'2.0.14\',\n	\'SourcesManageSettings.php\': \'2.0.14\',\n	\'SourcesManageSmileys.php\': \'2.0\',\n	\'SourcesMemberlist.php\': \'2.0.12\',\n	\'SourcesMessageIndex.php\': \'2.0.2\',\n	\'SourcesModerationCenter.php\': \'2.0.12\',\n	\'SourcesModlog.php\': \'2.0.12\',\n	\'SourcesMoveTopic.php\': \'2.0\',\n	\'SourcesNews.php\': \'2.0.8\',\n	\'SourcesNotify.php\': \'2.0\',\n	\'SourcesPackageGet.php\': \'2.0.13\',\n	\'SourcesPackages.php\': \'2.0.12\',\n	\'SourcesPersonalMessage.php\': \'2.0.12\',\n	\'SourcesPoll.php\': \'2.0.14\',\n	\'SourcesPost.php\': \'2.0.14\',\n	\'SourcesPostModeration.php\': \'2.0\',\n	\'SourcesPrintpage.php\': \'2.0\',\n	\'SourcesProfile.php\': \'2.0.14\',\n	\'SourcesProfile-Actions.php\': \'2.0.14\',\n	\'SourcesProfile-Modify.php\': \'2.0.14\',\n	\'SourcesProfile-View.php\': \'2.0.14\',\n	\'SourcesQueryString.php\': \'2.0.9\',\n	\'SourcesRecent.php\': \'2.0\',\n	\'SourcesRegister.php\': \'2.0.14\',\n	\'SourcesReminder.php\': \'2.0.14\',\n	\'SourcesRemoveTopic.php\': \'2.0.12\',\n	\'SourcesRepairBoards.php\': \'2.0\',\n	\'SourcesReports.php\': \'2.0\',\n	\'SourcesSSI.php\': \'2.0.10\',\n	\'SourcesScheduledTasks.php\': \'2.0.14\',\n	\'SourcesSearch.php\': \'2.0.9\',\n	\'SourcesSearchAPI-Custom.php\': \'2.0.12\',\n	\'SourcesSearchAPI-Fulltext.php\': \'2.0\',\n	\'SourcesSearchAPI-Standard.php\': \'2.0\',\n	\'SourcesSecurity.php\': \'2.0.3\',\n	\'SourcesSendTopic.php\': \'2.0.14\',\n	\'SourcesSplitTopics.php\': \'2.0.14\',\n	\'SourcesStats.php\': \'2.0\',\n	\'SourcesSubs.php\': \'2.0.14\',\n	\'SourcesSubs-Admin.php\': \'2.0\',\n	\'SourcesSubs-Auth.php\': \'2.0.11\',\n	\'SourcesSubs-BoardIndex.php\': \'2.0\',\n	\'SourcesSubs-Boards.php\': \'2.0\',\n	\'SourcesSubs-Calendar.php\': \'2.0\',\n	\'SourcesSubs-Categories.php\' : \'2.0\',\n	\'SourcesSubs-Charset.php\' : \'2.0.12\',\n	\'SourcesSubs-Compat.php\': \'2.0\',\n	\'SourcesSubs-Db-mysql.php\': \'2.0.14\',\n	\'SourcesSubs-Db-postgresql.php\': \'2.0.4\',\n	\'SourcesSubs-Db-sqlite.php\': \'2.0\',\n	\'SourcesSubs-Editor.php\': \'2.0.11\',\n	\'SourcesSubs-Graphics.php\': \'2.0.12\',\n	\'SourcesSubs-List.php\': \'2.0\',\n	\'SourcesSubs-Membergroups.php\': \'2.0\',\n	\'SourcesSubs-Members.php\': \'2.0.14\',\n	\'SourcesSubs-MembersOnline.php\': \'2.0.12\',\n	\'SourcesSubs-Menu.php\': \'2.0.12\',\n	\'SourcesSubs-MessageIndex.php\': \'2.0\',\n	\'SourcesSubs-OpenID.php\': \'2.0.11\',\n	\'SourcesSubs-Package.php\': \'2.0.14\',\n	\'SourcesSubs-Post.php\': \'2.0.14\',\n	\'SourcesSubs-Recent.php\': \'2.0\',\n	\'SourcesSubscriptions-PayPal.php\': \'2.0.12\',\n	\'Sourcessubscriptions.php\': \'2.0.12\',\n	\'SourcesSubs-Sound.php\': \'2.0\',\n	\'SourcesThemes.php\': \'2.0.13\',\n	\'SourcesViewQuery.php\': \'2.0\',\n	\'SourcesWho.php\': \'2.0.12\',\n	\'SourcesXml.php\': \'2.0\',\n	\'DefaultAdmin.template.php\': \'2.0\',\n	\'DefaultBoardIndex.template.php\': \'2.0\',\n	\'DefaultCalendar.template.php\': \'2.0\',\n	\'DefaultCompat.template.php\': \'2.0\',\n	\'DefaultDisplay.template.php\': \'2.0\',\n	\'DefaultErrors.template.php\': \'2.0\',\n	\'DefaultGenericControls.template.php\': \'2.0\',\n	\'DefaultGenericList.template.php\': \'2.0\',\n	\'DefaultGenericMenu.template.php\': \'2.0\',\n	\'DefaultHelp.template.php\': \'2.0.6\',\n	\'DefaultLogin.template.php\': \'2.0.14\',\n	\'DefaultManageAttachments.template.php\': \'2.0\',\n	\'DefaultManageBans.template.php\': \'2.0\',\n	\'DefaultManageBoards.template.php\': \'2.0\',\n	\'DefaultManageCalendar.template.php\': \'2.0\',\n	\'DefaultManageMail.template.php\': \'2.0\',\n	\'DefaultManageMaintenance.template.php\': \'2.0\',\n	\'DefaultManageMembergroups.template.php\': \'2.0\',\n	\'DefaultManageMembers.template.php\': \'2.0\',\n	\'DefaultManageNews.template.php\': \'2.0\',\n	\'DefaultManagePaid.template.php\': \'2.0\',\n	\'DefaultManagePermissions.template.php\': \'2.0.9\',\n	\'DefaultManageScheduledTasks.template.php\': \'2.0\',\n	\'DefaultManageSearch.template.php\': \'2.0\',\n	\'DefaultManageSmileys.template.php\': \'2.0\',\n	\'DefaultMemberlist.template.php\': \'2.0\',\n	\'DefaultMessageIndex.template.php\': \'2.0\',\n	\'DefaultModerationCenter.template.php\': \'2.0\',\n	\'DefaultMoveTopic.template.php\': \'2.0\',\n	\'DefaultNotify.template.php\': \'2.0\',\n	\'DefaultPackages.template.php\': \'2.0\',\n	\'DefaultPersonalMessage.template.php\': \'2.0\',\n	\'DefaultPoll.template.php\': \'2.0\',\n	\'DefaultPost.template.php\': \'2.0.10\',\n	\'DefaultPrintpage.template.php\': \'2.0\',\n	\'DefaultProfile.template.php\': \'2.0.14\',\n	\'DefaultRecent.template.php\': \'2.0\',\n	\'DefaultRegister.template.php\': \'2.0\',\n	\'DefaultReminder.template.php\': \'2.0\',\n	\'DefaultReports.template.php\': \'2.0\',\n	\'DefaultSearch.template.php\': \'2.0.10\',\n	\'DefaultSendTopic.template.php\': \'2.0\',\n	\'DefaultSettings.template.php\': \'2.0\',\n	\'DefaultSplitTopics.template.php\': \'2.0\',\n	\'DefaultStats.template.php\': \'2.0\',\n	\'DefaultThemes.template.php\': \'2.0.12\',\n	\'DefaultWho.template.php\': \'2.0\',\n	\'DefaultWireless.template.php\': \'2.0\',\n	\'DefaultXml.template.php\': \'2.0\',\n	\'Defaultindex.template.php\': \'2.0.14\',\n	\'TemplatesAdmin.template.php\': \'2.0\',\n	\'TemplatesBoardIndex.template.php\': \'2.0\',\n	\'TemplatesCalendar.template.php\': \'2.0\',\n	\'TemplatesDisplay.template.php\': \'2.0\',\n	\'TemplatesErrors.template.php\': \'2.0\',\n	\'TemplatesGenericControls.template.php\': \'2.0\',\n	\'TemplatesGenericList.template.php\': \'2.0\',\n	\'TemplatesGenericMenu.template.php\': \'2.0\',\n	\'TemplatesHelp.template.php\': \'2.0\',\n	\'TemplatesLogin.template.php\': \'2.0\',\n	\'TemplatesManageAttachments.template.php\': \'2.0\',\n	\'TemplatesManageBans.template.php\': \'2.0\',\n	\'TemplatesManageBoards.template.php\': \'2.0\',\n	\'TemplatesManageCalendar.template.php\': \'2.0\',\n	\'TemplatesManageMail.template.php\': \'2.0\',\n	\'TemplatesManageMaintenance.template.php\': \'2.0\',\n	\'TemplatesManageMembergroups.template.php\': \'2.0\',\n	\'TemplatesManageMembers.template.php\': \'2.0\',\n	\'TemplatesManageNews.template.php\': \'2.0\',\n	\'TemplatesManagePaid.template.php\': \'2.0\',\n	\'TemplatesManagePermissions.template.php\': \'2.0.9\',\n	\'TemplatesManageSearch.template.php\': \'2.0\',\n	\'TemplatesManageSmileys.template.php\': \'2.0\',\n	\'TemplatesMemberlist.template.php\': \'2.0\',\n	\'TemplatesMessageIndex.template.php\': \'2.0\',\n	\'TemplatesModerationCenter.template.php\': \'2.0\',\n	\'TemplatesModlog.template.php\': \'2.0\',\n	\'TemplatesMoveTopic.template.php\': \'2.0\',\n	\'TemplatesNotify.template.php\': \'2.0\',\n	\'TemplatesPackages.template.php\': \'2.0\',\n	\'TemplatesPersonalMessage.template.php\': \'2.0\',\n	\'TemplatesPoll.template.php\': \'2.0\',\n	\'TemplatesPost.template.php\': \'2.0.10\',\n	\'TemplatesPrintpage.template.php\': \'2.0\',\n	\'TemplatesProfile.template.php\': \'2.0\',\n	\'TemplatesRecent.template.php\': \'2.0\',\n	\'TemplatesRegister.template.php\': \'2.0\',\n	\'TemplatesReminder.template.php\': \'2.0\',\n	\'TemplatesReports.template.php\': \'2.0\',\n	\'TemplatesSearch.template.php\': \'2.0.10\',\n	\'TemplatesSendTopic.template.php\': \'2.0\',\n	\'TemplatesSettings.template.php\': \'2.0\',\n	\'TemplatesSplitTopics.template.php\': \'2.0\',\n	\'TemplatesStats.template.php\': \'2.0\',\n	\'TemplatesThemes.template.php\': \'2.0.12\',\n	\'TemplatesWho.template.php\': \'2.0\',\n	\'TemplatesWireless.template.php\': \'2.0\',\n	\'TemplatesXml.template.php\': \'2.0\',\n	\'Templatesindex.template.php\': \'2.0\'\n};\n\nwindow.smfLanguageVersions = {\n	\'Admin\': \'2.0\',\n	\'EmailTemplates\': \'2.0\',\n	\'Errors\': \'2.0\',\n	\'Help\': \'2.0\',\n	\'index\': \'2.0.14\',\n	\'Install\': \'2.0\',\n	\'Login\': \'2.0\',\n	\'ManageBoards\': \'2.0\',\n	\'ManageCalendar\': \'2.0\',\n	\'ManageMail\': \'2.0\',\n	\'ManageMaintenance\': \'2.0\',\n	\'ManageMembers\': \'2.0\',\n	\'ManagePaid\': \'2.0.10\',\n	\'ManagePermissions\': \'2.0\',\n	\'ManageScheduledTasks\': \'2.0\',\n	\'ManageSettings\': \'2.0\',\n	\'ManageSmileys\': \'2.0\',\n	\'Manual\': \'2.0\',\n	\'ModerationCenter\': \'2.0\',\n	\'Modifications\': \'2.0\',\n	\'Modlog\': \'2.0\',\n	\'Packages\': \'2.0\',\n	\'PersonalMessage\': \'2.0\',\n	\'Post\': \'2.0\',\n	\'Profile\': \'2.0\',\n	\'Reports\': \'2.0\',\n	\'Search\': \'2.0\',\n	\'Settings\': \'2.0\',\n	\'Stats\': \'2.0\',\n	\'Themes\': \'2.0\',\n	\'Who\': \'2.0\',\n	\'Wireless\': \'2.0\'\n};\n', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: \'SMF 2.1 Beta 3 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=554301.0\',\n		time: \'May 31, 2017, 09:21:59 PM\',\n		author: \'Colin\',\n		message: \'Simple Machines is proud to announce the third beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 2.\'\n	},\n	{\n		subject: \'SMF 2.0.14 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=553855.0\',\n		time: \'May 14, 2017, 05:23:46 PM\',\n		author: \'Colin\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.13 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.13 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=551061.0\',\n		time: \'January 04, 2017, 07:00:00 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few vulnerabilities in SMF 2.0.12 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.12 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=548871.0\',\n		time: \'September 27, 2016, 07:00:00 AM\',\n		author: \'CoreISP\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.11 and fixing several bugs as well. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.11 has been released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=539888.0\',\n		time: \'September 18, 2015, 10:56:19 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a vulnerability in SMF 2.0.10. We urge all forum administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=538198.0\',\n		time: \'July 16, 2015, 05:45:30 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the second beta of the next version of SMF, which contains many bugfixes and a few new features since 2.1 Beta 1!\'\n	},\n	{\n		subject: \'SMF 2.0.10 and 1.1.21 have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=535828.0\',\n		time: \'April 24, 2015, 10:09:00 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing a few bugs in SMF 2.0.x and SMF 1.1.x. We urge all forum administrators to upgrade to SMF 2.0.10 or 1.1.21&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.1 Beta 1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=530233.0\',\n		time: \'November 20, 2014, 07:40:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'Simple Machines is proud to announce the first beta of the next version of SMF, with many improvements and new features!\'\n	},\n	{\n		subject: \'SMF 2.0.9 and 1.1.20 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=528448.0\',\n		time: \'October 02, 2014, 07:13:50 PM\',\n		author: \'Oldiesmann\',\n		message: \'Critical security patches have been released, addressing a few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.8 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=524016.0\',\n		time: \'June 18, 2014, 10:11:32 AM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing memory issues with 2.0.7, MySQL 5.6 compatibility issues and a rare memberlist search bug. We urge all forum administrators to upgrade to SMF 2.0.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.7 released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=517205.0\',\n		time: \'January 20, 2014, 09:48:07 PM\',\n		author: \'Oldiesmann\',\n		message: \'A patch has been released, addressing several bugs, including PHP 5.5 compatibility.  We urge all forum administrators to upgrade to SMF 2.0.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.6 and 1.1.19 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=512964.0\',\n		time: \'October 22, 2013, 09:00:00 AM\',\n		author: \'Illori\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.5 security patches has been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=509417.0\',\n		time: \'August 12, 2013, 08:34:06 PM\',\n		author: \'Oldiesmann\',\n		message: \'A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.4 and 1.1.18 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=496403.0\',\n		time: \'February 01, 2013, 05:27:00 PM\',\n		author: \'emanuele\',\n		message: \'Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=492786.0\',\n		time: \'December 16, 2012, 11:41:05 PM\',\n		author: \'emanuele\',\n		message: \'Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.2 and 1.1.16 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=463103.0\',\n		time: \'December 23, 2011, 12:41:31 AM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0.1 and 1.1.15 security patches have been released.\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=452888.0\',\n		time: \'September 18, 2011, 04:48:18 PM\',\n		author: \'Norv\',\n		message: \'Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Gold\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'June 04, 2011, 05:00:00 PM\',\n		author: \'Norv\',\n		message: \'SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.\'\n	},\n	{\n		subject: \'SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=421547.0\',\n		time: \'February 11, 2011, 03:16:35 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC4 and SMF 1.1.12 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=407256.0\',\n		time: \'November 01, 2010, 12:14:21 PM\',\n		author: \'Norv\',\n		message: \'Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 2.0 RC3 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=369616.0\',\n		time: \'March 08, 2010, 06:03:11 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.11 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=351341.0\',\n		time: \'December 01, 2009, 05:59:19 PM\',\n		author: \'SleePy\',\n		message: \'A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.\'\n	},\n	{\n		subject: \'SMF 2.0 RC2 Public released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=346813.0\',\n		time: \'November 08, 2009, 07:10:03 PM\',\n		author: \'Aaron\',\n		message: \'Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.10 and 2.0 RC1.2 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=324169.0\',\n		time: \'July 14, 2009, 07:05:19 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.9 and 2.0 RC1-1 released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=311899.0\',\n		time: \'May 20, 2009, 08:40:41 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 RC1 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290609.0\',\n		time: \'February 04, 2009, 11:10:01 PM\',\n		author: \'Compuart\',\n		message: \'Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.8\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=290608.0\',\n		time: \'February 04, 2009, 11:08:44 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.7\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=272861.0\',\n		time: \'November 07, 2008, 02:15:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.6\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=260145.0\',\n		time: \'September 07, 2008, 04:38:05 AM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.5\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=236816.0\',\n		time: \'April 20, 2008, 09:56:14 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 3 Public Released\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=228921.0\',\n		time: \'March 17, 2008, 03:20:21 PM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.\'\n	},\n	{\n		subject: \'SMF 1.1.4\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=196380.0\',\n		time: \'September 24, 2007, 09:07:36 PM\',\n		author: \'Compuart\',\n		message: \'A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 2.0 Beta 1 Released to Charter Members\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=190812.0\',\n		time: \'August 25, 2007, 07:29:25 AM\',\n		author: \'Grudge\',\n		message: \'Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\\'s new\'\n	},\n	{\n		subject: \'SMF 1.1.3\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=178757.0\',\n		time: \'June 24, 2007, 09:52:40 PM\',\n		author: \'Thantos\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1.2\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=149553.0\',\n		time: \'February 11, 2007, 08:35:45 AM\',\n		author: \'Grudge\',\n		message: \'A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.\'\n	},\n	{\n		subject: \'SMF 1.1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=134971.0\',\n		time: \'December 17, 2006, 09:33:41 AM\',\n		author: \'Grudge\',\n		message: \'A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.\'\n	},\n	{\n		subject: \'SMF 1.1\',\n		href: \'https://www.simplemachines.org/community/index.php?topic=131008.0\',\n		time: \'December 02, 2006, 02:53:16 PM\',\n		author: \'Grudge\',\n		message: \'SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.\'\n	}\n];\nif (window.smfVersion < \"SMF 2.0\")\n{\n	window.smfUpdateNotice = \'SMF 2.0 Final has now been released. To take advantage of the improvements available in SMF 2.0 we recommend upgrading as soon as is practical.\';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById(\"yourVersion\"))\n{\n	var yourVersion = getInnerHTML(document.getElementById(\"yourVersion\"));\n	if (yourVersion == \"SMF 1.0.4\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.5\" || yourVersion == \"SMF 1.0.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.7\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.8\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.10\" || yourVersion == \"SMF 1.1.2\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz\";\n	else if (yourVersion == \"SMF 1.0.11\" || yourVersion == \"SMF 1.1.3\" || yourVersion == \"SMF 2.0 beta 1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.12\" || yourVersion == \"SMF 1.1.4\" || yourVersion == \"SMF 2.0 beta 3 Public\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip\";\n	else if (yourVersion == \"SMF 1.0.13\" || yourVersion == \"SMF 1.1.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.14\" || yourVersion == \"SMF 1.1.6\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.15\" || yourVersion == \"SMF 1.1.7\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip\";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == \"SMF 1.0.16\" || yourVersion == \"SMF 1.1.8\" || yourVersion == \"SMF 2.0 RC1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip\";\n	else if (yourVersion == \"SMF 1.0.17\" || yourVersion == \"SMF 1.1.9\" || yourVersion == \"SMF 2.0 RC1-1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip\";\n	else if (yourVersion == \"SMF 1.0.18\" || yourVersion == \"SMF 1.1.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.0.19\" || yourVersion == \"SMF 1.1.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz\";\n	}\n	else if (yourVersion == \"SMF 1.0.20\" || yourVersion == \"SMF 1.1.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.14\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.15\" || yourVersion == \"SMF 1.0.21\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.1\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.16\" || yourVersion == \"SMF 1.0.22\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.17\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.2\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.3\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.4\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.18\" || yourVersion == \"SMF 2.0.5\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.19\" || yourVersion == \"SMF 2.0.8\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1.20\" || yourVersion == \"SMF 2.0.9\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip\";\n	else if (yourVersion == \"SMF 2.0.10\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz\";\n	else if (yourVersion == \"SMF 1.1.1\")\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz\";\n	else if (yourVersion == \"SMF 2.0.11\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.12\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip\";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == \"SMF 2.0.13\")\n	{\n		window.smfUpdatePackage = \"http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz\";\n		window.smfUpdateCritical = true;\n	}\n}\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/anyone we may have missed/, \'<span title=\"And you thought you had escaped the credits, hadn\\\'t you, Zef Hemel?\">anyone we may have missed</span>\'));\n', 'text/javascript');
INSERT INTO `smf_admin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=packages;sa=download;get;package=\';if (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nif (typeof(window.smfVersion) != \"undefined\")\n{\n	var version = window.smfVersion;\n\n	// We might need this...\n	var smf_modificationInfo = {};\n	\n	switch (version)\n	{\n		case \"SMF 2.0 Beta 1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 Beta 3 Public\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC1-1\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0 RC4\":\n			if (typeof(window.smfRC4patch) == \"undefined\")\n				window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			else\n				showLatestPackages();\n			break;\n		case \"SMF 2.0\":\n			window.smfLatestPackages = \'A few security vulnerabilities have been identified in SMF 2.0. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.1\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.2\":\n			window.smfLatestPackages = \'A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.3\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.4\":\n			window.smfLatestPackages = \'A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.5\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.5 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.19_2.0.6.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.6\":\n			window.smfLatestPackages = \'PHP 5.5 compatibility issues and several other bugs have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.7.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.7.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.7\":\n			window.smfLatestPackages = \'Memory issues encountered with SMF 2.0.7, some MySQL 5.6 compatibility issues and a rare bug with the memberlist search feature have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.8.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.8.<br /><br />If you have any problems applying it, you can try to use the upgrade file posted on the downloads page - although, any modifications you have installed will need to be uninstalled when you use that method.<br />Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.8\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.8 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.20_2.0.9.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.9\":\n			window.smfLatestPackages = \'A few bugs in SMF 2.0.9 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.21_2.0.10.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.10\":\n			window.smfLatestPackages = \'A security vulnerability has been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.11.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.11\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.11 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.12.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.12\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.12 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.13.zip;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n		case \"SMF 2.0.13\":\n			window.smfLatestPackages = \'A few security vulnerabilities and bugs in SMF 2.0.13 have been fixed. You can install <a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.14.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">this patch (click here to install)</a> to fix your forum and update it to 2.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href=\"https://www.simplemachines.org/community/index.php?P=e006e6bca8afbfc3af3e381cbc8dbe17&amp;\">forum</a> if you need more help.\';\n			break;\n        default:\n			showLatestPackages();\n			break;\n	}\n}\nelse\n{\n	window.smfLatestPackages = \'For the package manager to function properly, please upgrade to the latest version of SMF.\';\n}\n\n// This function shows latest mods when there isn\'t anything else to display\nfunction showLatestPackages()\n{\n	smf_modificationInfo = {\n	\n		4147: {\n			name: \'Membergroup-based Signature Permissions 1.0\',\n			versions: [\'88\'],\n			desc: \'This mod enables membergroup-based signature permissions for images, smileys and links.<br /><br />It also provides the option to allow increased privileges (ie, twice as many characters, images, smileys and lines in signature and 50% larger font size) to the values specified in Admin -&gt; Features and Options -&gt; Signature.\',\n			file: \'MembergroupSigPerms.zip\'\n		},\n		4145: {\n			name: \'Minimum Characters to Count Post 1.0.1\',\n			versions: [\'88\'],\n			desc: \'<span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>Minimum Characters to Count Post</strong></span></span><br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Information</span></strong></span><br />This MOD will add a setting to set the minimum characters that a post need to be in order to modify the post count in the boards that have enabled the post count increase.<br />If a post have less than the characters specified in the setting the post count will not be increased.<br />It strip down the Quote BBCode to count only the real message.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Usage</span></strong></span><br />Install and then go to the Admin Panel, in the Forum section, in the Posts and Topics area, in the Posts Settings tab.<br />You will find an option to enter the number of characters from where the message posted will increase the post count.<br />Set that to your liking.<br /><br /><br /><br />(c) 2017<br />@author&nbsp;&nbsp;&nbsp;<span style=\"color: blue;\" class=\"bbc_color\"><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=338423\" class=\"bbc_link\" target=\"_blank\">Gluz</a></span><br />@license&nbsp;&nbsp;&nbsp;BSD <a href=\"http://opensource.org/licenses/BSD-3-Clause\" class=\"bbc_link\" target=\"_blank\">http://opensource.org/licenses/BSD-3-Clause</a><br />@mod&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minimum Characters to Count Post<br /><br /><br /><span class=\"bbc_u\"><strong>Changelog:</strong></span><br /><br /><span class=\"bbc_u\">Version 1.0.1</span><br />-Fix for the postcount decrement when a valid size post is deleted but <strong>$modSettings&#91;&#039;search_custom_index_config&#039;]</strong> was empty.<br /><br /><span class=\"bbc_u\">Version 1.0.0</span><br />-Initial Release.\',\n			file: \'Minimum_Characters_to_Count_Post_v1.0.1.zip\'\n		},\n		4143: {\n			name: \'Font AweaZome BBC Code  1.2.0\',\n			versions: [\'87\', \'88\'],\n			desc: \'<span style=\"color: teal;\" class=\"bbc_color\"><span style=\"font-size: 2em;\" class=\"bbc_size\"><strong>Font AweaZome </strong></span></span><br /><strong>Author:</strong> <a href=\"http://zStudios.es\" class=\"bbc_link\" target=\"_blank\">zStudios Networks</a><br /><br /><span style=\"color: teal;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Description</span></strong></span><br /><br /><strong>For SMF 2.0.x only</strong><br /><br />This mod will add a tags:&nbsp; <br />&#91;fa&#93;fa-rebel&#91;/fa&#93;<br />&nbsp;<br />Using the Font Aweasome CDN for implement the Font Aweasome Icons via BBC&nbsp; for the threads, and HTML for your forum templates.<br /><span style=\"color: teal;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">License</span></strong></span><br /><br />&nbsp;* This SMF modification is subject to the Mozilla Public License Version<br />&nbsp;* 2.0 (the &quot;License&quot;); you may not use this SMF modification except in compliance with<br />&nbsp;* the License. You may obtain a copy of the License at<br />&nbsp;* <a href=\"http://www.mozilla.org/MPL/\" class=\"bbc_link\" target=\"_blank\">http://www.mozilla.org/MPL/</a><br />&nbsp;<br /><span style=\"color: teal;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Languages</span></strong></span><br />-English/utf8<br /><br /><span style=\"color: teal;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\">Changelog</span></strong></span><br /><br /><strong>1.0 - Jan 07, 2017</strong><br />-Code improved.<br /><br /><strong>1.2 - May 18, 2017</strong><br />-Stack Icons&nbsp; feature added <strong>[fasi]</strong><br /><span style=\"color: red;\" class=\"bbc_color\"><em><strong>Note:</strong> For the usage of this modification we use the javascript CDN of Font Awesome, who has a function of error reports, any error from font awesome icon will be reported to their server..</em></span>\',\n			file: \'FontAweaZome-1.2.zip\'\n		},\n		1974: {\n			name: \'PM Attachments 2.2\',\n			versions: [\'47\', \'50\', \'51\', \'54\', \'57\', \'78\', \'80\', \'87\'],\n			desc: \'<hr /><div align=\"center\"><span style=\"color: red;\" class=\"bbc_color\"><span style=\"font-size: 16pt;\" class=\"bbc_size\"><strong>PM ATTACHMENTS V2.2</strong></span></span><br /><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=198712\" class=\"bbc_link\" target=\"_blank\"><strong>Originally By SoLoGHost</strong></a> -&gt; <a href=\"http://custom.simplemachines.org/mods/index.php?mod=1974\" class=\"bbc_link\" target=\"_blank\">Link to Mod</a><br /><a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=253913\" class=\"bbc_link\" target=\"_blank\"><strong>Taken Over By Dougiefresh</strong></a><br /></div><hr /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Introduction</span></span></strong></span><br />Gives your users the ability to attach files and send them to other members via Personal Messages.&nbsp; Based from the same code used to display attachments via posts.&nbsp; <strong>Completely secure</strong>!&nbsp; Only users who have sent or received these files are able to view and/or download them based on their View Attachments Permission for the usergroup they belong to.&nbsp; Administrators don&#039;t even have access to these attachments, unless you report the PM to them via &quot;Report to Admin&quot; link if enabled in Admin Settings.<br /><br /><span class=\"bbc_u\"><strong>Important Note:</strong></span>&nbsp; To ensure PM Attachment Settings are correctly placed and loaded, you will be redirected so that your File Cache will be cleared, directly after installing PM Attachments.&nbsp; After which, go to: [p]Admin[/b] =&gt; <strong>Forum</strong> =&gt; <strong>Attachments and Avatars</strong> =&gt; <strong>PM Attachment Settings</strong> and complete setup.&nbsp; Than make sure you have your permissions set for each usergroup.&nbsp; You will notice the permissions for PM Attachments have been added to the Personal Message Permissions.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Admin Settings</span></span></strong></span><br />There are two new areas underneath the <strong>Admin</strong> =&gt; <strong>Forum</strong> =&gt; <strong>Attachments and Avatars</strong> area, called:<br />o <strong>PM Attachments</strong> =&gt; All options relating to PM attachment functionality<br />o <strong>PM File Maintenance</strong> =&gt; All maintenance options (moved from <strong>File Maintenance</strong> tab)<br /><br />Two new permissions have been added to the <strong>Admin</strong> =&gt; <strong>Members</strong> =&gt; <strong>Permissions</strong> area:<br />o <strong>View PM Attachments</strong><br />o <strong>Upload PM Attachments</strong><br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Compatibility Notes</span></span></strong></span><br />This mod was tested on SMF 2.0.13, but should work on SMF 2.0 RC2 and up.&nbsp; SMF 1.x is not and will not be supported.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Translators</span></span></strong></span><br />&gt; <a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=198712\" class=\"bbc_link\" target=\"_blank\">SoLoGHoST</a> - English translation<br />&gt; <a href=\"http://www.simplemachines.org/community/index.php?action=profile;u=229017\" class=\"bbc_link\" target=\"_blank\">Bugo</a> - Russian translation<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">Changelog</span></span></strong></span><br />The changelog has been removed and can be seen at <a href=\"http://www.xptsp.com/board/index.php?topic=849.msg1483#msg1483\" class=\"bbc_link\" target=\"_blank\">XPtsp.com</a>.<br /><br /><span style=\"color: blue;\" class=\"bbc_color\"><strong><span style=\"font-size: 12pt;\" class=\"bbc_size\"><span class=\"bbc_u\">License</span></span></strong></span><br />Copyright (c) 2009 to 2016, Solomon Closson (aka SoLoGHoST)<br />Copyright (c) 2017, Solomon Closson (aka SoLoGHoST) and Douglas Orend<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:<br /><br />1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.<br /><br />2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.<br />\',\n			file: \'PM_Attachments_v2.2.zip\'\n		}	};\n	var smf_latestModifications = [4147, 4145, 4143];\n	\n	window.smfLatestPackages = \'\\\n		<div id=\"smfLatestPackagesWindow\"style=\"overflow: auto;\">\\\n			<h3 style=\"margin: 0; padding: 4px;\">New Packages:</h3>\\\n			<img src=\"https://www.simplemachines.org/smf/images/package.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n			<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n	\n	for (var i = 0; i < smf_latestModifications.length; i++)\n	{\n		var id_mod = smf_latestModifications[i];\n	\n		window.smfLatestPackages += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_modificationInfo[id_mod].name + \'</a></li>\';\n	}\n	\n	window.smfLatestPackages += \'\\\n			</ul>\';\n	\n	if (typeof(window.smfVersion) != \"undefined\" && (window.smfVersion < \"SMF 1.0.6\" || (window.smfVersion == \"SMF 1.1 RC2\" && !in_array(\'smf:smf-1.0.7\', window.smfInstalledPackages))))\n		window.smfLatestPackages += \'\\\n			<h3 class=\"error\" style=\"margin: 0; padding: 4px;\">Updates for SMF:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Security update (X-Forwarded-For header vulnerability)</a>\\\n			</div>\';\n	else\n		window.smfLatestPackages += \'\\\n			<h3 style=\"margin: 0; padding: 4px;\">Package of the Moment:</h3>\\\n			<div style=\"padding: 0 4px;\">\\\n				<a href=\"javascript:smf_packagesMoreInfo(1974);void(0);\">PM Attachments 2.2</a>\\\n			</div>\';\n	\n	window.smfLatestPackages += \'\\\n		</div>\';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById(\"smfLatestPackagesWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_modificationInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_modificationInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_modificationInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestPackagesWindow\"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestPackagesWindow\")) - 10);\n}\n', 'text/javascript'),
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = \'?action=admin;area=smileys;sa=install;set_gz=\';\nif (typeof(window.smfForum_sessionvar) == \"undefined\")\n	window.smfForum_sessionvar = \'sesc\';\n\nvar smf_smileysInfo = {\n\n	4099: {\n		name: \'EmojiOne 0.3.2\',\n		versions: [\'84\'],\n		desc: \'EmojiOne is not BBC but functions in the same space as BBC.<br /><br />This mod add some support for converting emoji decimal input into their hexadecimal counterpart. With the hexadecimal data this mod replaces the decimal data with the appropriate emoji from the EmojiOne CDN server.<br /><br /><strong>License</strong><br />Copyright (c) 2016, Russell Najar<br />All rights reserved.<br /><br />Redistribution and use in source and binary forms, with or without<br />modification, are permitted provided that the following conditions are met:<br /><br />* Redistributions of source code must retain the above copyright notice, this<br />&nbsp; list of conditions and the following disclaimer.<br /><br />* Redistributions in binary form must reproduce the above copyright notice,<br />&nbsp; this list of conditions and the following disclaimer in the documentation<br />&nbsp; and/or other materials provided with the distribution.<br /><br />THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;AS IS&quot;<br />AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE<br />IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br />DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE<br />FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL<br />DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR<br />SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER<br />CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,<br />OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE<br />OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\',\n		file: \'SMF-EmojiOne.tar.gz\'\n	},\n	4049: {\n		name: \'Flat emoji (Twitter Emoji) 1.0.1\',\n		versions: [\'81\', \'82\'],\n		desc: \'<div align=\"center\"><strong>Flat Emoji</strong><br /><hr /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fimg.iammichael.nl%2Fd26d3.png&hash=018e0f573d2709203d189f0064bf7ac9\" alt=\"\" class=\"bbc_img\" /><br /><hr /><br />These flat twitter emoji will make your forum look much better, especially when you like flat design!<br />Originally made for NMOT (<a href=\"http://nmot.nl\" class=\"bbc_link\" target=\"_blank\">http://nmot.nl</a>).</div>\',\n		file: \'FlatEmoji.zip\'\n	},\n	4045: {\n		name: \'sdgirlsmilies 1.0\',\n		versions: [\'81\', \'82\'],\n		desc: \'Set of over-sized smilies of a girls face with the default SMF emotions<br /><br />NOTE: These will also work with SMF 2.1 B1<br /><br /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fi133.photobucket.com%2Falbums%2Fq72%2FGrumpy_075%2Fsmfsmilies%2Fsdgirldemo.jpg&hash=8761b37ffdd21514615ec2e1e06f4e69\" alt=\"\" class=\"bbc_img\" />\',\n		file: \'sdgirlsmilies.zip\'\n	},\n	3628: {\n		name: \'BBPh Smileys 1.0\',\n		versions: [\'72\', \'73\'],\n		desc: \'Made to easily replace default ones.<br /><br /><img src=\"https://www.simplemachines.org/community/proxy.php?request=http%3A%2F%2Fdl.dropbox.com%2Fu%2F1684364%2Farc%2Fbbph.gif&hash=624328997c21e324055eb79554e8044c\" alt=\"\" class=\"bbc_img\" /><br /><br />These are just my favorites since the first forum I ever lived on was based on phpBB. Some are animated. package-info.xml included.<br /><br />Original smileys belong to phpBB. Some minor mods by me.\',\n		file: \'bbph.zip\'\n	},};\nvar smf_latestSmileys = [4099, 4049, 4045];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById(\"smfLatestSmileysWindow\").innerHTML;\n\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"),\n	\'\\\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_smileysInfo[id].name + \'</h3>\\\n		<h4 style=\"padding: 4px; margin: 0;\"><a href=\"\' + window.smfForum_scripturl + actionurl + \'http://custom.simplemachines.org/mods/downloads/\' + id + \'/\' + smf_smileysInfo[id].file + \';\' + window.smfForum_sessionvar + \'=\' + window.smfForum_sessionid + \'\">Install Now!</a></h4>\\\n		<div style=\"margin: 4px;\">\' + smf_smileysInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\n		<div class=\"titlebg\" style=\"padding: 4px; margin: 0;\"><a href=\"javascript:smf_packagesBack();void(0);\">(go back)</a></div>\');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById(\"smfLatestSmileysWindow\"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestSmileysWindow\")) - 10);\n}\n\nwindow.smfLatestSmileys = \'\\\n	<div id=\"smfLatestSmileysWindow\" style=\"overflow: auto;\">\\\n		<img src=\"https://www.simplemachines.org/smf/images/smileys.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 4px;\" alt=\"(package)\" />\\\n		<h3 style=\"margin: 0; padding: 4px;\">Smiley of the Moment:</h3>\\\n		<div style=\"padding: 0 4px;\">\\\n			<a href=\"javascript:smf_packagesMoreInfo(3628);void(0);\">BBPh Smileys 1.0</a>\\\n		</div>\';\n\nwindow.smfLatestSmileys += \'\\\n		<h3 style=\"margin: 0; padding: 4px;\">New Smileys:</h3>\\\n		<ul style=\"list-style: none; margin-top: 3px; padding: 0 4px;\">\';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += \'<li><a href=\"javascript:smf_packagesMoreInfo(\' + id_mod + \');void(0);\">\' + smf_smileysInfo[id_mod].name + \'</a></li>\';\n}\n\nwindow.smfLatestSmileys += \'\\\n		</ul>\';\n\nwindow.smfLatestSmileys += \'\\\n	</div>\';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == \"undefined\")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = \'<div style=\"font-size: 0.85em;\"><div style=\"font-weight: bold;\">SMF 2.0.13</div>This version fixes a few security issues and bugs.  Please <a href=\"https://download.simplemachines.org/\">try it</a> before requesting support.</div>\';\n\nif (document.getElementById(\'credits\'))\n	setInnerHTML(document.getElementById(\'credits\'), getInnerHTML(document.getElementById(\'credits\')).replace(/thank you!/, \'<span onclick=\"alert(\\\'Kupo!\\\');\">thank you!</span>\'));\n', 'text/javascript'),
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	2852: {\r\n		name: \'ShelfLife\',\r\n		desc: \'ShelfLife is another theme I have worked on before, also only the theme part is there, no special features added. A traditional theme with new layout elements and colors, written using HTML5/CSS3 and having a responsive layout.\',\r\n		file: \'shelflife203.zip\',\r\n		author: \'BHKristiansen\'\r\n	},\r\n	2886: {\r\n		name: \'wellgromed\',\r\n		desc: \'Wellgromed<br /><br />Burgundy and shades of color.<br />There are many custom made icons.<br />The carcasses will be inserted into the background of a landscape, if you do not like it removed.<br />A little background is effective, headers are being applied.<br />The template is part of a series.<br /><br />Featuring: 2.0.1, 2.02, 2.0.3, 2.0.4, 2.0.5, 2.0.6, 2.0.7, 2.0.8, 2.0.9, 2.0.10, 2.0.11, 2.0.12, 2.0. 13<br />\',\r\n		file: \'well gromed.zip\',\r\n		author: \'ircsiinci\'\r\n	},\r\n	2885: {\r\n		name: \'Bluesea\',\r\n		desc: \'Blue Sea<br /><br />Blue and shades.<br />There are many custom made icons.<br />The carcasses will be inserted into the background of a landscape, if you do not like it removed.<br />A little background potent header will not be collapsed.<br />The template is part of a series.<br /><br />Featuring: 2.0.1, 2.02, 2.0.3, 2.0.4, 2.0.5, 2.0.6, 2.0.7, 2.0.8, 2.0.9, 2.0.10, 2.0.11, 2.0.12, 2.0. 13<br />\',\r\n		file: \'bluesea.zip\',\r\n		author: \'ircsiinci\'\r\n	},\r\n	2884: {\r\n		name: \'Purple Island\',\r\n		desc: \'Purple Island<br /><br />Colour purple and shades.<br />There are many custom made icons.<br />The carcasses will be inserted into the background of a landscape, if you do not like it removed.<br />A little background potent header will not be collapsed.<br />The template is part of a series.<br /><br />Featuring: 2.0.1, 2.02, 2.0.3, 2.0.4, 2.0.5, 2.0.6, 2.0.7, 2.0.8, 2.0.9, 2.0.10, 2.0.11, 2.0.12, 2.0.13.\',\r\n		file: \'lilacisland.zip\',\r\n		author: \'ircsiinci\'\r\n	},\r\n	1096: {\r\n		name: \'TrekBreak\',\r\n		desc: \'This is a &quot;Classic&quot; era Star Trek theme. It uses gradients for the category and title backgrounds, and Star Trek themed icons.<br /><br /><a href=\"http://productions.devira.info/demo\" class=\"bbc_link\" target=\"_blank\"><span style=\"font-size: 1.35em;\" class=\"bbc_size\">Link to Demo</span></a><br /><br /><span style=\"color: blue;\" class=\"bbc_color\">Please note: Firefox (and other browsers using the Gecko engine) and Safari/Google Chrome (and other browsers using the Webkit engine) will see the optimal version of this theme. All others (IE, Opera, Konqueror users) will see a less-than-optimal version. At this time, and without making large coding edits, this is the closest I can get to optimal on non-Gecko/Wekbit browsers.</span><br /><br />Theme is based on <a href=\"http://dzinerstudio.com\" class=\"bbc_link\" target=\"_blank\">DzinerStudio&#039;s</a> DarkBreak theme. Most of the icons are copyright to Cmdr. T. Weimann of <a href=\"http://www.lcars-interface.de\" class=\"bbc_link\" target=\"_blank\">http://www.lcars-interface.de</a>. All other icons made by Eliana Tamerin.\',\r\n		file: \'trekbreak_20b4_v1.zip\',\r\n		author: \'Evil Eli\'\r\n	}\r\n};\r\nvar smf_featured = 2852;\r\nvar smf_random = 1096;\r\nvar smf_latestThemes = [2886, 2885, 2884];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById(\"smfLatestThemesWindow\").innerHTML;\r\n\r\n	// !!! Why not just always auto?\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"auto\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"),\r\n	\'\\\r\n		<h3 style=\"margin: 0; padding: 4px;\">\' + smf_themeInfo[id].name + \'</h3>\\\r\n		<h4 style=\"margin: 0;padding: 4px;\"><a href=\"https://custom.simplemachines.org/themes/index.php?lemma=\' + id + \'\">View Theme Now!</a></h4>\\\r\n		<div style=\"overflow: auto;\">\\\r\n			<img src=\"https://custom.simplemachines.org/themes/index.php?action=download;lemma=\'+id+\';image=thumb\" alt=\"\" style=\"float: right; margin: 10px;\" />\\\r\n			<div style=\"padding:8px;\">\' + smf_themeInfo[id].desc.replace(/<a href/g, \'<a href\') + \'</div>\\\r\n		</div>\\\r\n		<div style=\"padding: 4px;\" class=\"smalltext\"><a href=\"javascript:smf_themesBack();void(0);\">(go back)</a></div>\');\r\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById(\"smfLatestThemesWindow\").style.overflow = \"\";\r\n	setInnerHTML(document.getElementById(\"smfLatestThemesWindow\"), window.smfLatestThemes_temp);\r\n	window.scrollTo(0, findTop(document.getElementById(\"smfLatestThemesWindow\")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = \'\\\r\n	<div id=\"smfLatestThemesWindow\">\\\r\n		<div>\\\r\n			<img src=\"https://www.simplemachines.org/smf/images/themes.png\" width=\"102\" height=\"98\" style=\"float: right; margin: 0 0 10px 10px;\" alt=\"(package)\" />\\\r\n			<ul style=\"list-style: none; padding: 0; margin: 0 0 0 5px;\">\';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += \'\\\r\n				<li style=\"list-style: none;\"><a href=\"javascript:smf_themesMoreInfo(\' + id_theme + \');void(0);\">\' + smf_themeInfo[id_theme].name + \' by \' + smf_themeInfo[id_theme].author + \'</a></li>\';\r\n}\r\n\r\nwindow.smfLatestThemes += \'\\\r\n			</ul>\';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px; margin: 0;\">Featured Theme</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_featured+\');void(0);\">\'+smf_themeInfo[smf_featured].name + \' by \' + smf_themeInfo[smf_featured].author+\'</a>\\\r\n				</p>\';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += \'\\\r\n				<h4 style=\"padding: 4px 4px 0 4px;margin: 0;\">Theme of the Moment</h4>\\\r\n				<p style=\"padding: 0 4px; margin: 0;\">\\\r\n					<a href=\"javascript:smf_themesMoreInfo(\'+smf_random+\');void(0);\">\'+smf_themeInfo[smf_random].name + \' by \' + smf_themeInfo[smf_random].author+\'</a>\\\r\n				</p>\';\r\n}\r\nwindow.smfLatestThemes += \'\\\r\n		</div>\\\r\n	</div>\';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == \"undefined\")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? [\"tr\", \"tbody\", \"form\"] : []);\r\n	var coordsParent = el.parentNode ? \"parentNode\" : \"offsetParent\";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == \"undefined\")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');

-- --------------------------------------------------------

--
-- Structure de la table `smf_approval_queue`
--

CREATE TABLE `smf_approval_queue` (
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_attach` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_event` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_attachments`
--

CREATE TABLE `smf_attachments` (
  `id_attach` int(10) UNSIGNED NOT NULL,
  `id_thumb` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `downloads` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `width` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `height` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_ban_groups`
--

CREATE TABLE `smf_ban_groups` (
  `id_ban_group` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expire_time` int(10) UNSIGNED DEFAULT NULL,
  `cannot_access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_ban_items`
--

CREATE TABLE `smf_ban_items` (
  `id_ban` mediumint(8) UNSIGNED NOT NULL,
  `id_ban_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_boards`
--

CREATE TABLE `smf_boards` (
  `id_board` smallint(5) UNSIGNED NOT NULL,
  `id_cat` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `child_level` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `id_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_boards`
--

INSERT INTO `smf_boards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`) VALUES
(1, 1, 0, 0, 1, 1, 1, '-1,0,2', 1, 'General Discussion', 'Feel free to talk about anything and everything in this board.', 1, 1, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `smf_board_permissions`
--

CREATE TABLE `smf_board_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_board_permissions`
--

INSERT INTO `smf_board_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(-1, 1, 'poll_view', 1),
(0, 1, 'remove_own', 1),
(0, 1, 'lock_own', 1),
(0, 1, 'mark_any_notify', 1),
(0, 1, 'mark_notify', 1),
(0, 1, 'modify_own', 1),
(0, 1, 'poll_add_own', 1),
(0, 1, 'poll_edit_own', 1),
(0, 1, 'poll_lock_own', 1),
(0, 1, 'poll_post', 1),
(0, 1, 'poll_view', 1),
(0, 1, 'poll_vote', 1),
(0, 1, 'post_attachment', 1),
(0, 1, 'post_new', 1),
(0, 1, 'post_reply_any', 1),
(0, 1, 'post_reply_own', 1),
(0, 1, 'post_unapproved_topics', 1),
(0, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_replies_own', 1),
(0, 1, 'post_unapproved_attachments', 1),
(0, 1, 'delete_own', 1),
(0, 1, 'report_any', 1),
(0, 1, 'send_topic', 1),
(0, 1, 'view_attachments', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'send_topic', 1),
(2, 1, 'mark_any_notify', 1),
(2, 1, 'mark_notify', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'move_any', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'view_attachments', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'post_new', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'send_topic', 1),
(3, 1, 'mark_any_notify', 1),
(3, 1, 'mark_notify', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'move_any', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'post_attachment', 1),
(3, 1, 'view_attachments', 1),
(-1, 2, 'poll_view', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'mark_any_notify', 1),
(0, 2, 'mark_notify', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'send_topic', 1),
(0, 2, 'view_attachments', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'send_topic', 1),
(2, 2, 'mark_any_notify', 1),
(2, 2, 'mark_notify', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'move_any', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'view_attachments', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'send_topic', 1),
(3, 2, 'mark_any_notify', 1),
(3, 2, 'mark_notify', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'move_any', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'view_attachments', 1),
(-1, 3, 'poll_view', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'mark_any_notify', 1),
(0, 3, 'mark_notify', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'send_topic', 1),
(0, 3, 'view_attachments', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'send_topic', 1),
(2, 3, 'mark_any_notify', 1),
(2, 3, 'mark_notify', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'move_any', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'view_attachments', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'send_topic', 1),
(3, 3, 'mark_any_notify', 1),
(3, 3, 'mark_notify', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'move_any', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'view_attachments', 1),
(-1, 4, 'poll_view', 1),
(0, 4, 'mark_any_notify', 1),
(0, 4, 'mark_notify', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'send_topic', 1),
(0, 4, 'view_attachments', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'send_topic', 1),
(2, 4, 'mark_any_notify', 1),
(2, 4, 'mark_notify', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'move_any', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'view_attachments', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'send_topic', 1),
(3, 4, 'mark_any_notify', 1),
(3, 4, 'mark_notify', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'move_any', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'view_attachments', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_calendar`
--

CREATE TABLE `smf_calendar` (
  `id_event` smallint(5) UNSIGNED NOT NULL,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_calendar_holidays`
--

CREATE TABLE `smf_calendar_holidays` (
  `id_holiday` smallint(5) UNSIGNED NOT NULL,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_calendar_holidays`
--

INSERT INTO `smf_calendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '0004-01-01', 'New Year\'s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine\'s Day'),
(4, '0004-03-17', 'St. Patrick\'s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother\'s Day'),
(10, '2011-05-08', 'Mother\'s Day'),
(11, '2012-05-13', 'Mother\'s Day'),
(12, '2013-05-12', 'Mother\'s Day'),
(13, '2014-05-11', 'Mother\'s Day'),
(14, '2015-05-10', 'Mother\'s Day'),
(15, '2016-05-08', 'Mother\'s Day'),
(16, '2017-05-14', 'Mother\'s Day'),
(17, '2018-05-13', 'Mother\'s Day'),
(18, '2019-05-12', 'Mother\'s Day'),
(19, '2020-05-10', 'Mother\'s Day'),
(20, '2008-06-15', 'Father\'s Day'),
(21, '2009-06-21', 'Father\'s Day'),
(22, '2010-06-20', 'Father\'s Day'),
(23, '2011-06-19', 'Father\'s Day'),
(24, '2012-06-17', 'Father\'s Day'),
(25, '2013-06-16', 'Father\'s Day'),
(26, '2014-06-15', 'Father\'s Day'),
(27, '2015-06-21', 'Father\'s Day'),
(28, '2016-06-19', 'Father\'s Day'),
(29, '2017-06-18', 'Father\'s Day'),
(30, '2018-06-17', 'Father\'s Day'),
(31, '2019-06-16', 'Father\'s Day'),
(32, '2020-06-21', 'Father\'s Day'),
(33, '2010-06-21', 'Summer Solstice'),
(34, '2011-06-21', 'Summer Solstice'),
(35, '2012-06-20', 'Summer Solstice'),
(36, '2013-06-21', 'Summer Solstice'),
(37, '2014-06-21', 'Summer Solstice'),
(38, '2015-06-21', 'Summer Solstice'),
(39, '2016-06-20', 'Summer Solstice'),
(40, '2017-06-20', 'Summer Solstice'),
(41, '2018-06-21', 'Summer Solstice'),
(42, '2019-06-21', 'Summer Solstice'),
(43, '2020-06-20', 'Summer Solstice'),
(44, '2010-03-20', 'Vernal Equinox'),
(45, '2011-03-20', 'Vernal Equinox'),
(46, '2012-03-20', 'Vernal Equinox'),
(47, '2013-03-20', 'Vernal Equinox'),
(48, '2014-03-20', 'Vernal Equinox'),
(49, '2015-03-20', 'Vernal Equinox'),
(50, '2016-03-19', 'Vernal Equinox'),
(51, '2017-03-20', 'Vernal Equinox'),
(52, '2018-03-20', 'Vernal Equinox'),
(53, '2019-03-20', 'Vernal Equinox'),
(54, '2020-03-19', 'Vernal Equinox'),
(55, '2010-12-21', 'Winter Solstice'),
(56, '2011-12-22', 'Winter Solstice'),
(57, '2012-12-21', 'Winter Solstice'),
(58, '2013-12-21', 'Winter Solstice'),
(59, '2014-12-21', 'Winter Solstice'),
(60, '2015-12-21', 'Winter Solstice'),
(61, '2016-12-21', 'Winter Solstice'),
(62, '2017-12-21', 'Winter Solstice'),
(63, '2018-12-21', 'Winter Solstice'),
(64, '2019-12-21', 'Winter Solstice'),
(65, '2020-12-21', 'Winter Solstice'),
(66, '2010-09-22', 'Autumnal Equinox'),
(67, '2011-09-23', 'Autumnal Equinox'),
(68, '2012-09-22', 'Autumnal Equinox'),
(69, '2013-09-22', 'Autumnal Equinox'),
(70, '2014-09-22', 'Autumnal Equinox'),
(71, '2015-09-23', 'Autumnal Equinox'),
(72, '2016-09-22', 'Autumnal Equinox'),
(73, '2017-09-22', 'Autumnal Equinox'),
(74, '2018-09-22', 'Autumnal Equinox'),
(75, '2019-09-23', 'Autumnal Equinox'),
(76, '2020-09-22', 'Autumnal Equinox'),
(77, '0004-07-04', 'Independence Day'),
(78, '0004-05-05', 'Cinco de Mayo'),
(79, '0004-06-14', 'Flag Day'),
(80, '0004-11-11', 'Veterans Day'),
(81, '0004-02-02', 'Groundhog Day'),
(82, '2010-11-25', 'Thanksgiving'),
(83, '2011-11-24', 'Thanksgiving'),
(84, '2012-11-22', 'Thanksgiving'),
(85, '2013-11-28', 'Thanksgiving'),
(86, '2014-11-27', 'Thanksgiving'),
(87, '2015-11-26', 'Thanksgiving'),
(88, '2016-11-24', 'Thanksgiving'),
(89, '2017-11-23', 'Thanksgiving'),
(90, '2018-11-22', 'Thanksgiving'),
(91, '2019-11-28', 'Thanksgiving'),
(92, '2020-11-26', 'Thanksgiving'),
(93, '2010-05-31', 'Memorial Day'),
(94, '2011-05-30', 'Memorial Day'),
(95, '2012-05-28', 'Memorial Day'),
(96, '2013-05-27', 'Memorial Day'),
(97, '2014-05-26', 'Memorial Day'),
(98, '2015-05-25', 'Memorial Day'),
(99, '2016-05-30', 'Memorial Day'),
(100, '2017-05-29', 'Memorial Day'),
(101, '2018-05-28', 'Memorial Day'),
(102, '2019-05-27', 'Memorial Day'),
(103, '2020-05-25', 'Memorial Day'),
(104, '2010-09-06', 'Labor Day'),
(105, '2011-09-05', 'Labor Day'),
(106, '2012-09-03', 'Labor Day'),
(107, '2013-09-02', 'Labor Day'),
(108, '2014-09-01', 'Labor Day'),
(109, '2015-09-07', 'Labor Day'),
(110, '2016-09-05', 'Labor Day'),
(111, '2017-09-04', 'Labor Day'),
(112, '2018-09-03', 'Labor Day'),
(113, '2019-09-02', 'Labor Day'),
(114, '2020-09-07', 'Labor Day'),
(115, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Structure de la table `smf_categories`
--

CREATE TABLE `smf_categories` (
  `id_cat` tinyint(4) UNSIGNED NOT NULL,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_categories`
--

INSERT INTO `smf_categories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(1, 0, 'General Category', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_collapsed_categories`
--

CREATE TABLE `smf_collapsed_categories` (
  `id_cat` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_custom_fields`
--

CREATE TABLE `smf_custom_fields` (
  `id_field` smallint(5) NOT NULL,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_group_moderators`
--

CREATE TABLE `smf_group_moderators` (
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_actions`
--

CREATE TABLE `smf_log_actions` (
  `id_action` int(10) UNSIGNED NOT NULL,
  `id_log` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `extra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_activity`
--

CREATE TABLE `smf_log_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topics` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `posts` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `registers` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `most_on` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_activity`
--

INSERT INTO `smf_log_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2017-06-16', 0, 1, 1, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_banned`
--

CREATE TABLE `smf_log_banned` (
  `id_ban_log` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_boards`
--

CREATE TABLE `smf_log_boards` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_boards`
--

INSERT INTO `smf_log_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_comments`
--

CREATE TABLE `smf_log_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_digest`
--

CREATE TABLE `smf_log_digest` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL,
  `id_msg` int(10) UNSIGNED NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `exclude` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_errors`
--

CREATE TABLE `smf_log_errors` (
  `id_error` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_errors`
--

INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(1, 1497614727, 0, '192.168.121.85', '?action=register2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '6a51a15c84ec53230082ce42d5a1ea06', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(2, 1497614727, 0, '192.168.121.85', '?action=register2', 'Unable to send mail to the email address \'dj.mixesa@gmail.com\'', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(3, 1497614727, 0, '', '?action=register2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(4, 1497614727, 0, '', '?action=register2', 'Unable to send mail to the email address \'rcraft.gamers@gmail.com\'', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', '', 0),
(5, 1497614910, 3, '', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(6, 1497614910, 3, '', '?action=pm;sa=send2', 'Unable to send mail to the email address \'dj.mixesa@gmail.com\'', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', '', 0),
(7, 1497614998, 2, '192.168.121.85', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '6a51a15c84ec53230082ce42d5a1ea06', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(8, 1497614998, 2, '192.168.121.85', '?action=pm;sa=send2', 'Unable to send mail to the email address \'rcraft.gamers@gmail.com\'', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(9, 1497615041, 2, '192.168.121.85', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '6a51a15c84ec53230082ce42d5a1ea06', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(10, 1497615041, 2, '192.168.121.85', '?action=pm;sa=send2', 'Unable to send mail to the email address \'rcraft.gamers@gmail.com\'', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(11, 1497615076, 3, '', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(12, 1497615076, 3, '', '?action=pm;sa=send2', 'Unable to send mail to the email address \'dj.mixesa@gmail.com\'', '9e26137ee6f4da1421c85b643fdd1c4f', 'general', '', 0),
(13, 1497615232, 2, '192.168.121.85', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '6a51a15c84ec53230082ce42d5a1ea06', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(14, 1497615232, 2, '192.168.121.85', '?action=pm;sa=send2', 'Unable to send mail to the email address \'rcraft.gamers@gmail.com\'', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(15, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(16, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(17, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(18, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(19, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(20, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(21, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(22, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(23, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: months', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(24, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(25, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 92),
(26, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 162),
(27, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 174),
(28, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: aim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 178),
(29, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: date_registered', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 254),
(30, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 277),
(31, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: valid_email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 278),
(32, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: gender', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 306),
(33, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: allow_user_email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 312),
(34, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icq', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 322),
(35, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: location', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 431),
(36, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: username', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 439),
(37, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: msn', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 471),
(38, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: choose_pass', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 488),
(39, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: verify_pass', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 522),
(40, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: name', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 576),
(41, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: yim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile-Modify.php', 755),
(42, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 648),
(43, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: months', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(44, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(45, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(46, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(47, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(48, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(49, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(50, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(51, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(52, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(53, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(54, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(55, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(56, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(57, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(58, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(59, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(60, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(61, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(62, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(63, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(64, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(65, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(66, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(67, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(68, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(69, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(70, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(71, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(72, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(73, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(74, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(75, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(76, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(77, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(78, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(79, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(80, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(81, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(82, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(83, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(84, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(85, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(86, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(87, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(88, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(89, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(90, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(91, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(92, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(93, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(94, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(95, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(96, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(97, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(98, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(99, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 119),
(100, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 120),
(101, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 148),
(102, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 198),
(103, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 253),
(104, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 270),
(105, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (edit_options sub template - eval?)', 1145),
(106, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(107, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 341),
(108, 1497615341, 2, '192.168.121.85', '?action=profile;area=account;u=2', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 342),
(109, 1497615352, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(110, 1497615352, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(111, 1497615352, 3, '', '?', '8: Undefined index: forum_index', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/BoardIndex.php', 115),
(112, 1497615352, 3, '', '?', '8: Undefined index: months', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(113, 1497615352, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(114, 1497615352, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(115, 1497615352, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(116, 1497615352, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(117, 1497615352, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(118, 1497615352, 3, '', '?', '8: Undefined index: quote', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(119, 1497615352, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(120, 1497615352, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(121, 1497615352, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(122, 1497615352, 3, '', '?', '8: Undefined index: search_on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(123, 1497615352, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(124, 1497615352, 3, '', '?', '8: Undefined index: icon_cheesy', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(125, 1497615352, 3, '', '?', '8: Undefined index: icon_rolleyes', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(126, 1497615352, 3, '', '?', '8: Undefined index: icon_angry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(127, 1497615352, 3, '', '?', '8: Undefined index: icon_smiley', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(128, 1497615352, 3, '', '?', '8: Undefined index: icon_wink', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(129, 1497615352, 3, '', '?', '8: Undefined index: icon_grin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(130, 1497615352, 3, '', '?', '8: Undefined index: icon_sad', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(131, 1497615352, 3, '', '?', '8: Undefined index: icon_shocked', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(132, 1497615352, 3, '', '?', '8: Undefined index: icon_cool', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(133, 1497615352, 3, '', '?', '8: Undefined index: icon_tongue', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(134, 1497615352, 3, '', '?', '8: Undefined index: icon_huh', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(135, 1497615352, 3, '', '?', '8: Undefined index: icon_embarrassed', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(136, 1497615352, 3, '', '?', '8: Undefined index: icon_lips', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(137, 1497615352, 3, '', '?', '8: Undefined index: icon_kiss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(138, 1497615352, 3, '', '?', '8: Undefined index: icon_cry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(139, 1497615352, 3, '', '?', '8: Undefined index: icon_undecided', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(140, 1497615352, 3, '', '?', '8: Undefined index: home', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(141, 1497615352, 3, '', '?', '8: Undefined index: help', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(142, 1497615352, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(143, 1497615352, 3, '', '?', '8: Undefined index: admin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(144, 1497615352, 3, '', '?', '8: Undefined index: modSettings_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(145, 1497615352, 3, '', '?', '8: Undefined index: package', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(146, 1497615352, 3, '', '?', '8: Undefined index: errlog', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(147, 1497615352, 3, '', '?', '8: Undefined index: edit_permissions', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(148, 1497615352, 3, '', '?', '8: Undefined index: moderate', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(149, 1497615352, 3, '', '?', '8: Undefined index: modlog_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(150, 1497615352, 3, '', '?', '8: Undefined index: mc_unapproved_poststopics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(151, 1497615352, 3, '', '?', '8: Undefined index: mc_unapproved_attachments', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(152, 1497615352, 3, '', '?', '8: Undefined index: mc_reported_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(153, 1497615352, 3, '', '?', '8: Undefined index: profile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(154, 1497615352, 3, '', '?', '8: Undefined index: summary', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(155, 1497615352, 3, '', '?', '8: Undefined index: account', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(156, 1497615352, 3, '', '?', '8: Undefined index: forumprofile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(157, 1497615352, 3, '', '?', '8: Undefined index: pm_short', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(158, 1497615352, 3, '', '?', '8: Undefined index: pm_menu_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(159, 1497615352, 3, '', '?', '8: Undefined index: pm_menu_send', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(160, 1497615352, 3, '', '?', '8: Undefined index: calendar', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(161, 1497615352, 3, '', '?', '8: Undefined index: calendar_menu', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(162, 1497615352, 3, '', '?', '8: Undefined index: calendar_post_event', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(163, 1497615352, 3, '', '?', '8: Undefined index: members_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(164, 1497615352, 3, '', '?', '8: Undefined index: mlist_menu_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(165, 1497615352, 3, '', '?', '8: Undefined index: login', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(166, 1497615352, 3, '', '?', '8: Undefined index: register', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(167, 1497615352, 3, '', '?', '8: Undefined index: logout', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(168, 1497615352, 3, '', '?', '8: Undefined index: ajax_in_progress', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 119),
(169, 1497615352, 3, '', '?', '8: Undefined index: modify_cancel', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 120),
(170, 1497615352, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 148),
(171, 1497615352, 3, '', '?', '8: Undefined index: hello_member_ndt', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 198),
(172, 1497615352, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 253),
(173, 1497615352, 3, '', '?', '8: Undefined index: news', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 270),
(174, 1497615352, 3, '', '?', '8: Undefined index: view_unread_category', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 114),
(175, 1497615352, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 152),
(176, 1497615352, 3, '', '?', '8: Undefined index: posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 178),
(177, 1497615352, 3, '', '?', '8: Undefined index: board_topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 179),
(178, 1497615352, 3, '', '?', '8: Undefined index: last_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(179, 1497615352, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(180, 1497615352, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 191),
(181, 1497615352, 3, '', '?', '8: Undefined index: on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 192),
(182, 1497615352, 3, '', '?', '8: Undefined index: new_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 251),
(183, 1497615352, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 252),
(184, 1497615352, 3, '', '?', '8: Undefined index: redirect_board', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 253),
(185, 1497615352, 3, '', '?', '8: Undefined index: mark_as_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 487),
(186, 1497615352, 3, '', '?', '8: Undefined index: info_center_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 286),
(187, 1497615352, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 391),
(188, 1497615352, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 392),
(189, 1497615352, 3, '', '?', '8: Undefined index: posts_made', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(190, 1497615352, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(191, 1497615352, 3, '', '?', '8: Undefined index: topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(192, 1497615352, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(193, 1497615352, 3, '', '?', '8: Undefined index: members', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(194, 1497615352, 3, '', '?', '8: Undefined index: latest_member', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(195, 1497615352, 3, '', '?', '8: Undefined index: latest_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 398),
(196, 1497615352, 3, '', '?', '8: Undefined index: recent_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 399),
(197, 1497615352, 3, '', '?', '8: Undefined index: more_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 400),
(198, 1497615352, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 409),
(199, 1497615352, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 410),
(200, 1497615352, 3, '', '?', '8: Undefined index: users_active', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 437),
(201, 1497615352, 3, '', '?', '8: Undefined index: most_online_today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 448),
(202, 1497615352, 3, '', '?', '8: Undefined index: most_online_ever', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 449),
(203, 1497615352, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(204, 1497615352, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(205, 1497615352, 3, '', '?', '8: Undefined index: xhtml', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(206, 1497615352, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 341),
(207, 1497615352, 3, '', '?', '8: Undefined index: wap2', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 342),
(208, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(209, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(210, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(211, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(212, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(213, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(214, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(215, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(216, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: months', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(217, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(218, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 92),
(219, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 162),
(220, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 174),
(221, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: months', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(222, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(223, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086);
INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(224, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(225, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(226, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(227, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(228, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(229, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(230, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(231, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(232, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(233, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(234, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(235, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(236, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(237, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(238, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(239, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(240, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(241, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(242, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(243, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(244, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(245, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(246, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(247, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(248, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(249, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(250, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(251, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(252, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(253, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(254, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(255, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(256, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(257, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(258, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(259, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(260, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(261, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(262, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(263, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(264, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(265, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(266, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(267, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(268, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(269, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(270, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(271, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(272, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(273, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(274, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(275, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(276, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(277, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 119),
(278, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 120),
(279, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 148),
(280, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 198),
(281, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 253),
(282, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 270),
(283, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(284, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 341),
(285, 1497615354, 2, '192.168.121.85', '?action=profile;area=statistics;u=2', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 342),
(286, 1497615355, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(287, 1497615355, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(288, 1497615355, 3, '', '?', '8: Undefined index: forum_index', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/BoardIndex.php', 115),
(289, 1497615355, 3, '', '?', '8: Undefined index: months', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 813),
(290, 1497615355, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(291, 1497615355, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(292, 1497615355, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(293, 1497615355, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(294, 1497615355, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(295, 1497615355, 3, '', '?', '8: Undefined index: quote', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(296, 1497615355, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(297, 1497615355, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(298, 1497615355, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(299, 1497615355, 3, '', '?', '8: Undefined index: search_on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(300, 1497615355, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(301, 1497615355, 3, '', '?', '8: Undefined index: icon_cheesy', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(302, 1497615355, 3, '', '?', '8: Undefined index: icon_rolleyes', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(303, 1497615355, 3, '', '?', '8: Undefined index: icon_angry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(304, 1497615355, 3, '', '?', '8: Undefined index: icon_smiley', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(305, 1497615355, 3, '', '?', '8: Undefined index: icon_wink', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(306, 1497615355, 3, '', '?', '8: Undefined index: icon_grin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(307, 1497615355, 3, '', '?', '8: Undefined index: icon_sad', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(308, 1497615355, 3, '', '?', '8: Undefined index: icon_shocked', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(309, 1497615355, 3, '', '?', '8: Undefined index: icon_cool', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(310, 1497615355, 3, '', '?', '8: Undefined index: icon_tongue', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(311, 1497615355, 3, '', '?', '8: Undefined index: icon_huh', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(312, 1497615355, 3, '', '?', '8: Undefined index: icon_embarrassed', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(313, 1497615355, 3, '', '?', '8: Undefined index: icon_lips', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(314, 1497615355, 3, '', '?', '8: Undefined index: icon_kiss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(315, 1497615355, 3, '', '?', '8: Undefined index: icon_cry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(316, 1497615355, 3, '', '?', '8: Undefined index: icon_undecided', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(317, 1497615355, 3, '', '?', '8: Undefined index: home', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(318, 1497615355, 3, '', '?', '8: Undefined index: help', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(319, 1497615355, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(320, 1497615355, 3, '', '?', '8: Undefined index: admin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(321, 1497615355, 3, '', '?', '8: Undefined index: modSettings_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(322, 1497615355, 3, '', '?', '8: Undefined index: package', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(323, 1497615355, 3, '', '?', '8: Undefined index: errlog', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(324, 1497615355, 3, '', '?', '8: Undefined index: edit_permissions', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(325, 1497615355, 3, '', '?', '8: Undefined index: moderate', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(326, 1497615355, 3, '', '?', '8: Undefined index: modlog_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(327, 1497615355, 3, '', '?', '8: Undefined index: mc_unapproved_poststopics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(328, 1497615355, 3, '', '?', '8: Undefined index: mc_unapproved_attachments', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(329, 1497615355, 3, '', '?', '8: Undefined index: mc_reported_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(330, 1497615355, 3, '', '?', '8: Undefined index: profile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(331, 1497615355, 3, '', '?', '8: Undefined index: summary', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(332, 1497615355, 3, '', '?', '8: Undefined index: account', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(333, 1497615355, 3, '', '?', '8: Undefined index: forumprofile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(334, 1497615355, 3, '', '?', '8: Undefined index: pm_short', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(335, 1497615355, 3, '', '?', '8: Undefined index: pm_menu_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(336, 1497615355, 3, '', '?', '8: Undefined index: pm_menu_send', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(337, 1497615355, 3, '', '?', '8: Undefined index: calendar', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(338, 1497615355, 3, '', '?', '8: Undefined index: calendar_menu', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(339, 1497615355, 3, '', '?', '8: Undefined index: calendar_post_event', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(340, 1497615355, 3, '', '?', '8: Undefined index: members_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(341, 1497615355, 3, '', '?', '8: Undefined index: mlist_menu_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(342, 1497615355, 3, '', '?', '8: Undefined index: login', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(343, 1497615355, 3, '', '?', '8: Undefined index: register', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(344, 1497615355, 3, '', '?', '8: Undefined index: logout', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(345, 1497615355, 3, '', '?', '8: Undefined index: ajax_in_progress', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 119),
(346, 1497615355, 3, '', '?', '8: Undefined index: modify_cancel', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 120),
(347, 1497615355, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 148),
(348, 1497615355, 3, '', '?', '8: Undefined index: hello_member_ndt', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 198),
(349, 1497615355, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 253),
(350, 1497615355, 3, '', '?', '8: Undefined index: news', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 270),
(351, 1497615355, 3, '', '?', '8: Undefined index: view_unread_category', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 114),
(352, 1497615355, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 152),
(353, 1497615355, 3, '', '?', '8: Undefined index: posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 178),
(354, 1497615355, 3, '', '?', '8: Undefined index: board_topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 179),
(355, 1497615355, 3, '', '?', '8: Undefined index: last_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(356, 1497615355, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(357, 1497615355, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 191),
(358, 1497615355, 3, '', '?', '8: Undefined index: on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 192),
(359, 1497615355, 3, '', '?', '8: Undefined index: new_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 251),
(360, 1497615355, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 252),
(361, 1497615355, 3, '', '?', '8: Undefined index: redirect_board', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 253),
(362, 1497615355, 3, '', '?', '8: Undefined index: mark_as_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 487),
(363, 1497615355, 3, '', '?', '8: Undefined index: info_center_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 286),
(364, 1497615355, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 391),
(365, 1497615355, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 392),
(366, 1497615355, 3, '', '?', '8: Undefined index: posts_made', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(367, 1497615355, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(368, 1497615355, 3, '', '?', '8: Undefined index: topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(369, 1497615355, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(370, 1497615355, 3, '', '?', '8: Undefined index: members', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(371, 1497615355, 3, '', '?', '8: Undefined index: latest_member', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(372, 1497615355, 3, '', '?', '8: Undefined index: latest_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 398),
(373, 1497615355, 3, '', '?', '8: Undefined index: recent_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 399),
(374, 1497615355, 3, '', '?', '8: Undefined index: more_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 400),
(375, 1497615355, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 409),
(376, 1497615355, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 410),
(377, 1497615355, 3, '', '?', '8: Undefined index: users_active', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 437),
(378, 1497615355, 3, '', '?', '8: Undefined index: most_online_today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 448),
(379, 1497615355, 3, '', '?', '8: Undefined index: most_online_ever', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 449),
(380, 1497615355, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(381, 1497615355, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 816),
(382, 1497615355, 3, '', '?', '8: Undefined index: xhtml', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(383, 1497615355, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 341),
(384, 1497615355, 3, '', '?', '8: Undefined index: wap2', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 342),
(385, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(386, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(387, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(388, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(389, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(390, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(391, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(392, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(393, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(394, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(395, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(396, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(397, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 92),
(398, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 162),
(399, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 174),
(400, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 648),
(401, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(402, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(403, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(404, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(405, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(406, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(407, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(408, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(409, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(410, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(411, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(412, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(413, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(414, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(415, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(416, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(417, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(418, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(419, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(420, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(421, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(422, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(423, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(424, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(425, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(426, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(427, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(428, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(429, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(430, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(431, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(432, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(433, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(434, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(435, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(436, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(437, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(438, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(439, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(440, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(441, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(442, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(443, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(444, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(445, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025);
INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(446, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(447, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(448, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(449, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(450, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(451, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(452, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(453, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(454, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(455, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(456, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(457, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(458, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 119),
(459, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 120),
(460, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 148),
(461, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 183),
(462, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 198),
(463, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: unread_since_visit', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 199),
(464, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: show_unread_replies', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 200),
(465, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 253),
(466, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 270),
(467, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 291),
(468, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 293),
(469, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: name', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 497),
(470, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: status', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 498),
(471, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 499),
(472, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icq', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 500),
(473, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: aim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 501),
(474, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: yim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 502),
(475, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: msn', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 503),
(476, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: who_member', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 547),
(477, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: autosuggest_delete_item', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 564),
(478, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: valid_xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(479, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(480, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 341),
(481, 1497615364, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 342),
(482, 1497615368, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(483, 1497615368, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(484, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(485, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(486, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(487, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(488, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(489, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(490, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(491, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(492, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(493, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(494, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(495, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(496, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(497, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(498, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(499, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(500, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(501, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(502, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(503, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(504, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(505, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(506, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(507, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(508, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(509, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(510, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(511, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(512, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(513, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(514, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(515, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(516, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(517, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(518, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(519, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(520, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(521, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(522, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(523, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(524, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(525, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(526, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(527, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(528, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(529, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(530, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(531, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(532, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(533, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(534, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(535, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(536, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(537, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(538, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(539, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(540, 1497615369, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rac;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615369104', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(541, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(542, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(543, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(544, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(545, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(546, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(547, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(548, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(549, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(550, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(551, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(552, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(553, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(554, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(555, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(556, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(557, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(558, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(559, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(560, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(561, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(562, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(563, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(564, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(565, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(566, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(567, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(568, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(569, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(570, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(571, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(572, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(573, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(574, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(575, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(576, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(577, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(578, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(579, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(580, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(581, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(582, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(583, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(584, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(585, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(586, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(587, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(588, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(589, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(590, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(591, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(592, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(593, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(594, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(595, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(596, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(597, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(598, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(599, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(600, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(601, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(602, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(603, 1497615370, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcr;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370601', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(604, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(605, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(606, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(607, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(608, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(609, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(610, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(611, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419);
INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(612, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(613, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(614, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(615, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(616, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(617, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(618, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(619, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(620, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(621, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(622, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(623, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(624, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(625, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(626, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(627, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(628, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(629, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(630, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(631, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(632, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(633, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(634, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(635, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(636, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(637, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(638, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(639, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(640, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(641, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(642, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(643, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(644, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(645, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(646, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(647, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(648, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(649, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(650, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(651, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(652, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(653, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(654, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(655, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(656, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(657, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(658, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(659, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(660, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcraft;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370919', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(661, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(662, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(663, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(664, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(665, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(666, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(667, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(668, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(669, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(670, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(671, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(672, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(673, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(674, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(675, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(676, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(677, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(678, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(679, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(680, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(681, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(682, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(683, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(684, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(685, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(686, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(687, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(688, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(689, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(690, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(691, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(692, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(693, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(694, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(695, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(696, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(697, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(698, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(699, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(700, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(701, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(702, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(703, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(704, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(705, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(706, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(707, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(708, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(709, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(710, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(711, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(712, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(713, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(714, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(715, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(716, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(717, 1497615371, 2, '192.168.121.85', '?action=suggest;suggest_type=member;search=Rcra;ef6d11e=6a51a15c84ec53230082ce42d5a1ea06;xml;time=1497615370776', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(718, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(719, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(720, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(721, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(722, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(723, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(724, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(725, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(726, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(727, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(728, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(729, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(730, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 92),
(731, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 162),
(732, 1497615374, 2, '192.168.121.85', '?action=profile;u=2;area=lists;sa=buddies', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 174),
(733, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(734, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(735, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(736, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(737, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(738, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(739, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(740, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(741, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(742, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(743, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(744, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(745, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 92),
(746, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 162),
(747, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 174),
(748, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: male', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1152),
(749, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile_of', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1184),
(750, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(751, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(752, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(753, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(754, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(755, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(756, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1245),
(757, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1247),
(758, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: online', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1249),
(759, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(760, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(761, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Profile.php', 648),
(762, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(763, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(764, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(765, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(766, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(767, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(768, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(769, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(770, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(771, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(772, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(773, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(774, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(775, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(776, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(777, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(778, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(779, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(780, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(781, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(782, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(783, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(784, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(785, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(786, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(787, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(788, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478);
INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(789, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(790, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(791, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(792, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(793, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(794, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(795, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(796, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(797, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(798, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(799, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(800, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(801, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(802, 1497615374, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(803, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(804, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(805, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(806, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(807, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(808, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(809, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(810, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(811, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(812, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(813, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(814, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(815, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(816, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(817, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(818, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(819, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 119),
(820, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 120),
(821, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (html_above sub template - eval?)', 148),
(822, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 183),
(823, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 198),
(824, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: unread_since_visit', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 199),
(825, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: show_unread_replies', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 200),
(826, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 253),
(827, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 270),
(828, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 291),
(829, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 293),
(830, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: name', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 497),
(831, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: status', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 498),
(832, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 499),
(833, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: icq', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 500),
(834, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: aim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 501),
(835, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: yim', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 502),
(836, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: msn', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 503),
(837, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: who_member', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 547),
(838, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: autosuggest_delete_item', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (editBuddies sub template - eval?)', 564),
(839, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: valid_xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(840, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 340),
(841, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 341),
(842, 1497615375, 2, '192.168.121.85', '?action=profile;area=lists;sa=buddies;u=2', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericMenu.template.php (body_below sub template - eval?)', 342),
(843, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: personal_messages', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/PersonalMessage.php', 255),
(844, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: no_subject', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/PersonalMessage.php', 1802),
(845, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: prompt_text_email', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1442),
(846, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: prompt_text_ftp', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1443),
(847, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: prompt_text_url', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1444),
(848, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: prompt_text_img', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1445),
(849, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1733),
(850, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1738),
(851, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1743),
(852, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1748),
(853, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1753),
(854, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1758),
(855, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1763),
(856, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1768),
(857, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1773),
(858, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1778),
(859, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1783),
(860, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1788),
(861, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1793),
(862, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1798),
(863, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1803),
(864, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Editor.php', 1808),
(865, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(866, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(867, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(868, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(869, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(870, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(871, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(872, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(873, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(874, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(875, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(876, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(877, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(878, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(879, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(880, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(881, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(882, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(883, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(884, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(885, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(886, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(887, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(888, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(889, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(890, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(891, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(892, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(893, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(894, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(895, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(896, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(897, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(898, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(899, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(900, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(901, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(902, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(903, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(904, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(905, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(906, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(907, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(908, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(909, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(910, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(911, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(912, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(913, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(914, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(915, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(916, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(917, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(918, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(919, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(920, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(921, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(922, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (html_above sub template - eval?)', 119),
(923, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (html_above sub template - eval?)', 120),
(924, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (html_above sub template - eval?)', 148),
(925, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 183),
(926, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 198),
(927, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: unread_since_visit', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 199),
(928, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: show_unread_replies', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 200),
(929, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 253),
(930, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 270),
(931, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 291),
(932, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 293),
(933, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: subject', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 1007),
(934, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: lang_rtl', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 242),
(935, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: visual_verification_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 309),
(936, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: visual_verification_sound', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 325),
(937, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: visual_verification_request_new', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 325),
(938, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: visual_verification_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 326),
(939, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: preview', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 268),
(940, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: autosuggest_delete_item', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (send sub template - eval?)', 1089),
(941, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: valid_xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_below sub template - eval?)', 340),
(942, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_below sub template - eval?)', 340),
(943, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_below sub template - eval?)', 341),
(944, 1497615378, 2, '192.168.121.85', '?action=pm;sa=send;u=3', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/GenericControls.template.php (body_below sub template - eval?)', 342),
(945, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(946, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(947, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '8: Undefined index: theme_language_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Load.php', 1999),
(948, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0),
(949, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '8: Undefined index: theme_template_error', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Errors.php', 187),
(950, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(951, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', '8: Undefined index: error_occured', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Errors.php', 294),
(952, 1497615391, 2, '192.168.121.85', '?action=profile;area=pmprefs;u=2', 'Unable to load Themes/default/Errors.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(953, 1497615396, 2, '192.168.121.85', '?action=profile;area=theme;u=2', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(954, 1497615405, 2, '192.168.121.85', '?', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(955, 1497615417, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(956, 1497615418, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(957, 1497615434, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(958, 1497615435, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(959, 1497615447, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(960, 1497615458, 3, '', '?', 'Unable to load Themes/default/index.template.php!', '9e26137ee6f4da1421c85b643fdd1c4f', 'template', '', 0),
(961, 1497615463, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(962, 1497615479, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(963, 1497615479, 3, '', '?', '8: Undefined index: lang_locale', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(964, 1497615479, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(965, 1497615479, 3, '', '?', '8: Undefined index: forum_index', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/BoardIndex.php', 115),
(966, 1497615479, 3, '', '?', '8: Undefined index: lang_locale', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(967, 1497615479, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(968, 1497615479, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(969, 1497615479, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(970, 1497615479, 3, '', '?', '8: Undefined index: code', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(971, 1497615479, 3, '', '?', '8: Undefined index: code_select', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(972, 1497615479, 3, '', '?', '8: Undefined index: quote', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(973, 1497615479, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(974, 1497615479, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(975, 1497615479, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(976, 1497615479, 3, '', '?', '8: Undefined index: search_on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(977, 1497615479, 3, '', '?', '8: Undefined index: quote_from', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(978, 1497615479, 3, '', '?', '8: Undefined index: icon_cheesy', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(979, 1497615479, 3, '', '?', '8: Undefined index: icon_rolleyes', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(980, 1497615479, 3, '', '?', '8: Undefined index: icon_angry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(981, 1497615479, 3, '', '?', '8: Undefined index: icon_smiley', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(982, 1497615479, 3, '', '?', '8: Undefined index: icon_wink', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(983, 1497615479, 3, '', '?', '8: Undefined index: icon_grin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(984, 1497615479, 3, '', '?', '8: Undefined index: icon_sad', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(985, 1497615479, 3, '', '?', '8: Undefined index: icon_shocked', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(986, 1497615479, 3, '', '?', '8: Undefined index: icon_cool', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(987, 1497615479, 3, '', '?', '8: Undefined index: icon_tongue', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(988, 1497615479, 3, '', '?', '8: Undefined index: icon_huh', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(989, 1497615479, 3, '', '?', '8: Undefined index: icon_embarrassed', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(990, 1497615479, 3, '', '?', '8: Undefined index: icon_lips', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(991, 1497615479, 3, '', '?', '8: Undefined index: icon_kiss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(992, 1497615479, 3, '', '?', '8: Undefined index: icon_cry', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(993, 1497615479, 3, '', '?', '8: Undefined index: icon_undecided', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(994, 1497615479, 3, '', '?', '8: Undefined index: home', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(995, 1497615479, 3, '', '?', '8: Undefined index: help', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(996, 1497615479, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(997, 1497615479, 3, '', '?', '8: Undefined index: admin', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(998, 1497615479, 3, '', '?', '8: Undefined index: modSettings_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(999, 1497615479, 3, '', '?', '8: Undefined index: package', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(1000, 1497615479, 3, '', '?', '8: Undefined index: errlog', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(1001, 1497615479, 3, '', '?', '8: Undefined index: edit_permissions', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(1002, 1497615479, 3, '', '?', '8: Undefined index: moderate', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(1003, 1497615479, 3, '', '?', '8: Undefined index: modlog_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(1004, 1497615479, 3, '', '?', '8: Undefined index: mc_unapproved_poststopics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(1005, 1497615479, 3, '', '?', '8: Undefined index: mc_unapproved_attachments', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(1006, 1497615479, 3, '', '?', '8: Undefined index: mc_reported_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(1007, 1497615479, 3, '', '?', '8: Undefined index: profile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010);
INSERT INTO `smf_log_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(1008, 1497615479, 3, '', '?', '8: Undefined index: summary', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(1009, 1497615479, 3, '', '?', '8: Undefined index: account', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(1010, 1497615479, 3, '', '?', '8: Undefined index: forumprofile', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(1011, 1497615479, 3, '', '?', '8: Undefined index: pm_short', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(1012, 1497615479, 3, '', '?', '8: Undefined index: pm_menu_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(1013, 1497615479, 3, '', '?', '8: Undefined index: pm_menu_send', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(1014, 1497615479, 3, '', '?', '8: Undefined index: calendar', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(1015, 1497615479, 3, '', '?', '8: Undefined index: calendar_menu', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(1016, 1497615479, 3, '', '?', '8: Undefined index: calendar_post_event', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(1017, 1497615479, 3, '', '?', '8: Undefined index: members_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(1018, 1497615479, 3, '', '?', '8: Undefined index: mlist_menu_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(1019, 1497615479, 3, '', '?', '8: Undefined index: mlist_search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(1020, 1497615479, 3, '', '?', '8: Undefined index: login', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(1021, 1497615479, 3, '', '?', '8: Undefined index: register', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(1022, 1497615479, 3, '', '?', '8: Undefined index: logout', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(1023, 1497615479, 3, '', '?', '8: Undefined index: ajax_in_progress', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 119),
(1024, 1497615479, 3, '', '?', '8: Undefined index: modify_cancel', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 120),
(1025, 1497615479, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 148),
(1026, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 183),
(1027, 1497615479, 3, '', '?', '8: Undefined index: hello_member_ndt', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 198),
(1028, 1497615479, 3, '', '?', '8: Undefined index: unread_since_visit', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 199),
(1029, 1497615479, 3, '', '?', '8: Undefined index: show_unread_replies', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 200),
(1030, 1497615479, 3, '', '?', '8: Undefined index: search', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 253),
(1031, 1497615479, 3, '', '?', '8: Undefined index: news', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 270),
(1032, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 291),
(1033, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 293),
(1034, 1497615479, 3, '', '?', '8: Undefined index: view_unread_category', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 114),
(1035, 1497615479, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 152),
(1036, 1497615479, 3, '', '?', '8: Undefined index: posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 178),
(1037, 1497615479, 3, '', '?', '8: Undefined index: board_topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 179),
(1038, 1497615479, 3, '', '?', '8: Undefined index: last_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(1039, 1497615479, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(1040, 1497615479, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 191),
(1041, 1497615479, 3, '', '?', '8: Undefined index: on', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 192),
(1042, 1497615479, 3, '', '?', '8: Undefined index: new_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 251),
(1043, 1497615479, 3, '', '?', '8: Undefined index: old_posts', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 252),
(1044, 1497615479, 3, '', '?', '8: Undefined index: redirect_board', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 253),
(1045, 1497615479, 3, '', '?', '8: Undefined index: mark_as_read', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 487),
(1046, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 285),
(1047, 1497615479, 3, '', '?', '8: Undefined index: info_center_title', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 286),
(1048, 1497615479, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 391),
(1049, 1497615479, 3, '', '?', '8: Undefined index: forum_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 392),
(1050, 1497615479, 3, '', '?', '8: Undefined index: posts_made', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1051, 1497615479, 3, '', '?', '8: Undefined index: in', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1052, 1497615479, 3, '', '?', '8: Undefined index: topics', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1053, 1497615479, 3, '', '?', '8: Undefined index: by', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1054, 1497615479, 3, '', '?', '8: Undefined index: members', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1055, 1497615479, 3, '', '?', '8: Undefined index: latest_member', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1056, 1497615479, 3, '', '?', '8: Undefined index: latest_post', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 398),
(1057, 1497615479, 3, '', '?', '8: Undefined index: recent_view', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 399),
(1058, 1497615479, 3, '', '?', '8: Undefined index: more_stats', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 400),
(1059, 1497615479, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 409),
(1060, 1497615479, 3, '', '?', '8: Undefined index: online_users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 410),
(1061, 1497615479, 3, '', '?', '8: Undefined index: guests', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 415),
(1062, 1497615479, 3, '', '?', '8: Undefined index: users', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 415),
(1063, 1497615479, 3, '', '?', '8: Undefined index: users_active', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 437),
(1064, 1497615479, 3, '', '?', '8: Undefined index: most_online_today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 448),
(1065, 1497615479, 3, '', '?', '8: Undefined index: most_online_ever', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 449),
(1066, 1497615479, 3, '', '?', '8: Undefined index: today', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(1067, 1497615479, 3, '', '?', '8: Undefined index: lang_locale', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(1068, 1497615479, 3, '', '?', '8: Undefined index: time_pm', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(1069, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 490),
(1070, 1497615479, 3, '', '?', '8: Undefined index: upshrink_description', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 492),
(1071, 1497615479, 3, '', '?', '8: Undefined index: valid_xhtml', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(1072, 1497615479, 3, '', '?', '8: Undefined index: xhtml', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(1073, 1497615479, 3, '', '?', '8: Undefined index: rss', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 341),
(1074, 1497615479, 3, '', '?', '8: Undefined index: wap2', '9e26137ee6f4da1421c85b643fdd1c4f', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 342),
(1075, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(1076, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(1077, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(1078, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: forum_index', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/BoardIndex.php', 115),
(1079, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(1080, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(1081, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(1082, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1086),
(1083, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: code', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(1084, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: code_select', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1128),
(1085, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: quote', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1410),
(1086, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1419),
(1087, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1426),
(1088, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(1089, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: search_on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1440),
(1090, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: quote_from', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 1449),
(1091, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_cheesy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1092, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_rolleyes', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1093, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_angry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1094, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_smiley', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1095, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_wink', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1096, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_grin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1097, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_sad', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1098, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_shocked', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1099, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_cool', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1100, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_tongue', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1101, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_huh', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1102, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_embarrassed', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1103, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_lips', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1104, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_kiss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1105, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_cry', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1106, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: icon_undecided', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 2478),
(1107, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: home', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3932),
(1108, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: help', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3940),
(1109, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3947),
(1110, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: admin', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3954),
(1111, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: modSettings_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3959),
(1112, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: package', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3964),
(1113, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: errlog', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3969),
(1114, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: edit_permissions', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3974),
(1115, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: moderate', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3982),
(1116, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: modlog_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3987),
(1117, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mc_unapproved_poststopics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3992),
(1118, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mc_unapproved_attachments', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 3997),
(1119, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mc_reported_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4002),
(1120, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: profile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4010),
(1121, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: summary', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4015),
(1122, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: account', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4020),
(1123, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: forumprofile', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4025),
(1124, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: pm_short', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4033),
(1125, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: pm_menu_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4038),
(1126, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: pm_menu_send', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4043),
(1127, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: calendar', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4051),
(1128, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: calendar_menu', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4056),
(1129, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: calendar_post_event', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4061),
(1130, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: members_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4069),
(1131, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mlist_menu_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4074),
(1132, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mlist_search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4079),
(1133, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: login', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4087),
(1134, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: register', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4094),
(1135, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: logout', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 4102),
(1136, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: ajax_in_progress', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 119),
(1137, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: modify_cancel', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 120),
(1138, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (html_above sub template - eval?)', 148),
(1139, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 183),
(1140, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: hello_member_ndt', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 198),
(1141, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: unread_since_visit', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 199),
(1142, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: show_unread_replies', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 200),
(1143, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: search', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 253),
(1144, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: news', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 270),
(1145, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 291),
(1146, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 293),
(1147, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: view_unread_category', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 114),
(1148, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: new_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 144),
(1149, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 178),
(1150, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: board_topics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 179),
(1151, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: last_post', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(1152, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: by', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 190),
(1153, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: in', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 191),
(1154, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: on', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 192),
(1155, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: new_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 251),
(1156, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: old_posts', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 252),
(1157, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: redirect_board', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 253),
(1158, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: mark_as_read', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 487),
(1159, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 285),
(1160, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: info_center_title', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 286),
(1161, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: forum_stats', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 391),
(1162, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: forum_stats', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 392),
(1163, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: posts_made', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1164, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: in', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1165, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: topics', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1166, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: by', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1167, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: members', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1168, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: latest_member', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 397),
(1169, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: latest_post', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 398),
(1170, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: recent_view', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 399),
(1171, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: more_stats', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 400),
(1172, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: online_users', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 409),
(1173, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: online_users', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 410),
(1174, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: guests', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 415),
(1175, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: users', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 415),
(1176, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: buddy', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 420),
(1177, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: users_active', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 437),
(1178, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: most_online_today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 448),
(1179, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: most_online_ever', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 449),
(1180, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: today', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 788),
(1181, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: lang_locale', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 797),
(1182, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: time_pm', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs.php', 802),
(1183, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 490),
(1184, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: upshrink_description', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (main sub template - eval?)', 492),
(1185, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: valid_xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(1186, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: xhtml', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 340),
(1187, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: rss', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 341),
(1188, 1497615479, 2, '192.168.121.85', '?http://192.168.121.72/killer-craft-master/forum/', '8: Undefined index: wap2', '6a51a15c84ec53230082ce42d5a1ea06', 'undefined_vars', 'C:/xampp/htdocs/killer-craft-master/forum/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 342),
(1189, 1497615508, 2, '192.168.121.85', '?', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(1190, 1497615521, 2, '192.168.121.85', '?action=pm', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(1191, 1497615526, 2, '192.168.121.85', '?action=pm;sa=send', 'Unable to load Themes/default/index.template.php!', '6a51a15c84ec53230082ce42d5a1ea06', 'template', '', 0),
(1192, 1497615597, 2, '192.168.121.85', '?action=pm;sa=send2', '2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '6a51a15c84ec53230082ce42d5a1ea06', 'general', 'C:/xampp/htdocs/killer-craft-master/forum/Sources/Subs-Post.php', 765),
(1193, 1497615597, 2, '192.168.121.85', '?action=pm;sa=send2', 'Unable to send mail to the email address \'rcraft.gamers@gmail.com\'', '6a51a15c84ec53230082ce42d5a1ea06', 'general', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_floodcontrol`
--

CREATE TABLE `smf_log_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_floodcontrol`
--

INSERT INTO `smf_log_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
('192.168.121.85', 1497614727, 'register'),
('', 1497614727, 'register'),
('192.168.121.85', 1497615596, 'pm'),
('192.168.121.85', 1497615329, 'search'),
('192.168.121.85', 1497623996, 'login');

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_group_requests`
--

CREATE TABLE `smf_log_group_requests` (
  `id_request` mediumint(8) UNSIGNED NOT NULL,
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `time_applied` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_karma`
--

CREATE TABLE `smf_log_karma` (
  `id_target` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_mark_read`
--

CREATE TABLE `smf_log_mark_read` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_mark_read`
--

INSERT INTO `smf_log_mark_read` (`id_member`, `id_board`, `id_msg`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_member_notices`
--

CREATE TABLE `smf_log_member_notices` (
  `id_notice` mediumint(8) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_notify`
--

CREATE TABLE `smf_log_notify` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_online`
--

CREATE TABLE `smf_log_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `ip` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_online`
--

INSERT INTO `smf_log_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('r6kb01q478662bdhfk45eigilo', 1497624006, 2, 0, 3232266581, 'a:2:{s:6:\"action\";s:4:\"help\";s:10:\"USER_AGENT\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0\";}');

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_packages`
--

CREATE TABLE `smf_log_packages` (
  `id_install` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_polls`
--

CREATE TABLE `smf_log_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_reported`
--

CREATE TABLE `smf_log_reported` (
  `id_report` mediumint(8) UNSIGNED NOT NULL,
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_reported_comments`
--

CREATE TABLE `smf_log_reported_comments` (
  `id_comment` mediumint(8) UNSIGNED NOT NULL,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_scheduled_tasks`
--

CREATE TABLE `smf_log_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_scheduled_tasks`
--

INSERT INTO `smf_log_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(1, 2, 1497614413, 0),
(2, 3, 1497614465, 0),
(3, 5, 1497614475, 0),
(4, 6, 1497614486, 0),
(5, 7, 1497614604, 3),
(6, 9, 1497614608, 0),
(7, 1, 1497623986, 0);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_search_messages`
--

CREATE TABLE `smf_log_search_messages` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_search_results`
--

CREATE TABLE `smf_log_search_results` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `relevance` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `num_matches` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_search_results`
--

INSERT INTO `smf_log_search_results` (`id_search`, `id_topic`, `id_msg`, `relevance`, `num_matches`) VALUES
(2, 1, 1, 650, 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_search_subjects`
--

CREATE TABLE `smf_log_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_log_search_subjects`
--

INSERT INTO `smf_log_search_subjects` (`word`, `id_topic`) VALUES
('SMF', 1),
('to', 1),
('Welcome', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_search_topics`
--

CREATE TABLE `smf_log_search_topics` (
  `id_search` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_spider_hits`
--

CREATE TABLE `smf_log_spider_hits` (
  `id_hit` int(10) UNSIGNED NOT NULL,
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_spider_stats`
--

CREATE TABLE `smf_log_spider_stats` (
  `id_spider` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `page_hits` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `last_seen` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_subscribed`
--

CREATE TABLE `smf_log_subscribed` (
  `id_sublog` int(10) UNSIGNED NOT NULL,
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_log_topics`
--

CREATE TABLE `smf_log_topics` (
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_mail_queue`
--

CREATE TABLE `smf_mail_queue` (
  `id_mail` int(10) UNSIGNED NOT NULL,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_membergroups`
--

CREATE TABLE `smf_membergroups` (
  `id_group` smallint(5) UNSIGNED NOT NULL,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_membergroups`
--

INSERT INTO `smf_membergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `stars`, `group_type`, `hidden`, `id_parent`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2),
(2, 'Global Moderator', '', '#0000FF', -1, 0, '5#stargmod.gif', 0, 0, -2),
(3, 'Moderator', '', '', -1, 0, '5#starmod.gif', 0, 0, -2),
(4, 'Newbie', '', '', 0, 0, '1#star.gif', 0, 0, -2),
(5, 'Jr. Member', '', '', 50, 0, '2#star.gif', 0, 0, -2),
(6, 'Full Member', '', '', 100, 0, '3#star.gif', 0, 0, -2),
(7, 'Sr. Member', '', '', 250, 0, '4#star.gif', 0, 0, -2),
(8, 'Hero Member', '', '', 500, 0, '5#star.gif', 0, 0, -2);

-- --------------------------------------------------------

--
-- Structure de la table `smf_members`
--

CREATE TABLE `smf_members` (
  `id_member` mediumint(8) UNSIGNED NOT NULL,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `karma_good` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_members`
--

INSERT INTO `smf_members` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`) VALUES
(1, 'Admin', 1497614364, 0, 1, '', 1497614674, 'Admin', 0, 0, 0, '', '', 0, '', '', '30d9ced74e4977719b2d5ae59e19a0490fb2bd8e', '', 'mxmcosta@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '', '', '', '', 0, 1, '', 1, '', '', 0, 294, 'f218', '', 0, '', 1),
(2, 'xX_TgUiS_Xx', 1497614726, 0, 0, '', 1497623996, 'xX_TgUiS_Xx', 2, 0, 0, '3', '', 0, '', '', '1b493a0891976abaea47f027f3c10105bff929db', '', 'dj.mixesa@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '192.168.121.85', '192.168.121.85', '', '', 0, 1, '', 1, '', '', 4, 948, '84d6', '', 0, '', 1),
(3, 'Rcraft-Gamers', 1497614726, 0, 0, '', 1497616957, 'Rcraft-Gamers', 4, 2, 1, '', '', 0, '', '', '26b0863fd19a47f0e1de45221b1271f84b81e251', '', 'rcraft.gamers@gmail.com', '', 1, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '', '', '', '', 0, 1, '', 1, '', '', 4, 872, '2e3d', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_messages`
--

CREATE TABLE `smf_messages` (
  `id_msg` int(10) UNSIGNED NOT NULL,
  `id_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `poster_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_messages`
--

INSERT INTO `smf_messages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `body`, `icon`, `approved`) VALUES
(1, 1, 1, 1497614335, 0, 1, 'Welcome to SMF!', 'Simple Machines', 'info@simplemachines.org', '127.0.0.1', 1, 0, '', 'Welcome to Simple Machines Forum!<br /><br />We hope you enjoy using your forum.&nbsp; If you have any problems, please feel free to [url=http://www.simplemachines.org/community/index.php]ask us for assistance[/url].<br /><br />Thanks!<br />Simple Machines', 'xx', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_message_icons`
--

CREATE TABLE `smf_message_icons` (
  `id_icon` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `icon_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_message_icons`
--

INSERT INTO `smf_message_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Structure de la table `smf_moderators`
--

CREATE TABLE `smf_moderators` (
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_openid_assoc`
--

CREATE TABLE `smf_openid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_package_servers`
--

CREATE TABLE `smf_package_servers` (
  `id_server` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_package_servers`
--

INSERT INTO `smf_package_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Structure de la table `smf_permissions`
--

CREATE TABLE `smf_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_permissions`
--

INSERT INTO `smf_permissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'view_mlist', 1),
(0, 'search_posts', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'calendar_view', 1),
(0, 'view_stats', 1),
(0, 'who_view', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_remote_avatar', 1),
(0, 'karma_edit', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1),
(2, 'access_mod_center', 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_permission_profiles`
--

CREATE TABLE `smf_permission_profiles` (
  `id_profile` smallint(5) NOT NULL,
  `profile_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_permission_profiles`
--

INSERT INTO `smf_permission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Structure de la table `smf_personal_messages`
--

CREATE TABLE `smf_personal_messages` (
  `id_pm` int(10) UNSIGNED NOT NULL,
  `id_pm_head` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_personal_messages`
--

INSERT INTO `smf_personal_messages` (`id_pm`, `id_pm_head`, `id_member_from`, `deleted_by_sender`, `from_name`, `msgtime`, `subject`, `body`) VALUES
(1, 1, 3, 0, 'Rcraft-Gamers', 1497614909, '(No subject)', 'SLT TEST du server smtp'),
(2, 2, 2, 0, 'xX_TgUiS_Xx', 1497614997, 'Yo', 'c&#039;est moi'),
(3, 1, 2, 0, 'xX_TgUiS_Xx', 1497615040, 'Re: (No subject)', 'j&#039;ai eu<br />'),
(4, 2, 3, 0, 'Rcraft-Gamers', 1497615075, 'Re: Yo', 'ok sa marche super bien<br />'),
(5, 2, 2, 1, 'xX_TgUiS_Xx', 1497615231, 'Re: Yo', 'comme dab'),
(6, 6, 2, 0, 'xX_TgUiS_Xx', 1497615596, 'serveur IzyForRp sur discord', 'https://discord.gg/wBY4na');

-- --------------------------------------------------------

--
-- Structure de la table `smf_pm_recipients`
--

CREATE TABLE `smf_pm_recipients` (
  `id_pm` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_read` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_new` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_pm_recipients`
--

INSERT INTO `smf_pm_recipients` (`id_pm`, `id_member`, `labels`, `bcc`, `is_read`, `is_new`, `deleted`) VALUES
(1, 2, '-1', 0, 3, 0, 0),
(2, 3, '-1', 0, 3, 0, 0),
(3, 3, '-1', 0, 1, 0, 0),
(4, 2, '-1', 0, 3, 0, 0),
(5, 3, '-1', 0, 0, 1, 0),
(6, 3, '-1', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `smf_pm_rules`
--

CREATE TABLE `smf_pm_rules` (
  `id_rule` int(10) UNSIGNED NOT NULL,
  `id_member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_or` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_polls`
--

CREATE TABLE `smf_polls` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reset_poll` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_poll_choices`
--

CREATE TABLE `smf_poll_choices` (
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_scheduled_tasks`
--

CREATE TABLE `smf_scheduled_tasks` (
  `id_task` smallint(5) NOT NULL,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_scheduled_tasks`
--

INSERT INTO `smf_scheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1497632400, 0, 2, 'h', 0, 'approval_notification'),
(2, 1498176000, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1497740460, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1497740400, 0, 1, 'd', 0, 'daily_digest'),
(6, 1498172400, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1497701640, 134082, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1498172400, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 0, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Structure de la table `smf_sessions`
--

CREATE TABLE `smf_sessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_sessions`
--

INSERT INTO `smf_sessions` (`session_id`, `last_update`, `data`) VALUES
('iij123h32l2r04qmpar3cfjfks', 1497614674, 'session_value|s:32:\"e649b5b4bc11f05160a46415e66ed841\";session_var|s:11:\"bf2a225301c\";'),
('f6mfvbusvl8f0lbnhjo93js2fc', 1497614727, 'session_value|s:32:\"91c3fd706f71bcf0e3a4355acadfc754\";session_var|s:11:\"ea0c9384ae1\";'),
('e66tt7d7r776ri7lmbvdc0tesl', 1497618004, 'session_value|s:32:\"6a51a15c84ec53230082ce42d5a1ea06\";session_var|s:7:\"ef6d11e\";mc|a:7:{s:4:\"time\";i:1497614727;s:2:\"id\";s:1:\"2\";s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1497615603;s:9:\"id_member\";s:1:\"2\";s:2:\"ip\";s:14:\"192.168.121.85\";s:3:\"ip2\";s:14:\"192.168.121.85\";s:5:\"email\";s:19:\"dj.mixesa@gmail.com\";}log_time|i:1497615596;timeOnlineUpdated|i:1497615554;old_url|s:67:\"http://192.168.121.72/killer-craft-master/forum/index.php?action=pm\";USER_AGENT|s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0\";register_vv|a:5:{s:5:\"count\";i:3;s:6:\"errors\";i:0;s:8:\"did_pass\";b:1;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"DABBFE\";}registration_agreed|b:1;just_registered|i:1;login_SMFCookie956|s:91:\"a:4:{i:0;i:2;i:1;s:40:\"f4f6b04f4f68d515e83c7d55654d3e393c5a6666\";i:2;i:1497618327;i:3;i:3;}\";id_msg_last_visit|s:1:\"1\";unread_messages|i:0;pm_vv|a:5:{s:5:\"count\";i:4;s:6:\"errors\";i:0;s:8:\"did_pass\";b:1;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"WNRRPX\";}forms|a:4:{i:0;i:952575;i:1;i:15399886;i:2;i:1205889;i:3;i:11413829;}pm_selected|a:0:{}last_ss|s:2:\"yo\";search_cache|a:3:{s:9:\"id_search\";i:2;s:11:\"num_results\";i:0;s:6:\"params\";s:120:\"eJwtzEEOgCAMRNG7uHGrJyJQJkGD1BTUkPTwFuPuz1uMj7cvhKizLjppkFGrVU38OOLjzGgwG3SFHdQcl9x_YWlWgozv5icXNzGOqDQEXijZ7vwCXq4rrw..\";}'),
('5nn7eppg15cfgsrgfg9fvqfmqt', 1497614727, 'session_value|s:32:\"7ed451e69ae67c0a8780d1dc72ed7bb5\";session_var|s:12:\"f91cad319488\";'),
('72tf5lfugiib8ptdarjpj24kd0', 1497616987, 'session_value|s:32:\"9e26137ee6f4da1421c85b643fdd1c4f\";session_var|s:9:\"f885858a2\";mc|a:7:{s:4:\"time\";i:1497614727;s:2:\"id\";s:1:\"3\";s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1497616987;s:9:\"id_member\";s:1:\"3\";s:2:\"ip\";s:0:\"\";s:3:\"ip2\";s:0:\"\";s:5:\"email\";s:23:\"rcraft.gamers@gmail.com\";}log_time|i:1497616987;timeOnlineUpdated|i:1497616957;old_url|s:53:\"https://localhost/killer-craft-master/forum/index.php\";USER_AGENT|s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0\";register_vv|a:5:{s:5:\"count\";i:3;s:6:\"errors\";i:0;s:8:\"did_pass\";b:1;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"TVRPVW\";}registration_agreed|b:1;just_registered|i:1;login_SMFCookie956|s:91:\"a:4:{i:0;i:3;i:1;s:40:\"062b94bf302c3beb3f2227362604bbaf390617aa\";i:2;i:1497618327;i:3;i:3;}\";id_msg_last_visit|s:1:\"1\";unread_messages|s:1:\"2\";who_online_sort_by|s:4:\"time\";who_online_filter|s:3:\"all\";pm_selected|a:0:{}pm_vv|a:5:{s:5:\"count\";i:2;s:6:\"errors\";i:0;s:8:\"did_pass\";b:1;s:1:\"q\";a:0:{}s:4:\"code\";s:6:\"MFPBRR\";}forms|a:2:{i:0;i:4653274;i:1;i:5357949;}last_read_topic|i:1;last_ss|s:8:\"new post\";search_cache|a:3:{s:9:\"id_search\";i:1;s:11:\"num_results\";i:0;s:6:\"params\";s:124:\"eJwtzMEKgCAQhOFXiS5d64lE1wELc2W1JPDhW6PbP99hrL9tIvi-9LXP3cmoTasEbob4zBEVaoMud4Cq4RSfX1iqliDiu_nJ-F2UPQoNgRUKuhPalLnUF2wKLfc.\";}'),
('774qc3d6bcsnvtj2mtv57sufsq', 1497623996, 'session_value|s:32:\"4d04636e956cf3071553a45625659265\";session_var|s:8:\"bfbd4d2e\";'),
('r6kb01q478662bdhfk45eigilo', 1497624008, 'session_value|s:32:\"904864287ad0f9ae4b846a7b03d28d2d\";session_var|s:7:\"dcfe16d\";mc|a:7:{s:4:\"time\";i:1497623996;s:2:\"id\";s:1:\"2\";s:2:\"gq\";s:3:\"0=1\";s:2:\"bq\";s:3:\"0=1\";s:2:\"ap\";a:0:{}s:2:\"mb\";a:0:{}s:2:\"mq\";s:3:\"0=1\";}ban|a:5:{s:12:\"last_checked\";i:1497624008;s:9:\"id_member\";s:1:\"2\";s:2:\"ip\";s:14:\"192.168.121.85\";s:3:\"ip2\";s:14:\"192.168.121.85\";s:5:\"email\";s:19:\"dj.mixesa@gmail.com\";}log_time|i:1497624006;timeOnlineUpdated|i:1497623985;old_url|s:57:\"http://192.168.121.72/killer-craft-master/forum/index.php\";USER_AGENT|s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0\";login_SMFCookie956|s:95:\"a:4:{i:0;s:1:\"2\";i:1;s:40:\"f4f6b04f4f68d515e83c7d55654d3e393c5a6666\";i:2;i:1686839996;i:3;i:3;}\";id_msg_last_visit|s:1:\"1\";unread_messages|i:0;');

-- --------------------------------------------------------

--
-- Structure de la table `smf_settings`
--

CREATE TABLE `smf_settings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_settings`
--

INSERT INTO `smf_settings` (`variable`, `value`) VALUES
('smfVersion', '2.0.14'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', '0'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', 'C:\\xampp\\htdocs\\killer-craft-master\\forum/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '4'),
('mostOnlineToday', '4'),
('mostDate', '1497615554'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_enabled', '0'),
('cal_maxyear', '2030'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '3'),
('totalTopics', '1'),
('totalMessages', '1'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '1'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '0'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('guest_hideContacts', '1'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '0'),
('smileys_dir', 'C:\\xampp\\htdocs\\killer-craft-master\\forum/Smileys'),
('smileys_url', 'https://localhost/killer-craft-master/forum/Smileys'),
('avatar_directory', 'C:\\xampp\\htdocs\\killer-craft-master\\forum/avatars'),
('avatar_url', 'https://localhost/killer-craft-master/forum/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1234.00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('signature_settings', '1,300,0,0,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '0'),
('recycle_board', '0'),
('maxMsgID', '1'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '15'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine\'s Set\nAaron\'s Set\nAkyhne\'s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '0'),
('next_task_time', '1497632400'),
('warning_settings', '1,20,0'),
('warning_watch', '10'),
('warning_moderate', '35'),
('warning_mute', '60'),
('admin_features', ''),
('last_mod_report_action', '0'),
('pruningOptions', '30,180,180,180,30,0'),
('cache_enable', '1'),
('reg_verification', '1'),
('visual_verification_type', '3'),
('enable_buddylist', '1'),
('birthday_email', 'happy_birthday'),
('dont_repeat_theme_core', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_buddylists', '1'),
('attachment_image_reencode', '1'),
('attachment_image_paranoid', '0'),
('attachment_thumb_png', '1'),
('avatar_reencode', '1'),
('avatar_paranoid', '0'),
('global_character_set', 'UTF-8'),
('globalCookies', '1'),
('localCookies', '1'),
('default_timezone', 'Europe/Paris'),
('memberlist_updated', '1497615029'),
('latestMember', '3'),
('latestRealName', 'Rcraft-Gamers'),
('rand_seed', '975539649'),
('mostOnlineUpdated', '2017-06-16'),
('calendar_updated', '1497615029'),
('search_pointer', '2');

-- --------------------------------------------------------

--
-- Structure de la table `smf_smileys`
--

CREATE TABLE `smf_smileys` (
  `id_smiley` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `hidden` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_smileys`
--

INSERT INTO `smf_smileys` (`id_smiley`, `code`, `filename`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':\'(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1),
(20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'police.gif', 'Police', 0, 20, 1),
(22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Structure de la table `smf_spiders`
--

CREATE TABLE `smf_spiders` (
  `id_spider` smallint(5) UNSIGNED NOT NULL,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_spiders`
--

INSERT INTO `smf_spiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'MSN', 'msnbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'MSN (Mobile)', 'MSNBOT_Mobile', ''),
(11, 'MSN (Media)', 'msnbot-media', ''),
(12, 'Cuil', 'twiceler', ''),
(13, 'Ask', 'Teoma', ''),
(14, 'Baidu', 'Baiduspider', ''),
(15, 'Gigablast', 'Gigabot', ''),
(16, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(17, 'Alexa', 'ia_archiver', ''),
(18, 'Omgili', 'omgilibot', ''),
(19, 'EntireWeb', 'Speedy Spider', '');

-- --------------------------------------------------------

--
-- Structure de la table `smf_subscriptions`
--

CREATE TABLE `smf_subscriptions` (
  `id_subscribe` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `smf_themes`
--

CREATE TABLE `smf_themes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) UNSIGNED NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_themes`
--

INSERT INTO `smf_themes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Curve'),
(0, 1, 'theme_url', 'https://localhost/killer-craft-master/forum/Themes/default'),
(0, 1, 'images_url', 'https://localhost/killer-craft-master/forum/Themes/default/images'),
(0, 1, 'theme_dir', 'C:\\xampp\\htdocs\\killer-craft-master\\forum/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'forum_width', '90%'),
(0, 2, 'name', 'Core Theme'),
(0, 2, 'theme_url', 'https://localhost/killer-craft-master/forum/Themes/core'),
(0, 2, 'images_url', 'https://localhost/killer-craft-master/forum/Themes/core/images'),
(0, 2, 'theme_dir', 'C:\\xampp\\htdocs\\killer-craft-master\\forum/Themes/core'),
(-1, 1, 'display_quick_reply', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(2, 1, 'display_quick_reply', '1'),
(3, 1, 'display_quick_reply', '1'),
(3, 1, 'collapse_header', '0'),
(2, 1, 'collapse_header', '0');

-- --------------------------------------------------------

--
-- Structure de la table `smf_topics`
--

CREATE TABLE `smf_topics` (
  `id_topic` mediumint(8) UNSIGNED NOT NULL,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `id_first_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_last_msg` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `smf_topics`
--

INSERT INTO `smf_topics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `unapproved_posts`, `approved`) VALUES
(1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `smf_admin_info_files`
--
ALTER TABLE `smf_admin_info_files`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `filename` (`filename`(30));

--
-- Index pour la table `smf_attachments`
--
ALTER TABLE `smf_attachments`
  ADD PRIMARY KEY (`id_attach`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  ADD KEY `id_msg` (`id_msg`),
  ADD KEY `attachment_type` (`attachment_type`);

--
-- Index pour la table `smf_ban_groups`
--
ALTER TABLE `smf_ban_groups`
  ADD PRIMARY KEY (`id_ban_group`);

--
-- Index pour la table `smf_ban_items`
--
ALTER TABLE `smf_ban_items`
  ADD PRIMARY KEY (`id_ban`),
  ADD KEY `id_ban_group` (`id_ban_group`);

--
-- Index pour la table `smf_boards`
--
ALTER TABLE `smf_boards`
  ADD PRIMARY KEY (`id_board`),
  ADD UNIQUE KEY `categories` (`id_cat`,`id_board`),
  ADD KEY `id_parent` (`id_parent`),
  ADD KEY `id_msg_updated` (`id_msg_updated`),
  ADD KEY `member_groups` (`member_groups`(48));

--
-- Index pour la table `smf_board_permissions`
--
ALTER TABLE `smf_board_permissions`
  ADD PRIMARY KEY (`id_group`,`id_profile`,`permission`);

--
-- Index pour la table `smf_calendar`
--
ALTER TABLE `smf_calendar`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `topic` (`id_topic`,`id_member`);

--
-- Index pour la table `smf_calendar_holidays`
--
ALTER TABLE `smf_calendar_holidays`
  ADD PRIMARY KEY (`id_holiday`),
  ADD KEY `event_date` (`event_date`);

--
-- Index pour la table `smf_categories`
--
ALTER TABLE `smf_categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `smf_collapsed_categories`
--
ALTER TABLE `smf_collapsed_categories`
  ADD PRIMARY KEY (`id_cat`,`id_member`);

--
-- Index pour la table `smf_custom_fields`
--
ALTER TABLE `smf_custom_fields`
  ADD PRIMARY KEY (`id_field`),
  ADD UNIQUE KEY `col_name` (`col_name`);

--
-- Index pour la table `smf_group_moderators`
--
ALTER TABLE `smf_group_moderators`
  ADD PRIMARY KEY (`id_group`,`id_member`);

--
-- Index pour la table `smf_log_actions`
--
ALTER TABLE `smf_log_actions`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `id_log` (`id_log`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Index pour la table `smf_log_activity`
--
ALTER TABLE `smf_log_activity`
  ADD PRIMARY KEY (`date`),
  ADD KEY `most_on` (`most_on`);

--
-- Index pour la table `smf_log_banned`
--
ALTER TABLE `smf_log_banned`
  ADD PRIMARY KEY (`id_ban_log`),
  ADD KEY `log_time` (`log_time`);

--
-- Index pour la table `smf_log_boards`
--
ALTER TABLE `smf_log_boards`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Index pour la table `smf_log_comments`
--
ALTER TABLE `smf_log_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_recipient` (`id_recipient`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `comment_type` (`comment_type`);

--
-- Index pour la table `smf_log_errors`
--
ALTER TABLE `smf_log_errors`
  ADD PRIMARY KEY (`id_error`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `ip` (`ip`);

--
-- Index pour la table `smf_log_floodcontrol`
--
ALTER TABLE `smf_log_floodcontrol`
  ADD PRIMARY KEY (`ip`,`log_type`);

--
-- Index pour la table `smf_log_group_requests`
--
ALTER TABLE `smf_log_group_requests`
  ADD PRIMARY KEY (`id_request`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_group`);

--
-- Index pour la table `smf_log_karma`
--
ALTER TABLE `smf_log_karma`
  ADD PRIMARY KEY (`id_target`,`id_executor`),
  ADD KEY `log_time` (`log_time`);

--
-- Index pour la table `smf_log_mark_read`
--
ALTER TABLE `smf_log_mark_read`
  ADD PRIMARY KEY (`id_member`,`id_board`);

--
-- Index pour la table `smf_log_member_notices`
--
ALTER TABLE `smf_log_member_notices`
  ADD PRIMARY KEY (`id_notice`);

--
-- Index pour la table `smf_log_notify`
--
ALTER TABLE `smf_log_notify`
  ADD PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  ADD KEY `id_topic` (`id_topic`,`id_member`);

--
-- Index pour la table `smf_log_online`
--
ALTER TABLE `smf_log_online`
  ADD PRIMARY KEY (`session`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `id_member` (`id_member`);

--
-- Index pour la table `smf_log_packages`
--
ALTER TABLE `smf_log_packages`
  ADD PRIMARY KEY (`id_install`),
  ADD KEY `filename` (`filename`(15));

--
-- Index pour la table `smf_log_polls`
--
ALTER TABLE `smf_log_polls`
  ADD KEY `id_poll` (`id_poll`,`id_member`,`id_choice`);

--
-- Index pour la table `smf_log_reported`
--
ALTER TABLE `smf_log_reported`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `closed` (`closed`),
  ADD KEY `time_started` (`time_started`),
  ADD KEY `id_msg` (`id_msg`);

--
-- Index pour la table `smf_log_reported_comments`
--
ALTER TABLE `smf_log_reported_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_report` (`id_report`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `time_sent` (`time_sent`);

--
-- Index pour la table `smf_log_scheduled_tasks`
--
ALTER TABLE `smf_log_scheduled_tasks`
  ADD PRIMARY KEY (`id_log`);

--
-- Index pour la table `smf_log_search_messages`
--
ALTER TABLE `smf_log_search_messages`
  ADD PRIMARY KEY (`id_search`,`id_msg`);

--
-- Index pour la table `smf_log_search_results`
--
ALTER TABLE `smf_log_search_results`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Index pour la table `smf_log_search_subjects`
--
ALTER TABLE `smf_log_search_subjects`
  ADD PRIMARY KEY (`word`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Index pour la table `smf_log_search_topics`
--
ALTER TABLE `smf_log_search_topics`
  ADD PRIMARY KEY (`id_search`,`id_topic`);

--
-- Index pour la table `smf_log_spider_hits`
--
ALTER TABLE `smf_log_spider_hits`
  ADD PRIMARY KEY (`id_hit`),
  ADD KEY `id_spider` (`id_spider`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `processed` (`processed`);

--
-- Index pour la table `smf_log_spider_stats`
--
ALTER TABLE `smf_log_spider_stats`
  ADD PRIMARY KEY (`stat_date`,`id_spider`);

--
-- Index pour la table `smf_log_subscribed`
--
ALTER TABLE `smf_log_subscribed`
  ADD PRIMARY KEY (`id_sublog`),
  ADD UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `reminder_sent` (`reminder_sent`),
  ADD KEY `payments_pending` (`payments_pending`),
  ADD KEY `status` (`status`),
  ADD KEY `id_member` (`id_member`);

--
-- Index pour la table `smf_log_topics`
--
ALTER TABLE `smf_log_topics`
  ADD PRIMARY KEY (`id_member`,`id_topic`),
  ADD KEY `id_topic` (`id_topic`);

--
-- Index pour la table `smf_mail_queue`
--
ALTER TABLE `smf_mail_queue`
  ADD PRIMARY KEY (`id_mail`),
  ADD KEY `time_sent` (`time_sent`),
  ADD KEY `mail_priority` (`priority`,`id_mail`);

--
-- Index pour la table `smf_membergroups`
--
ALTER TABLE `smf_membergroups`
  ADD PRIMARY KEY (`id_group`),
  ADD KEY `min_posts` (`min_posts`);

--
-- Index pour la table `smf_members`
--
ALTER TABLE `smf_members`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `real_name` (`real_name`),
  ADD KEY `date_registered` (`date_registered`),
  ADD KEY `id_group` (`id_group`),
  ADD KEY `birthdate` (`birthdate`),
  ADD KEY `posts` (`posts`),
  ADD KEY `last_login` (`last_login`),
  ADD KEY `lngfile` (`lngfile`(30)),
  ADD KEY `id_post_group` (`id_post_group`),
  ADD KEY `warning` (`warning`),
  ADD KEY `total_time_logged_in` (`total_time_logged_in`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Index pour la table `smf_messages`
--
ALTER TABLE `smf_messages`
  ADD PRIMARY KEY (`id_msg`),
  ADD UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  ADD UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  ADD UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  ADD KEY `approved` (`approved`),
  ADD KEY `ip_index` (`poster_ip`(15),`id_topic`),
  ADD KEY `participation` (`id_member`,`id_topic`),
  ADD KEY `show_posts` (`id_member`,`id_board`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  ADD KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  ADD KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`);

--
-- Index pour la table `smf_message_icons`
--
ALTER TABLE `smf_message_icons`
  ADD PRIMARY KEY (`id_icon`),
  ADD KEY `id_board` (`id_board`);

--
-- Index pour la table `smf_moderators`
--
ALTER TABLE `smf_moderators`
  ADD PRIMARY KEY (`id_board`,`id_member`);

--
-- Index pour la table `smf_openid_assoc`
--
ALTER TABLE `smf_openid_assoc`
  ADD PRIMARY KEY (`server_url`(125),`handle`(125)),
  ADD KEY `expires` (`expires`);

--
-- Index pour la table `smf_package_servers`
--
ALTER TABLE `smf_package_servers`
  ADD PRIMARY KEY (`id_server`);

--
-- Index pour la table `smf_permissions`
--
ALTER TABLE `smf_permissions`
  ADD PRIMARY KEY (`id_group`,`permission`);

--
-- Index pour la table `smf_permission_profiles`
--
ALTER TABLE `smf_permission_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Index pour la table `smf_personal_messages`
--
ALTER TABLE `smf_personal_messages`
  ADD PRIMARY KEY (`id_pm`),
  ADD KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  ADD KEY `msgtime` (`msgtime`),
  ADD KEY `id_pm_head` (`id_pm_head`);

--
-- Index pour la table `smf_pm_recipients`
--
ALTER TABLE `smf_pm_recipients`
  ADD PRIMARY KEY (`id_pm`,`id_member`),
  ADD UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`);

--
-- Index pour la table `smf_pm_rules`
--
ALTER TABLE `smf_pm_rules`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `delete_pm` (`delete_pm`);

--
-- Index pour la table `smf_polls`
--
ALTER TABLE `smf_polls`
  ADD PRIMARY KEY (`id_poll`);

--
-- Index pour la table `smf_poll_choices`
--
ALTER TABLE `smf_poll_choices`
  ADD PRIMARY KEY (`id_poll`,`id_choice`);

--
-- Index pour la table `smf_scheduled_tasks`
--
ALTER TABLE `smf_scheduled_tasks`
  ADD PRIMARY KEY (`id_task`),
  ADD UNIQUE KEY `task` (`task`),
  ADD KEY `next_time` (`next_time`),
  ADD KEY `disabled` (`disabled`);

--
-- Index pour la table `smf_sessions`
--
ALTER TABLE `smf_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `smf_settings`
--
ALTER TABLE `smf_settings`
  ADD PRIMARY KEY (`variable`(30));

--
-- Index pour la table `smf_smileys`
--
ALTER TABLE `smf_smileys`
  ADD PRIMARY KEY (`id_smiley`);

--
-- Index pour la table `smf_spiders`
--
ALTER TABLE `smf_spiders`
  ADD PRIMARY KEY (`id_spider`);

--
-- Index pour la table `smf_subscriptions`
--
ALTER TABLE `smf_subscriptions`
  ADD PRIMARY KEY (`id_subscribe`),
  ADD KEY `active` (`active`);

--
-- Index pour la table `smf_themes`
--
ALTER TABLE `smf_themes`
  ADD PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  ADD KEY `id_member` (`id_member`);

--
-- Index pour la table `smf_topics`
--
ALTER TABLE `smf_topics`
  ADD PRIMARY KEY (`id_topic`),
  ADD UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  ADD UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  ADD UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  ADD KEY `is_sticky` (`is_sticky`),
  ADD KEY `approved` (`approved`),
  ADD KEY `id_board` (`id_board`),
  ADD KEY `member_started` (`id_member_started`,`id_board`),
  ADD KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  ADD KEY `board_news` (`id_board`,`id_first_msg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `smf_admin_info_files`
--
ALTER TABLE `smf_admin_info_files`
  MODIFY `id_file` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `smf_attachments`
--
ALTER TABLE `smf_attachments`
  MODIFY `id_attach` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_ban_groups`
--
ALTER TABLE `smf_ban_groups`
  MODIFY `id_ban_group` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_ban_items`
--
ALTER TABLE `smf_ban_items`
  MODIFY `id_ban` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_boards`
--
ALTER TABLE `smf_boards`
  MODIFY `id_board` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `smf_calendar`
--
ALTER TABLE `smf_calendar`
  MODIFY `id_event` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_calendar_holidays`
--
ALTER TABLE `smf_calendar_holidays`
  MODIFY `id_holiday` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT pour la table `smf_categories`
--
ALTER TABLE `smf_categories`
  MODIFY `id_cat` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `smf_custom_fields`
--
ALTER TABLE `smf_custom_fields`
  MODIFY `id_field` smallint(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_actions`
--
ALTER TABLE `smf_log_actions`
  MODIFY `id_action` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_banned`
--
ALTER TABLE `smf_log_banned`
  MODIFY `id_ban_log` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_comments`
--
ALTER TABLE `smf_log_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_errors`
--
ALTER TABLE `smf_log_errors`
  MODIFY `id_error` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1194;
--
-- AUTO_INCREMENT pour la table `smf_log_group_requests`
--
ALTER TABLE `smf_log_group_requests`
  MODIFY `id_request` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_member_notices`
--
ALTER TABLE `smf_log_member_notices`
  MODIFY `id_notice` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_packages`
--
ALTER TABLE `smf_log_packages`
  MODIFY `id_install` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_reported`
--
ALTER TABLE `smf_log_reported`
  MODIFY `id_report` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_reported_comments`
--
ALTER TABLE `smf_log_reported_comments`
  MODIFY `id_comment` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_scheduled_tasks`
--
ALTER TABLE `smf_log_scheduled_tasks`
  MODIFY `id_log` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `smf_log_spider_hits`
--
ALTER TABLE `smf_log_spider_hits`
  MODIFY `id_hit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_log_subscribed`
--
ALTER TABLE `smf_log_subscribed`
  MODIFY `id_sublog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_mail_queue`
--
ALTER TABLE `smf_mail_queue`
  MODIFY `id_mail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_membergroups`
--
ALTER TABLE `smf_membergroups`
  MODIFY `id_group` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `smf_members`
--
ALTER TABLE `smf_members`
  MODIFY `id_member` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `smf_messages`
--
ALTER TABLE `smf_messages`
  MODIFY `id_msg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `smf_message_icons`
--
ALTER TABLE `smf_message_icons`
  MODIFY `id_icon` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `smf_package_servers`
--
ALTER TABLE `smf_package_servers`
  MODIFY `id_server` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `smf_permission_profiles`
--
ALTER TABLE `smf_permission_profiles`
  MODIFY `id_profile` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `smf_personal_messages`
--
ALTER TABLE `smf_personal_messages`
  MODIFY `id_pm` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `smf_pm_rules`
--
ALTER TABLE `smf_pm_rules`
  MODIFY `id_rule` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_polls`
--
ALTER TABLE `smf_polls`
  MODIFY `id_poll` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_scheduled_tasks`
--
ALTER TABLE `smf_scheduled_tasks`
  MODIFY `id_task` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `smf_smileys`
--
ALTER TABLE `smf_smileys`
  MODIFY `id_smiley` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `smf_spiders`
--
ALTER TABLE `smf_spiders`
  MODIFY `id_spider` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `smf_subscriptions`
--
ALTER TABLE `smf_subscriptions`
  MODIFY `id_subscribe` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `smf_topics`
--
ALTER TABLE `smf_topics`
  MODIFY `id_topic` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE = InnoDB AUTO_INCREMENT = 270 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 44 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`, `post_status`, `post_date`, `ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE = InnoDB AUTO_INCREMENT = 32 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (2, 'home', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (3, 'blogname', 'test', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    4,
    'blogdescription',
    'Kolejna witryna oparta na WordPressie',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (5, 'users_can_register', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (6, 'admin_email', 'test@test.pl', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (7, 'start_of_week', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (8, 'use_balanceTags', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (9, 'use_smilies', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (10, 'require_name_email', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (11, 'comments_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (12, 'posts_per_rss', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (17, 'mailserver_port', '110', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (18, 'default_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (19, 'default_comment_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (20, 'default_ping_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (22, 'posts_per_page', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (23, 'date_format', 'j F Y', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (24, 'time_format', 'H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (25, 'links_updated_date_format', 'j F Y H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (26, 'comment_moderation', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (27, 'moderation_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    28,
    'permalink_structure',
    '/%category%/%postname%/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    29,
    'rewrite_rules',
    'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (30, 'hack_file', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (32, 'moderation_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (33, 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (34, 'category_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    35,
    'ping_sites',
    'http://rpc.pingomatic.com/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (36, 'comment_max_links', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (37, 'gmt_offset', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (38, 'default_email_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (39, 'recently_edited', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (40, 'template', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (41, 'stylesheet', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (42, 'comment_whitelist', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (43, 'blacklist_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (44, 'comment_registration', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (45, 'html_type', 'text/html', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (46, 'use_trackback', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (47, 'default_role', 'subscriber', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (48, 'db_version', '45805', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (50, 'upload_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (51, 'blog_public', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (52, 'default_link_category', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (53, 'show_on_front', 'posts', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (54, 'tag_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (55, 'show_avatars', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (56, 'avatar_rating', 'G', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (57, 'upload_url_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (61, 'medium_size_w', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (62, 'medium_size_h', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (64, 'large_size_w', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (65, 'large_size_h', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (67, 'image_default_size', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (68, 'image_default_align', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (71, 'thread_comments', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (73, 'page_comments', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (74, 'comments_per_page', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (76, 'comment_order', 'asc', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    78,
    'widget_categories',
    'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (82, 'timezone_string', 'Europe/Warsaw', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (84, 'page_on_front', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (85, 'default_post_format', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (88, 'site_icon', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (92, 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (93, 'initial_db_version', '38590', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    94,
    'wp_user_roles',
    'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (95, 'fresh_site', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (96, 'WPLANG', 'pl_PL', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    97,
    'widget_search',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    98,
    'widget_recent-posts',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    99,
    'widget_recent-comments',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    100,
    'widget_archives',
    'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    101,
    'widget_meta',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    102,
    'sidebars_widgets',
    'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    103,
    'widget_pages',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    104,
    'widget_calendar',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    105,
    'widget_media_audio',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    106,
    'widget_media_image',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    107,
    'widget_media_gallery',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    108,
    'widget_media_video',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    109,
    'widget_tag_cloud',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    110,
    'widget_nav_menu',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    111,
    'widget_custom_html',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    112,
    'cron',
    'a:6:{i:1575118226;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575136241;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575139826;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575139859;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575139873;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    113,
    'theme_mods_twentyseventeen',
    'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223189;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (144, 'current_theme', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    145,
    'theme_mods_newTemplate',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223393;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (146, 'theme_switched', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    152,
    'theme_mods_twentyfifteen',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223453;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    154,
    '_transient_twentyfifteen_categories',
    '1',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (158, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    176,
    'logged_in_key',
    '9m;et>$j$(QUtL<66l{e7wffJMR(n+Nm+S5*su8Z|+|OmH$r)$riGK:*I~(B`616',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    177,
    'logged_in_salt',
    '0ZVYX*h,##vZ,{82my]!w15- &5eMO[#nmco21<L`CmZ!d8eiNa8F0h:eRO<PnL<',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    178,
    'nonce_key',
    'a;~J:{2Cst20S@=IPz:bLi:?O%}i|k<oENjZ^4FrLJJO77Q^EkaXEIPcX>,-Lk;1',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    179,
    'nonce_salt',
    'T6>:^*MfU7@Y`.<.<B*yn}v92&rh}H:+j);l,RO]9z!3S5e;g,7]Kp$.#7~Mq-En',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    187,
    'auth_key',
    'B=QEiu%s{1Z+/{Q6fVpbU[h4?<A))tbi~Y1#NhD;`/FT&5-|kU90b.N&D-2J5Qa/',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    188,
    'auth_salt',
    's3g2bo]?%)7@(_{~OglPz_c& AOp*sDSe#Ur|x[07goE%Nn/}HHxH=Dy_uv 6dCR',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (189, 'db_upgraded', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    217,
    'auto_core_update_failed',
    'a:6:{s:9:\"attempted\";s:5:\"5.2.4\";s:7:\"current\";s:5:\"5.2.2\";s:10:\"error_code\";s:23:\"mkdir_failed_ziparchive\";s:10:\"error_data\";N;s:9:\"timestamp\";i:1575049848;s:5:\"retry\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    218,
    'auto_core_update_notified',
    'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:12:\"test@test.pl\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1575049848;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (219, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    220,
    '_site_transient_timeout_browser_2894fb4dbf964f58ccf3d2e4e372b316',
    '1575656083',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    221,
    '_site_transient_browser_2894fb4dbf964f58ccf3d2e4e372b316',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    222,
    '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9',
    '1575656084',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    223,
    '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    238,
    '_site_transient_timeout_popular_importers_fec2c8436d00b135d5dbc3a816aec06d',
    '1575224109',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    239,
    '_site_transient_popular_importers_fec2c8436d00b135d5dbc3a816aec06d',
    'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    240,
    '_site_transient_timeout_browser_f6be3db1229c03333fcbe03231dcff76',
    '1575656113',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    241,
    '_site_transient_browser_f6be3db1229c03333fcbe03231dcff76',
    'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    242,
    '_transient_health-check-site-status-result',
    '{\"good\":\"10\",\"recommended\":\"4\",\"critical\":\"1\"}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    243,
    '_transient_timeout_plugin_slugs',
    '1575137866',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    244,
    '_transient_plugin_slugs',
    'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (245, 'page_for_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    248,
    '_site_transient_timeout_theme_roots',
    '1575117893',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    249,
    '_site_transient_theme_roots',
    'a:5:{s:11:\"newTemplate\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    251,
    '_site_transient_update_themes',
    'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575116095;s:7:\"checked\";a:5:{s:11:\"newTemplate\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    252,
    '_site_transient_update_plugins',
    'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575116096;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (253, 'admin_email_lifespan', '1590668106', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    254,
    '_site_transient_update_core',
    'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1575116107;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-27 15:05:00\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    255,
    '_site_transient_timeout_php_check_7ddb89c02f1abf791c6717dc46cef1eb',
    '1575720907',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    256,
    '_site_transient_php_check_7ddb89c02f1abf791c6717dc46cef1eb',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (257, 'can_compress_scripts', '1', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    258,
    '_site_transient_timeout_community-events-1de8873aa0984c1dbee47981d08b0def',
    '1575159308',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    259,
    '_site_transient_community-events-1de8873aa0984c1dbee47981d08b0def',
    'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.21.0.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Prague\";s:3:\"url\";s:32:\"https://2020.prague.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-02-29 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Prague, Czech Republic\";s:7:\"country\";s:2:\"CZ\";s:8:\"latitude\";d:50.0490092;s:9:\"longitude\";d:14.4400399;}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    260,
    '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3',
    '1575159309',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    261,
    '_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Nov 2019 04:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.4-alpha-46799\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:51:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordPress 5.2.4 Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2019/11/wordpress-5-2-4-update/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Nov 2019 04:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7787\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"Late-breaking news on the 5.2.4 short-cycle security release that landed October 14. When we released the news post, I inadvertently missed giving props to Simon Scannell of RIPS Technologies for finding and disclosing an issue where path traversal can lead to remote code execution. Simon has done a great deal of work on the WordPress [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1102:\"\n<p>Late-breaking news on the<a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\"> 5.2.4 short-cycle security release </a>that landed October 14. When we released the news post, I inadvertently missed giving props to Simon Scannell of <a href=\"https://blog.ripstech.com/\">RIPS Technologies</a> for finding and disclosing an issue where path traversal can lead to remote code execution. </p>\n\n\n\n<p>Simon has done a <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\">great</a> <a href=\"https://wordpress.org/news/2019/03/wordpress-5-1-1-security-and-maintenance-release/\">deal</a> of <a href=\"https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/\">work</a> on the WordPress project, and failing to mention his contributions is a huge oversight on our end.</p>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing</a> vulnerabilities, which gave us time to fix them before WordPress sites could be attacked.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:50:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordPress 5.3 “Kirk”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/news/2019/11/kirk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Nov 2019 21:38:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7684\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:390:\"Version 5.3 of WordPress is available for download or update in your WordPress dashboard. The new editor continues to become more refined with intuitive interactions, a focus on accessibility, and a more consistent look &#38; feel. A fresh new default theme is shipping with this release too, that puts blocks to good use and lets all users have more control over how their content appears.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:46:\"https://s.w.org/images/core/5.3/navigation.mp4\";s:6:\"length\";s:7:\"3382373\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:45:\"https://s.w.org/images/core/5.3/10-groups.mp4\";s:6:\"length\";s:7:\"5011319\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:62109:\"\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=632%2C632&#038;ssl=1\" alt=\"Album cover for WordPress 5.3 Kirk, showcasing a duotone red/cream Rahsaan Roland Kirk playing the saxophone on a red background.\" class=\"wp-image-7710\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=1024%2C1024&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=300%2C300&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=768%2C768&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?w=1440&amp;ssl=1 1440w, https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<p style=\"background-color:#bd3854;color:#fefcf7\" class=\"has-text-color has-background\">Introducing our most refined user experience with the improved block editor in WordPress 5.3! Named “Kirk” in honour of jazz multi-instrumentalist Rahsaan Roland Kirk, the latest and greatest version of WordPress is available for <a href=\"https://wordpress.org/download/\">download</a> or update in your dashboard.</p>\n\n\n\n<figure class=\"wp-block-image size-large bar-divider\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=632%2C159&#038;ssl=1\" alt=\"\" class=\"wp-image-7721\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=1024%2C258&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=300%2C76&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=768%2C194&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=1536%2C387&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=2048%2C516&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<p><strong>5.3 expands and refines the block editor</strong> with more intuitive <strong>interactions</strong> and improved <strong>accessibility</strong>. New features in the editor increase design freedoms, provide additional layout options and style variations to allow designers more control over the look of a site.</p>\n\n\n\n<p>This release also introduces the <strong>Twenty Twenty theme</strong> giving the user more design flexibility and integration with the block editor. Creating beautiful web pages and advanced layouts has never been easier.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Block Editor Improvements</h2>\n\n\n\n<figure class=\"wp-block-video aligncenter\"><video autoplay controls loop muted src=\"https://s.w.org/images/core/5.3/navigation.mp4\"></video></figure>\n\n\n\n<p>This enhancement-focused update introduces over 150 new features and usability improvements, including improved large image support for uploading non-optimized, high-resolution pictures taken from your smartphone or other high-quality cameras. Combined with larger default image sizes, pictures always look their best.</p>\n\n\n\n<p>Accessibility improvements include the integration of block editor styles in the admin interface. These improved styles fix many accessibility issues: color contrast on form fields and buttons, consistency between editor and admin interfaces, new snackbar notices, standardizing to the default WordPress color scheme, and the introduction of Motion to make interacting with your blocks feel swift and natural. </p>\n\n\n\n<p>For people who use a keyboard to navigate the dashboard, the block editor now has a Navigation mode. This lets you jump from block to block without tabbing through every part of the block controls.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Expanded Design Flexibility</h2>\n\n\n\n<figure class=\"wp-block-video\"><video autoplay controls loop muted src=\"https://s.w.org/images/core/5.3/10-groups.mp4\"></video></figure>\n\n\n\n<p>WordPress 5.3 adds even more robust tools for creating amazing designs.</p>\n\n\n\n<ul><li>The new Group block lets you easily divide your page into colorful sections.</li><li>The Columns block now supports fixed column widths.</li><li>The new predefined layouts make it a cinch to arrange content into advanced designs.</li><li>Heading blocks now offer controls for text and background color.</li><li>Additional style options allow you to set your preferred style for any block that supports this feature.</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Introducing Twenty Twenty</h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=632%2C626&#038;ssl=1\" alt=\"A desktop preview of the Twenty Twenty theme, showing both the front-end and the editor view.\" class=\"wp-image-7686\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=1024%2C1014&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=300%2C297&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=768%2C760&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=1536%2C1521&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?w=2000&amp;ssl=1 2000w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/twentytwenty-mobile.png?w=632&#038;ssl=1\" alt=\"A mobile image of the Twenty Twenty  theme, over a decorative backgorund of brown-grey bars.\" class=\"wp-image-7714\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/11/twentytwenty-mobile.png?w=800&amp;ssl=1 800w, https://i1.wp.com/wordpress.org/news/files/2019/11/twentytwenty-mobile.png?resize=267%2C300&amp;ssl=1 267w, https://i1.wp.com/wordpress.org/news/files/2019/11/twentytwenty-mobile.png?resize=768%2C864&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<p>As the block editor celebrates its first birthday, we are proud that Twenty Twenty is designed with flexibility at its core. Show off your services or products with a combination of columns, groups, and media blocks. Set your content to wide or full alignment for dynamic and engaging layouts. Or let your thoughts be the star with a centered content column!</p>\n\n\n\n<p class=\"has-normal-font-size\">As befits a theme called Twenty Twenty, clarity and readability is also a big focus. The theme includes the typeface&nbsp;<a href=\"https://rsms.me/inter/\">Inter</a>, designed by Rasmus Andersson. Inter comes in a Variable Font version, a first for default themes, which keeps load times short by containing all weights and styles of Inter in just two font files.</p>\n</div></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Improvements for Everyone</h2>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\" style=\"grid-template-columns:auto 18%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Rotate.png?w=632&#038;ssl=1\" alt=\"An icon showing an arrow rotating a square.\" class=\"wp-image-7731\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Rotate.png?w=300&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/11/Rotate.png?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3>Automatic Image Rotation</h3>\n\n\n\n<p>Your images will be correctly rotated upon upload according to the embedded orientation data. This feature was first proposed nine years ago and made possible through the perseverance of many dedicated contributors.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\" style=\"grid-template-columns:auto 18%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/11/Health.png?w=632&#038;ssl=1\" alt=\"A plus in a square, indicating health.\" class=\"wp-image-7732\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2019/11/Health.png?w=300&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2019/11/Health.png?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3>Improved Site Health Checks</h3>\n\n\n\n<p>The improvements introduced in 5.3 make it even easier to identify issues. Expanded recommendations highlight areas that may need troubleshooting on your site from the Health Check screen.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\" style=\"grid-template-columns:auto 18%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Email.png?w=632&#038;ssl=1\" alt=\"A email icon.\" class=\"wp-image-7733\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Email.png?w=300&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/11/Email.png?resize=150%2C150&amp;ssl=1 150w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></figure><div class=\"wp-block-media-text__content\">\n<h3>Admin Email Verification</h3>\n\n\n\n<p>You’ll now be periodically asked to confirm that your admin email address is up to date when you log in as an administrator. This reduces the chance of getting locked out of your site if you change your email address.</p>\n</div></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>For Developers</h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<h3>Date/Time Component Fixes</h3>\n\n\n\n<p>Developers can now work with&nbsp;<a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">dates and timezones</a>&nbsp;in a more reliable way. Date and time functionality has received a number of new API functions for unified timezone retrieval and PHP interoperability, as well as many bug fixes.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3>PHP 7.4 Compatibility</h3>\n\n\n\n<p>WordPress 5.3 aims to fully support PHP 7.4. This release contains&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">multiple changes</a>&nbsp;to remove deprecated functionality and ensure compatibility. WordPress continues to encourage all users to run the latest and greatest versions of PHP.</p>\n</div>\n</div>\n\n\n\n<figure class=\"wp-block-image size-large bar-divider\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=632%2C159&#038;ssl=1\" alt=\"\" class=\"wp-image-7721\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=1024%2C258&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=300%2C76&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=768%2C194&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=1536%2C387&amp;ssl=1 1536w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=2048%2C516&amp;ssl=1 2048w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n\n\n\n<h2>The Squad</h2>\n\n\n\n<p>This release was led by&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, and <a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. They were enthusiastically supported by a large release squad:</p>\n\n\n\n<ul><li><strong>Editor Tech</strong>: Riad Benguella (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/youknowriad/\"><strong>@youknowriad</strong></a>)</li><li><strong>Editor Design</strong>: Mark Uraine (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/mapk/\"><strong>@mapk</strong></a>)</li><li><strong>Core Tech</strong>: Andrew Ozz (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/azaozz/\"><strong>@azaozz</strong></a>)</li><li><strong>Docs Coordinator</strong>:&nbsp;Justin Ahinon (<a href=\"https://profiles.wordpress.org/justinahinon/\"><strong>@justinahinon</strong></a>)</li><li><strong>Marketing/Release Comms</strong>:&nbsp;Mike Reid (<a href=\"https://profiles.wordpress.org/mikerbg/\"><strong>@mikerbg</strong></a>)</li><li><strong>Media/Uploader</strong>:&nbsp;Mike Schroder (<a href=\"https://profiles.wordpress.org/mikeschroder/\"><strong>@mikeschroder</strong></a>)</li><li><strong>Accessibility</strong>:&nbsp;JB Audras (<a href=\"https://profiles.wordpress.org/audrasjb/\"><strong>@audrasjb</strong></a>)</li><li><strong>Default Theme</strong> <strong>Wrangler</strong>: Ian Belanger (<a href=\"https://profiles.wordpress.org/ianbelanger/\"><strong>@ianbelanger</strong></a>)</li><li><strong>Default Theme Designer</strong>: Anders Norén (<a href=\"https://profiles.wordpress.org/anlino/\"><strong>@anlino</strong></a>)</li></ul>\n\n\n\n<p>The squad was joined throughout the twelve week release cycle by 645 generous volunteer contributors (our largest group of contributors to date) who collectively fixed 658 bugs.</p>\n\n\n\n<p>Put on a Rahsaan Roland Kirk playlist, click that update button (or <a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>\n\n\n<a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/1994rstefan/\">1994rstefan</a>, <a href=\"https://profiles.wordpress.org/5hel2l2y/\">5hel2l2y</a>, <a href=\"https://profiles.wordpress.org/irsdl/\">@irsdl</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/aksdvp/\">Aashish S</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb/\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/acalfieri/\">acalfieri</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamsoucie/\">Adam Soucie</a>, <a href=\"https://profiles.wordpress.org/adhitya03/\">Adhitya Rachman</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais/\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1/\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">ajlende</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/albertomake/\">albertomake</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/xavortm/\">Alex Dimitrov</a>, <a href=\"https://profiles.wordpress.org/alexclassroom/\">Alex Lion</a>, <a href=\"https://profiles.wordpress.org/alexsanford1/\">Alex Sanford</a>, <a href=\"https://profiles.wordpress.org/xyfi/\">Alexander Botteram</a>, <a href=\"https://profiles.wordpress.org/xel1045/\">Alexandre D\'Eschambeault</a>, <a href=\"https://profiles.wordpress.org/alexvorn2/\">Alexandru Vornicescu</a>, <a href=\"https://profiles.wordpress.org/alexeyskr/\">alexeyskr</a>, <a href=\"https://profiles.wordpress.org/alextran/\">alextran</a>, <a href=\"https://profiles.wordpress.org/ayubi/\">Ali Ayubi</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/alvarogois/\">Alvaro Gois dos Santos</a>, <a href=\"https://profiles.wordpress.org/arush/\">Amanda Rush</a>, <a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Norén</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andg/\">Andrea Gandino</a>, <a href=\"https://profiles.wordpress.org/agengineering/\">Andrea Grillo</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/abrain/\">Andreas Brain</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1/\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andrés Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/angelagibson/\">Angela Gibson</a>, <a href=\"https://profiles.wordpress.org/rilwis/\">Anh Tran</a>, <a href=\"https://profiles.wordpress.org/anischarolia/\">anischarolia</a>, <a href=\"https://profiles.wordpress.org/ahdeubzer/\">Anja Deubzer</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/apermo/\">Apermo</a>, <a href=\"https://profiles.wordpress.org/arafat/\">Arafat Rahman</a>, <a href=\"https://profiles.wordpress.org/arena/\">arena</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/arunsathiya/\">Arun Sathiya</a>, <a href=\"https://profiles.wordpress.org/artisticasad/\">Asad Shahbaz</a>, <a href=\"https://profiles.wordpress.org/asadkn/\">asadkn</a>, <a href=\"https://profiles.wordpress.org/mrasharirfan/\">Ashar Irfan</a>, <a href=\"https://profiles.wordpress.org/ashwinpc/\">ashwinpc</a>, <a href=\"https://profiles.wordpress.org/wpboss/\">Aslam Shekh</a>, <a href=\"https://profiles.wordpress.org/atlasmahesh/\">atlasmahesh</a>, <a href=\"https://profiles.wordpress.org/au87/\">au87</a>, <a href=\"https://profiles.wordpress.org/aubreypwd/\">Aubrey Portwood</a>, <a href=\"https://profiles.wordpress.org/augustuswm/\">augustuswm</a>, <a href=\"https://profiles.wordpress.org/aurooba/\">Aurooba Ahmed</a>, <a href=\"https://profiles.wordpress.org/avinapatel/\">Avina Patel</a>, <a href=\"https://profiles.wordpress.org/aksl95/\">Axel DUCORON</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backermann1978/\">backermann1978</a>, <a href=\"https://profiles.wordpress.org/b-07/\">Bappi</a>, <a href=\"https://profiles.wordpress.org/toszcze/\">Bartosz Romanowski</a>, <a href=\"https://profiles.wordpress.org/pixolin/\">Bego Mario Garde</a>, <a href=\"https://profiles.wordpress.org/bfintal/\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/benjamin_zekavica/\">Benjamin Zekavica</a>, <a href=\"https://profiles.wordpress.org/bennemann/\">bennemann</a>, <a href=\"https://profiles.wordpress.org/bgermann/\">bgermann</a>, <a href=\"https://profiles.wordpress.org/bhaktirajdev/\">Bhaktii Rajdev</a>, <a href=\"https://profiles.wordpress.org/bibliofille/\">bibliofille</a>, <a href=\"https://profiles.wordpress.org/biranit/\">Biranit</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bitcomplex/\">bitcomplex</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boblinthorst/\">boblinthorst</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/crazyjaco/\">Bradley Jacobs</a>, <a href=\"https://profiles.wordpress.org/bradleyt/\">Bradley Taylor</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/bronsonquick/\">Bronson Quick</a>, <a href=\"https://profiles.wordpress.org/bsetiawan88/\">bsetiawan88</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/cbravobernal/\">Carlos Bravo</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/cdog/\">Catalin Dogaru</a>, <a href=\"https://profiles.wordpress.org/cathibosco1/\">Cathi Bosco</a>, <a href=\"https://profiles.wordpress.org/chandrapatel/\">Chandra Patel</a>, <a href=\"https://profiles.wordpress.org/caercam/\">Charlie Merland</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">Chetan Satasiya</a>, <a href=\"https://profiles.wordpress.org/blogginglife/\">Chico</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chrico/\">ChriCo</a>, <a href=\"https://profiles.wordpress.org/aprea/\">Chris Aprea</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/needle/\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/lovememore/\">christianoliff</a>, <a href=\"https://profiles.wordpress.org/christophherr/\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/cleancoded/\">cleancoded</a>, <a href=\"https://profiles.wordpress.org/cmagrin/\">cmagrin</a>, <a href=\"https://profiles.wordpress.org/compilenix/\">CompileNix</a>, <a href=\"https://profiles.wordpress.org/salzano/\">Corey Salzano</a>, <a href=\"https://profiles.wordpress.org/courtney0burton/\">courtney0burton</a>, <a href=\"https://profiles.wordpress.org/cristianozanca/\">Cristiano Zanca</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/dswebsme/\">D.S. Webster</a>, <a href=\"https://profiles.wordpress.org/daleharrison/\">daleharrison</a>, <a href=\"https://profiles.wordpress.org/danmicamediacom/\">Dan Foley</a>, <a href=\"https://profiles.wordpress.org/goodevilgenius/\">Dan Jones</a>, <a href=\"https://profiles.wordpress.org/danbuk/\">DanBUK</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/redsweater/\">Daniel Jalkut (Red Sweater)</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/danieliser/\">danieliser</a>, <a href=\"https://profiles.wordpress.org/daniloercoli/\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/dvankooten/\">Danny van Kooten</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier</a>, <a href=\"https://profiles.wordpress.org/darthhexx/\">darthhexx</a>, <a href=\"https://profiles.wordpress.org/deapness/\">Dave Parker</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">Dave Smith</a>, <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davetgreen/\">davetgreen</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/david.binda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/daveshine/\">David Decker</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/daviedr/\">David Rozando</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/daxelrod/\">daxelrod</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/dennis_f/\">Deni</a>, <a href=\"https://profiles.wordpress.org/dehisok/\">Denis Cherniavsky</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/wpdennis/\">Dennis</a>, <a href=\"https://profiles.wordpress.org/dionysous/\">Dennis Hipp</a>, <a href=\"https://profiles.wordpress.org/dmsnell/\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dsifford/\">Derek Sifford</a>, <a href=\"https://profiles.wordpress.org/derweili/\">derweili</a>, <a href=\"https://profiles.wordpress.org/dfangstrom/\">dfangstrom</a>, <a href=\"https://profiles.wordpress.org/dharmin16/\">Dharmin Shah</a>, <a href=\"https://profiles.wordpress.org/dhavalkasvala/\">Dhaval kasavala</a>, <a href=\"https://profiles.wordpress.org/dhuyvetter/\">dhuyvetter</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/diedeexterkate/\">DiedeExterkate</a>, <a href=\"https://profiles.wordpress.org/diego-la-monica/\">Diego La Monica</a>, <a href=\"https://profiles.wordpress.org/digitalapps/\">digitalapps</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/odminstudios/\">Dima</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion hulse</a>, <a href=\"https://profiles.wordpress.org/dency/\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dukex/\">Dukex</a>, <a href=\"https://profiles.wordpress.org/dushanthi/\">dushanthi</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">EcoTechie</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">Eduardo Toledo</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elliotcondon/\">Elliot Condon</a>, <a href=\"https://profiles.wordpress.org/codex-m/\">Emerson Maningo</a>, <a href=\"https://profiles.wordpress.org/edocev/\">Emil Dotsev</a>, <a href=\"https://profiles.wordpress.org/emiluzelac/\">Emil Uzelac</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique S&#225;nchez</a>, <a href=\"https://profiles.wordpress.org/erikkroes/\">erikkroes</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">estelaris</a>, <a href=\"https://profiles.wordpress.org/evalarumbe/\">evalarumbe</a>, <a href=\"https://profiles.wordpress.org/faazshift/\">faazshift</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/fblaser/\">fblaser</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fencer04/\">Fencer04</a>, <a href=\"https://profiles.wordpress.org/flipkeijzer/\">flipkeijzer</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/foysalremon/\">Foysal Remon</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/voldemortensen/\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/guddu1315/\">Gaurang Dabhi</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/loyaltymanufaktur/\">Gesundheit Bewegt GmbH</a>, <a href=\"https://profiles.wordpress.org/sachyya-sachet/\">ghoul</a>, <a href=\"https://profiles.wordpress.org/girlieworks/\">girlieworks</a>, <a href=\"https://profiles.wordpress.org/glauberglauber/\">glauberglauber</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gravityview/\">GravityView</a>, <a href=\"https://profiles.wordpress.org/gregsullivan/\">gregsullivan</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hardeepasrani/\">Hardeep Asrani</a>, <a href=\"https://profiles.wordpress.org/thakkarhardik/\">Hardik Thakkar</a>, <a href=\"https://profiles.wordpress.org/hardipparmar/\">hardipparmar</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/hareesh pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/harryfear/\">harryfear</a>, <a href=\"https://profiles.wordpress.org/harshbarach/\">harshbarach</a>, <a href=\"https://profiles.wordpress.org/haszari/\">haszari</a>, <a href=\"https://profiles.wordpress.org/hesyifei/\">He Yifei</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herbmiller/\">herbmiller</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/hirofumi2012/\">hirofumi2012</a>, <a href=\"https://profiles.wordpress.org/hkandulla/\">HKandulla</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hoythan/\">hoythan</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/zinigor/\">Igor Zinovyev</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/gsayed786/\">Imran Sayed</a>, <a href=\"https://profiles.wordpress.org/intimez/\">intimez</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/iqbalbary/\">iqbalbary</a>, <a href=\"https://profiles.wordpress.org/ireneyoast/\">Irene Strikkers</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ismailelkorchi/\">Ismail El Korchi</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jagirbaheshwp/\">jagirbaheshwp</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jalpa1984/\">Jalpa Panchal</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jameslnewell/\">jameslnewell</a>, <a href=\"https://profiles.wordpress.org/janak007/\">janak Kaneriya</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/janwoostendorp/\">janw.oostendorp</a>, <a href=\"https://profiles.wordpress.org/jared_smith/\">jared_smith</a>, <a href=\"https://profiles.wordpress.org/jarocks/\">jarocks</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/javeweb/\">jave.web</a>, <a href=\"https://profiles.wordpress.org/javorszky/\">javorszky</a>, <a href=\"https://profiles.wordpress.org/jayswadas/\">Jay Swadas</a>, <a href=\"https://profiles.wordpress.org/iamjaydip/\">Jaydip</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jenblogs4u/\">Jen Miller</a>, <a href=\"https://profiles.wordpress.org/jenkoian/\">jenkoian</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/engelen/\">Jesper van Engelen</a>, <a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/jffng/\">jffng</a>, <a href=\"https://profiles.wordpress.org/jikamens/\">jikamens</a>, <a href=\"https://profiles.wordpress.org/jitendrabanjara1991/\">jitendrabanjara1991</a>, <a href=\"https://profiles.wordpress.org/jkitchen/\">jkitchen</a>, <a href=\"https://profiles.wordpress.org/jmmathc/\">jmmathc</a>, <a href=\"https://profiles.wordpress.org/joakimsilfverberg/\">joakimsilfverberg</a>, <a href=\"https://profiles.wordpress.org/jobthomas/\">Job</a>, <a href=\"https://profiles.wordpress.org/jodamo5/\">jodamo5</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnregan3/\">John Regan</a>, <a href=\"https://profiles.wordpress.org/jojotjebaby/\">jojotjebaby</a>, <a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>, <a href=\"https://profiles.wordpress.org/jond/\">Jonathan Davis</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jg-visual/\">Jonathan Goldford</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/josephscott/\">Joseph Scott</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/shelob9/\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/joshuanoyce/\">Joshua Noyce</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/junktrunk/\">junktrunk</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/greenshady/\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kafleg/\">kafleg</a>, <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kakshak/\">Kakshak Kalaria</a>, <a href=\"https://profiles.wordpress.org/kamrankhorsandi/\">Kamran Khorsandi</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/karlgroves/\">karlgroves</a>, <a href=\"https://profiles.wordpress.org/katielgc/\">katielgc</a>, <a href=\"https://profiles.wordpress.org/kbrownkd/\">kbrownkd</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kellychoffman/\">Kelly Hoffman</a>, <a href=\"https://profiles.wordpress.org/kerfred/\">Kerfred</a>, <a href=\"https://profiles.wordpress.org/kingkero/\">kero</a>, <a href=\"https://profiles.wordpress.org/ketanumretiya030/\">ketanumretiya030</a>, <a href=\"https://profiles.wordpress.org/kevinkovadia/\">kevIN kovaDIA</a>, <a href=\"https://profiles.wordpress.org/killerbishop/\">killerbishop</a>, <a href=\"https://profiles.wordpress.org/killua99/\">killua99</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kokers/\">kokers</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/kuus/\">kuus</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>, <a href=\"https://profiles.wordpress.org/leonblade/\">leonblade</a>, <a href=\"https://profiles.wordpress.org/lessbloat/\">lessbloat</a>, <a href=\"https://profiles.wordpress.org/lllor/\">lllor</a>, <a href=\"https://profiles.wordpress.org/lordlod/\">lordlod</a>, <a href=\"https://profiles.wordpress.org/loreleiaurora/\">LoreleiAurora</a>, <a href=\"https://profiles.wordpress.org/luan-ramos/\">Luan Ramos</a>, <a href=\"https://profiles.wordpress.org/luciano-croce/\">luciano-croce</a>, <a href=\"https://profiles.wordpress.org/luigipulcini/\">luigipulcini</a>, <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a>, <a href=\"https://profiles.wordpress.org/wpfed/\">Luke</a>, <a href=\"https://profiles.wordpress.org/lukecarbis/\">Luke Carbis</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/m1tk00/\">m1tk00</a>, <a href=\"https://profiles.wordpress.org/maartenleenders/\">maartenleenders</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">Maciej Palmowski</a>, <a href=\"https://profiles.wordpress.org/mahesh901122/\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/majemedia/\">Maje Media LLC</a>, <a href=\"https://profiles.wordpress.org/malthert/\">malthert</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">manooweb</a>, <a href=\"https://profiles.wordpress.org/manuelaugustin/\">Manuel Augustin</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/marcguay/\">MarcGuay</a>, <a href=\"https://profiles.wordpress.org/iworks/\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marcomartins/\">Marco Martins</a>, <a href=\"https://profiles.wordpress.org/marcosalexandre/\">MarcosAlexandre</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/chaton666/\">Marie Comet</a>, <a href=\"https://profiles.wordpress.org/maguiar/\">Mario Aguiar</a>, <a href=\"https://profiles.wordpress.org/nofearinc/\">Mario Peshev</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/mdwolinski/\">Mark D Wolinski</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/mspatovaliyski/\">Martin Spatovaliyski</a>, <a href=\"https://profiles.wordpress.org/splitti/\">Martin Splitt</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/masummdar/\">masummdar</a>, <a href=\"https://profiles.wordpress.org/matstars/\">Mat Gargano</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/iceable/\">Mathieu Sarrasin</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">Matt Chowning</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheu/\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/matthiasthiel/\">matthias.thiel</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matías Ventura</a>, <a href=\"https://profiles.wordpress.org/maximeculea/\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/maximejobin/\">Maxime Jobin</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mchavezi/\">mchavezi</a>, <a href=\"https://profiles.wordpress.org/immeet94/\">Meet Makadia</a>, <a href=\"https://profiles.wordpress.org/mehidi258/\">Mehidi Hassan</a>, <a href=\"https://profiles.wordpress.org/mehulkaklotar/\">Mehul Kaklotar</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/melinedo/\">Melin Edomwonyi</a>, <a href=\"https://profiles.wordpress.org/meloniq/\">meloniq</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/mbabker/\">Michael Babker</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">Michael Panaga</a>, <a href=\"https://profiles.wordpress.org/michelweimerskirch/\">michel.weimerskirch</a>, <a href=\"https://profiles.wordpress.org/michielatyoast/\">Michiel Heijmans</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/miguelvieira/\">Miguel Vieira</a>, <a href=\"https://profiles.wordpress.org/mihaiiceyro/\">mihaiiceyro</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mdgl/\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mikerbg/\">Mike Reid</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikengarrett/\">MikeNGarrett</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mobeen-abdullah/\">Mobeen Abdullah</a>, <a href=\"https://profiles.wordpress.org/mohsinrasool/\">Mohsin Rasool</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/boemedia/\">Monique Dubbelman</a>, <a href=\"https://profiles.wordpress.org/gwendydd/\">Morgan Kay</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mt8biz/\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mppfeiffer/\">mppfeiffer</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/msaggiorato/\">msaggiorato</a>, <a href=\"https://profiles.wordpress.org/mtias/\">mtias</a>, <a href=\"https://profiles.wordpress.org/phpdocs/\">Muhammad Afzal</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/mzorz/\">mzorz</a>, <a href=\"https://profiles.wordpress.org/nadir/\">nadir</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/naveenkharwar/\">Naveen Kharwar</a>, <a href=\"https://profiles.wordpress.org/nayana123/\">Nayana Maradia</a>, <a href=\"https://profiles.wordpress.org/greatislander/\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/neelpatel7295/\">Neel Patel</a>, <a href=\"https://profiles.wordpress.org/nextendweb/\">Nextendweb</a>, <a href=\"https://profiles.wordpress.org/niallkennedy/\">Niall Kennedy</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/nicolad/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw/\">Niels de Blaauw</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikschavan/\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nikolastoqnow/\">nikolastoqnow</a>, <a href=\"https://profiles.wordpress.org/niq1982/\">Niku Hietanen</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/nishitlangaliya/\">Nishit Langaliya</a>, <a href=\"https://profiles.wordpress.org/kailanitish90/\">Nitish Kaila</a>, <a href=\"https://profiles.wordpress.org/nmenescardi/\">nmenescardi</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/notnownikki/\">notnownikki</a>, <a href=\"https://profiles.wordpress.org/hideokamoto/\">Okamoto Hidetaka</a>, <a href=\"https://profiles.wordpress.org/lindstromer/\">Olaf Lindstr&#246;m</a>, <a href=\"https://profiles.wordpress.org/moonomo/\">Omaar Osmaan</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/onlanka/\">onlanka</a>, <a href=\"https://profiles.wordpress.org/oxyc/\">oxyc</a>, <a href=\"https://profiles.wordpress.org/ozmatflc/\">ozmatflc</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/paresh07/\">Paresh Shinde</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/patilvikasj/\">patilvikasj</a>, <a href=\"https://profiles.wordpress.org/patrelentlesstechnologycom/\">Patrick Baldwin</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/bassgang/\">Paul Vincent Beigang</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/pputzer/\">pepe</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/phillipjohn/\">PhillipJohn</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/decrecementofeliz/\">Pilar Mera</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">Pinar Olguc</a>, <a href=\"https://profiles.wordpress.org/powerbuoy/\">powerbuoy</a>, <a href=\"https://profiles.wordpress.org/promz/\">Pramod Jodhani</a>, <a href=\"https://profiles.wordpress.org/pratikthink/\">Pratik</a>, <a href=\"https://profiles.wordpress.org/pratikkry/\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/freewebmentor/\">Prem Tiwari</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/priyankkpatel/\">Priyank Patel</a>, <a href=\"https://profiles.wordpress.org/quantumstate/\">Quantumstate</a>, <a href=\"https://profiles.wordpress.org/raajtram/\">Raaj Trambadia</a>, <a href=\"https://profiles.wordpress.org/raamdev/\">Raam Dev</a>, <a href=\"https://profiles.wordpress.org/raboodesign/\">raboodesign</a>, <a href=\"https://profiles.wordpress.org/rahulvaza/\">Rahul Vaza</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramon-fincken/\">ramon fincken</a>, <a href=\"https://profiles.wordpress.org/rclations/\">RC Lations</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/reikodd/\">ReikoDD</a>, <a href=\"https://profiles.wordpress.org/remcotolsma/\">Remco Tolsma</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rockfire/\">Richard Korthuis</a>, <a href=\"https://profiles.wordpress.org/riddhiehta02/\">Riddhi Mehta</a>, <a href=\"https://profiles.wordpress.org/rbrishabh/\">Rishabh Budhiraja</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/robi-bobi/\">Robert Ivanov</a>, <a href=\"https://profiles.wordpress.org/rogueresearch/\">rogueresearch</a>, <a href=\"https://profiles.wordpress.org/rconde/\">Roi Conde</a>, <a href=\"https://profiles.wordpress.org/ronakganatra/\">Ronak Ganatra</a>, <a href=\"https://profiles.wordpress.org/raubvogel/\">Ronny Harbich</a>, <a href=\"https://profiles.wordpress.org/karthost/\">Roy Randolph</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">S&#233;bastien SERRE</a>, <a href=\"https://profiles.wordpress.org/samgordondev/\">samgordondev</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/progremzion/\">Sanket Mehta</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly/\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/sarathar/\">sarath.ar</a>, <a href=\"https://profiles.wordpress.org/saskak/\">saskak</a>, <a href=\"https://profiles.wordpress.org/sbardian/\">sbardian</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Seghir Nadir</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/vjik/\">Sergey Predvoditelev</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/seuser/\">seuser</a>, <a href=\"https://profiles.wordpress.org/sgastard/\">sgastard</a>, <a href=\"https://profiles.wordpress.org/shadyvb/\">Shady Sharaf</a>, <a href=\"https://profiles.wordpress.org/shamim51/\">Shamim Hasan</a>, <a href=\"https://profiles.wordpress.org/sharaz/\">Sharaz Shahid</a>, <a href=\"https://profiles.wordpress.org/shashank3105/\">Shashank Panchal</a>, <a href=\"https://profiles.wordpress.org/shawfactor/\">shawfactor</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/siliconforks/\">siliconforks</a>, <a href=\"https://profiles.wordpress.org/simono/\">simono</a>, <a href=\"https://profiles.wordpress.org/sirreal/\">sirreal</a>, <a href=\"https://profiles.wordpress.org/sixes/\">Sixes</a>, <a href=\"https://profiles.wordpress.org/slaffik/\">Slava Abakumov</a>, <a href=\"https://profiles.wordpress.org/slobodanmanic/\">Slobodan Manic</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/socalchristina/\">socalchristina</a>, <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spectacula/\">Spectacula</a>, <a href=\"https://profiles.wordpress.org/spenserhale/\">spenserhale</a>, <a href=\"https://profiles.wordpress.org/spuds10/\">spuds10</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/studyboi/\">studyboi</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sudhiryadav/\">Sudhir Yadav</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tha_sun/\">sun</a>, <a href=\"https://profiles.wordpress.org/codesue/\">Suzen Fylke</a>, <a href=\"https://profiles.wordpress.org/svanhal/\">svanhal</a>, <a href=\"https://profiles.wordpress.org/patilswapnilv/\">Swapnil V. Patil</a>, <a href=\"https://profiles.wordpress.org/swapnild/\">swapnild</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/nevma/\">Takis Bouyouris</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tazotodua/\">tazotodua</a>, <a href=\"https://profiles.wordpress.org/technote0space/\">technote</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/tessak22/\">Tessa Kriesel</a>, <a href=\"https://profiles.wordpress.org/themes-1/\">them.es</a>, <a href=\"https://profiles.wordpress.org/themezly/\">Themezly</a>, <a href=\"https://profiles.wordpress.org/thulshof/\">Thijs Hulshof</a>, <a href=\"https://profiles.wordpress.org/kraftner/\">Thomas Kr&#228;ftner</a>, <a href=\"https://profiles.wordpress.org/thomaswm/\">thomaswm</a>, <a href=\"https://profiles.wordpress.org/tdh/\">Thord D. Hedengren</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith/\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/n7studios/\">Tim Carr</a>, <a href=\"https://profiles.wordpress.org/timhavinga/\">Tim Havinga</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph/\">timph</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tmdesigned/\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/toddhalfpenny/\">toddhalfpenny</a>, <a href=\"https://profiles.wordpress.org/tosho/\">Todor Gaidarov</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tferry/\">Tommy Ferry</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/tonybogdanov/\">tonybogdanov</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/trasweb/\">trasweb</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/travisseitler/\">travisseitler</a>, <a href=\"https://profiles.wordpress.org/triplejumper12/\">triplejumper12</a>, <a href=\"https://profiles.wordpress.org/truchot/\">truchot</a>, <a href=\"https://profiles.wordpress.org/truongwp/\">truongwp</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">Tugdual de Kerviler</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/vbaimas/\">vbaimas</a>, <a href=\"https://profiles.wordpress.org/venutius/\">Venutius</a>, <a href=\"https://profiles.wordpress.org/fesovik/\">Viktor Veljanovski</a>, <a href=\"https://profiles.wordpress.org/vishalkakadiya/\">Vishal Kakadiya</a>, <a href=\"https://profiles.wordpress.org/vishitshah/\">Vishit Shah</a>, <a href=\"https://profiles.wordpress.org/vladlu/\">vladlu</a>, <a href=\"https://profiles.wordpress.org/vladwtz/\">Vladut Ilie</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/svovaf/\">Vova Feldman</a>, <a href=\"https://profiles.wordpress.org/vrimill/\">vrimill</a>, <a href=\"https://profiles.wordpress.org/w3rkjana/\">w3rkjana</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">webcommsat AbhaNonStopNewsUK</a>, <a href=\"https://profiles.wordpress.org/webdados/\">Webdados (Marco Almeida)</a>, <a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/wpdavis/\">William P. Davis</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">William Patton</a>, <a href=\"https://profiles.wordpress.org/withinboredom/\">withinboredom</a>, <a href=\"https://profiles.wordpress.org/worldweb/\">worldweb</a>, <a href=\"https://profiles.wordpress.org/yanngarcia/\">yanngarcia</a>, <a href=\"https://profiles.wordpress.org/collet/\">Yannicki</a>, <a href=\"https://profiles.wordpress.org/yarnboy/\">yarnboy</a>, <a href=\"https://profiles.wordpress.org/yashar_hv/\">yashar_hv</a>, <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yodiyo/\">yodiyo</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/zaantar/\">zaantar</a>, <a href=\"https://profiles.wordpress.org/zalak151291/\">zalak151291</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/chesio/\">Česlav Przywara</a>, <a href=\"https://profiles.wordpress.org/airathalitov/\">АЙРАТ ХАЛИТОВ <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f525.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></a>, and <a href=\"https://profiles.wordpress.org/ounziw/\">水野史土</a>.\n\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p>Many thanks to all of the community volunteers who contribute in the <a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.3. Their efforts bring WordPress fully translated to 47 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p class=\"has-text-align-center has-medium-font-size\">Thanks for choosing WordPress!</p>\n\n\n\n<figure class=\"wp-block-image size-large record\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?fit=632%2C414&amp;ssl=1\" alt=\"\" class=\"wp-image-7755\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?w=1441&amp;ssl=1 1441w, https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?resize=300%2C197&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?resize=1024%2C671&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?resize=768%2C503&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" /></figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7684\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:67:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\t\t\n\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"People of WordPress: Kim Parsell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/11/people-of-wordpress-kim-parsell/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wordpress.org/news/2019/11/people-of-wordpress-kim-parsell/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Nov 2019 23:58:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"heropress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:10:\"Interviews\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7662\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:371:\"You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories. Meet Kim Parsell We’d like to introduce you to Kim Parsell. Kim was [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7628:\"\n<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Kim Parsell</strong></h2>\n\n\n\n<p>We’d like to introduce you to Kim Parsell. Kim was an active and well-loved member of the WordPress community. Unfortunately, she passed away in 2015. Lovingly referred to as #wpmom, she leaves behind a legacy of service.&nbsp;</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?fit=632%2C252&amp;ssl=1\" alt=\"\" class=\"wp-image-7664\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?w=1200&amp;ssl=1 1200w, https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?resize=300%2C120&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?resize=1024%2C408&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?resize=768%2C306&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Kim Parsell</figcaption></figure>\n\n\n\n<h2><strong>How Kim became #wpmom</strong></h2>\n\n\n\n<p>In order to understand how highly valued the WordPress community was to Kim Parsell, you have to know a bit about her environment.</p>\n\n\n\n<p>Kim was a middle-aged woman who lived off a dirt road, on top of a hill, in Southern rural Ohio. She was often by herself, taking care of the property with only a few neighbors up and down the road.</p>\n\n\n\n<p>She received internet access from towers that broadcast wireless signals, similar to cell phones but at lower speeds.</p>\n\n\n\n<h2><strong>Connecting through attending live podcast recordings</strong></h2>\n\n\n\n<p>By listening to the regular podcast, WordPress Weekly, Kim met members of the WordPress community and was able to talk to them on a weekly basis. The show and its after-hours sessions provided Kim a chance to mingle with the who’s who of WordPress at the time. It helped establish long-lasting relationships that would open up future opportunities for her.</p>\n\n\n\n<p>Since she lived in a location where few around her used or had even heard of WordPress, the community was an opportunity for her to be with like-minded people. Kim enjoyed interacting with the community, both online and at WordCamp events, and many community members became her second family, a responsibility she took very seriously.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>&#8220;Many members of the WordPress community became her second family, a responsibility she took very seriously.&#8221;</em></p><cite><em>Jeff Chandler</em></cite></blockquote>\n\n\n\n<h2><strong>One of the first women of WordPress</strong></h2>\n\n\n\n<p>Kim is regarded as one of the first “women of WordPress,” investing a lot of her time in women who wanted to break into tech. She worked hard to create a safe environment sharing herself and her knowledge and was affectionately called #wpmom.</p>\n\n\n\n<p>She contributed countless hours of volunteer time, receiving “props” for 5 major releases of WordPress, and was active on the documentation team.&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>&#8220;Affectionately called #wpmom, Kim was an investor. She invested countless hours into the WordPress project and in women who wanted to break into tech.&#8221;</em></p><cite><em>Carrie Dils</em></cite></blockquote>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?fit=632%2C468&amp;ssl=1\" alt=\"\" class=\"wp-image-7663\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?w=1280&amp;ssl=1 1280w, https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?resize=300%2C222&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?resize=1024%2C759&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?resize=768%2C569&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" /><figcaption>Kim at WordCamp San Francisco</figcaption></figure>\n\n\n\n<h2><strong>Kim Parsell Memorial Scholarship</strong></h2>\n\n\n\n<p>In 2014, she received a travel stipend offered by the WordPress Foundation that enabled her to attend the WordPress community summit, held in conjunction with WordCamp San Francisco. She shared with anyone who would listen, that this was a life-changing event for her.&nbsp;</p>\n\n\n\n<p>The WordPress Foundation now offers that scholarship in her memory. The Kim Parsell Memorial Scholarship provides funding annually for a woman who contributes to WordPress to attend WordCamp US, a flagship event for the WordPress community.</p>\n\n\n\n<p>This scholarship truly is a fitting memorial. Her contributions have been vital to the project. Moreover, the way she treated and encouraged the people around her has been an inspiration to many.&nbsp;&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Her spirit lives on in the people she knew and inspired. Here’s hoping that the Kim Parsell Memorial Scholarship will serve to further inspire those who follow in her footsteps.</em></p><cite><em>Drew Jaynes</em></cite></blockquote>\n\n\n\n<h2><strong>Kim is missed, but her spirit continues to live on</strong></h2>\n\n\n\n<p>Sadly Kim died just a few short months later. But her spirit lives on in the people she knew and inspired within her communities. The Kim Parsell Memorial Scholarship will serve to further inspire those who follow in her footsteps.</p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Alison Rothwell (<a href=\'https://profiles.wordpress.org/wpfiddlybits/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>), Josepha Haden (<a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>), Topher DeRosia (<a href=\'https://profiles.wordpress.org/topher1kenobe/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>topher1kenobe</a>), Jeff Chandler, Carrie Dils, Jayvee Arrellano, Jan Dembowski, Drew Jaynes</p>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=632%2C474&#038;ssl=1\" alt=\"\" class=\"wp-image-7025\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?w=1024&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=300%2C225&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=768%2C576&amp;ssl=1 768w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\">\n<p> <em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em> </p>\n</div>\n</div>\n\n\n\n<p> <em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em> </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wordpress.org/news/2019/11/people-of-wordpress-kim-parsell/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7662\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:51:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.3 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/11/wordpress-5-3-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Nov 2019 23:56:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7596\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The fourth release candidate for WordPress 5.3 is now available! WordPress 5.3 is currently scheduled to be released on&#160;November 12 2019, but we need&#160;your&#160;help to get there—if you haven’t tried 5.3 yet, now is the time! There are two ways to test the WordPress 5.3 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3674:\"\n<p>The fourth release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC4.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a>, &nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a>&nbsp;and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">third</a> release candidate posts.</p>\n\n\n\n<p>Release Candidate 4 contains three bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and addresses the following:</p>\n\n\n\n<ul><li>The Twemoji library has been updated from 12.1.2 to 12.1.3 (see <a href=\"https://core.trac.wordpress.org/ticket/48293\">#48293</a>).</li><li>Two regressions in the Media component (see <a href=\"https://core.trac.wordpress.org/ticket/48451\">#48451</a> and <a href=\"https://core.trac.wordpress.org/ticket/48453\">#48453</a>).</li><li>One bug in the Upload component (see <a href=\"https://core.trac.wordpress.org/ticket/48472\">#48472</a>)</li><li>Five bugs in the Block Editor component (see <a href=\"https://core.trac.wordpress.org/ticket/48502\">#48502</a>)</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<p>A new dev note has been published since the Field Guide was released, <a href=\"https://make.wordpress.org/core/2019/11/05/use-of-the-wp_update_attachment_metadata-filter-as-upload-is-complete-hook/\">Use of the “wp_update_attachment_metadata” filter as “upload is complete” hook</a>. Plugin and theme authors are asked to please read this note and make any necessary adjustments to continue working well in WordPress 5.3 or share any difficulties encountered on&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/48451\">#48451</a>.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7596\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:48:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"2019 Annual Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/news/2019/11/2019-annual-survey/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 21:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7460\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:326:\"It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback. It only takes a few minutes to fill out the survey, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2236:\"\n<div class=\"wp-block-image\"><figure class=\"alignright size-large is-resized\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?fit=632%2C281&amp;ssl=1\" alt=\"\" class=\"wp-image-7472\" width=\"329\" height=\"146\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?w=1070&amp;ssl=1 1070w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=300%2C133&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=1024%2C456&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=768%2C342&amp;ssl=1 768w\" sizes=\"(max-width: 329px) 100vw, 329px\" /></figure></div>\n\n\n\n<p>It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback.</p>\n\n\n\n<p>It only takes a few minutes to <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">fill out the survey</a>, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is also available in 5 additional languages:  <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-spanish\">Spanish</a>. Many thanks to the community volunteers who helped with the translation effort!</p>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-background has-vivid-cyan-blue-background-color\" href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">Take the WordPress survey!</a></div>\n\n\n\n<p>The survey will be open for 4 weeks, and results will be published on this blog. All data will be anonymized: no email addresses or IP addresses will be associated with published results. To learn more about WordPress.org’s privacy practices, check out the <a href=\"https://wordpress.org/about/privacy/\">privacy policy</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7460\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:48:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"The Month in WordPress: October 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/11/the-month-in-wordpress-october-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 07:28:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7449\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more. WordPress 5.2.4 On October 14, WordPress 5.2.4 was released as a security release fixing 6 security issues. The fixes were backported to earlier versions [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6219:\"\n<p>October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.2.4</h2>\n\n\n\n<p>On October 14, <a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\">WordPress 5.2.4 was released</a> as a security release fixing 6 security issues. The fixes were backported to earlier versions of WordPress as well, so they’re available for sites not yet upgraded to 5.2.</p>\n\n\n\n<p>This kind of release is only possible because people <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">report security issues responsibly</a> so that the Core team can address them. You can find out more specific information about the fixes on <a href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">the release documentation page</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordPress 5.3</h2>\n\n\n\n<p>WordPress 5.3 has seen active development over the past month, with a release date set for November 12. You can <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">download and test the release candidate</a> to get a taste of what to expect—this is largely what final release will look like.</p>\n\n\n\n<p>This is a big release with a number of exciting and important updates. Among them are <a href=\"https://make.wordpress.org/core/2019/10/18/noteworthy-admin-css-changes-in-wordpress-5-3/\">significant changes to the look of the admin interface</a>, enhancements to the block editor that will affect developers of <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">themes</a> and <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">plugins</a>, <a href=\"https://make.wordpress.org/core/2019/10/09/introducing-handling-of-big-images-in-wordpress-5-3/\">large improvements</a> to the way that Core <a href=\"https://make.wordpress.org/core/2019/10/11/updates-to-image-processing-in-wordpress-5-3/\">processes images</a>, updates to cater for some functions <a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">specific to PHP 7.4</a>, improvements to the <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">Site Health feature</a>, and many more improvements that are all documented in <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">the WordPress 5.3 Field Guide</a>.</p>\n\n\n\n<p>In addition to these Core updates, the upcoming major release will also include the new default theme, <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">Twenty Twenty</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? You can contribute by <a href=\"https://make.wordpress.org/core/handbook/testing/\">testing the upcoming release</a>, as well as follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>New Core Committers</h2>\n\n\n\n<p><a href=\"https://meta.trac.wordpress.org/ticket/4760\">Three new committers have been added</a> to the WordPress Core organizational structure. Core committers are individuals who have direct access to the Core development code repositories in order to publish updates to the software.</p>\n\n\n\n<p>The new committers are Ian Belanger (<a href=\'https://profiles.wordpress.org/ianbelanger/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ianbelanger</a>), Timothy Jacobs (<a href=\'https://profiles.wordpress.org/timothyblynjacobs/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>timothyblynjacobs</a>), and Joe Dolson (<a href=\'https://profiles.wordpress.org/joedolson/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joedolson</a>). While Ian’s commit access is specifically for Core themes, both Timothy and Joe have full access to Core. This type of access is only given to individuals who have proved themselves with high-quality contributions and a deep understanding of how the WordPress project works.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>The Accessibility Team is <a href=\"https://make.wordpress.org/accessibility/2019/10/26/accessibility-team-representatives-election-for-2020/\">looking for new team representatives</a> for 2020.</li><li><a href=\"https://2019.us.wordcamp.org/\">WordCamp US</a> is happening on November 1-3 and is set to be the largest WordPress event in North America.</li><li>WordCamp Asia, the first flagship event in the region, <a href=\"https://twitter.com/WordCampAsia/status/1187079744409526272\">will be rolling out their next batch of ticket sales</a> on November 1.</li><li>Work continues on Gutenberg, with <a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">the latest update</a> including significant updates to the Cover block and many other areas.</li><li>The WordCamp Europe team have published <a href=\"https://make.wordpress.org/community/2019/10/27/update-contributor-orientation-tool/\">an update about the Contributor Orientation tool</a> they worked on earlier this year.</li><li>The WordCamp US team has published <a href=\"https://make.wordpress.org/community/2019/10/28/grow-your-meetup-survey-results-for-wcus/\">the results of their Grow Your Meetup survey</a> ahead of their 2019 event.</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">is making plans</a> to implement a curated page for displaying featured themes in the Theme Directory.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7449\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:51:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.3 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 21:16:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7439\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"The third release candidate for WordPress 5.3 is now available! WordPress 5.3 is currently scheduled to be released on&#160;November 12 2019, but we need&#160;your&#160;help to get there—if you haven’t tried 5.3 yet, now is the time! There are two ways to test the WordPress 5.3 release candidate: Try the WordPress Beta Tester plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3088:\"\n<p>The third release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-RC3.zip\">download the release candidate here</a> (zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a> and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a> release candidate posts.</p>\n\n\n\n<p>Release Candidate 3 contains improvements to the new About page, bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and 9 fixes for the following bugs and regressions:</p>\n\n\n\n<ul><li>Four bugs in the block editor have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48447\">#48447</a>).</li><li>Three Date/Time related bugs have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48384\">#48384</a>).</li><li>A regression in <code>date_i18n()</code> has been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/28636\">#28636</a>).</li><li>An accessibility color contrast regression for primary buttons when using alternate admin color schemes was fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48396\">#48396</a>).</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7439\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:51:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.3 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 20:08:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7425\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The second release candidate for WordPress 5.3 is now available! WordPress 5.3 is currently scheduled to be released on&#160;November 12 2019, but we need&#160;your&#160;help to get there—if you haven’t tried 5.3 yet, now is the time! There are two ways to test the WordPress 5.3 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3782:\"\n<p>The second release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>Release Candidate 2 contains improvements to the new About page, and <a href=\"https://core.trac.wordpress.org/query?id=48381%2C48363%2C48022%2C48304%2C48379%2C48087%2C47699&amp;milestone=5.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=milestone&amp;order=priority\">10 fixes</a> for the following bugs and regressions:</p>\n\n\n\n<ul><li>Three bugs contained in RC1 within the block editor have been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48381\">48381</a>).</li><li>A bug has been fixed where links within comments did not get the correct <code>rel</code> attribute (see #<a href=\"https://core.trac.wordpress.org/ticket/48022\">48022</a>).</li><li>The <code>scaled-</code> string has been added to file names when images are downsized if determined &#8220;BIG&#8221; (see #<a href=\"https://core.trac.wordpress.org/ticket/48304\">48304</a>).</li><li>The buttons group layout has been fixed in IE11 (see #<a href=\"https://core.trac.wordpress.org/ticket/48087\">48087</a>).</li><li>A bug with <code>boolean</code> <code>false</code> meta values in the REST API has been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48363\">48363</a>).</li><li>The error code encountered when the native PHP JSON extension is missing has been adjusted to be unique (see #<a href=\"https://core.trac.wordpress.org/ticket/47699\">47699</a>).</li><li>When uploading files, HTTP error code support has been expanded to include all 5xx errors (see #<a href=\"https://core.trac.wordpress.org/ticket/48379\">48379</a>).</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7425\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:64:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\n\t\t\n\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Empowering Generations of Digital Natives\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Oct 2019 20:03:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"digital citizenship week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7413\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"Technology is changing faster each year. Digital literacy can vary between ages but there are lots of ways different generations can work together and empower each as digital citizens. No matter whether you’re a parent or caregiver, teacher or mentor, it’s hard to know the best way to teach younger generations the skills needed to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8968:\"\n<p>Technology is changing faster each year. Digital literacy can vary between ages but there are lots of ways different generations can work together and empower each as digital citizens.</p>\n\n\n\n<p>No matter whether you’re a parent or caregiver, teacher or mentor, it’s hard to know the best way to teach younger generations the skills needed to be an excellent digital citizen. If you’re not confident about your own tech skills, you may wonder how you can help younger generations become savvy digital citizens. But using technology responsibly is about more than just technical skills. By collaborating across generations, you can also strengthen all your family members’ skills, and offer a shared understanding of what the internet can provide and how to use it to help your neighborhoods and wider society.&nbsp;<br></p>\n\n\n\n<h2>Taking Gen Z Beyond Digital Savvy</h2>\n\n\n\n<h3>Open up the dialogue</h3>\n\n\n\n<p>Even if you’re not fully confident in your own tech skills, you can help develop digital citizenship skills in others. If you feel comfortable during everyday conversation, you could describe a tech situation you have come across and ask family members if they have ever experienced something similar. You can give them a chance to share how they handled it or how it made them feel. This can help encourage them to think critically and to react with empathy. And being asked for advice can make them feel appreciated and empowered. But opening up the conversation can also be as simple as asking if they’ve seen anything online lately that they found interesting or wanted to talk about.</p>\n\n\n\n<h3>Share access to free and affordable training</h3>\n\n\n\n<p>Open source content management systems have made online publishing accessible to a more diverse group of people. Dozens of content platforms offer hands-on training at no or low cost. <a href=\"https://wordpress.tv/\">WordPress.tv</a>, <a href=\"https://www.linkedin.com/learning/topics/wordpress\">LinkedIn Learning</a>, and others have low-cost video libraries with thousands of recorded talks and workshops and the WordPress Training team have excellent downloadable lesson plans and materials. These platforms not only feature content that helps develop tech and content creation skills but also content around ethics, diversity and community building.&nbsp;&nbsp;</p>\n\n\n\n<h3>Find a sense of community and belonging</h3>\n\n\n\n<p>One of the disadvantages of increased digitalization is that <a href=\"https://www.theatlantic.com/magazine/archive/2017/09/has-the-smartphone-destroyed-a-generation/534198/\">younger generations and us all may spend less time hanging out in-person.</a> Digital time spent with others is no replacement for in-person interactions. The awareness and mutual understanding which comes from back and forth interaction is needed for positive interpersonal skills. This is hard to replace in digital communities and those skills can only be learned with lots of hands-on practice.&nbsp;</p>\n\n\n\n<h3>Learn the many benefits of volunteering&nbsp;</h3>\n\n\n\n<p>There are WordPress events across the world that provide a great place to learn new skills to share with your families and friends. Some work with schools and colleges to offer special events which are open to all ages. There are also plenty of small ways to volunteer with the WordPress project that can be done at home to practice new skills.</p>\n\n\n\n<p>In addition to attending events where you can learn skills and hang out with others with similar interests, the WordPress ecosystem offers countless opportunities to be actively involved. Professionals, hobbyists, and learners all make a difference by contributing to the ongoing creation of the WordPress platform. Together these people, who are known as contributors, form the <a href=\"https://make.wordpress.org/\">WordPress open source community.</a>&nbsp;</p>\n\n\n\n<h4>WordPress is created by volunteer contributors</h4>\n\n\n\n<p>Not only are these contributors creating an amazingly flexible platform for all to use, it is an environment where you can continue to improve your skills, both technical and interpersonal. Open-source software projects can introduce you to people you would otherwise not get the chance to meet, locally and internationally. If you have a zest for learning, and for finding others to connect with, WordPress has many ways to meet contributors in person!</p>\n\n\n\n<h4>WordPress events are organized by volunteers</h4>\n\n\n\n<p>WordPress community events are volunteer-run. This can be a great way to give back to the project and practice all sorts of skills. Talk to your local event about how you could get involved and if you would like to bring older teenagers and young adults with you. You will not need any pre-existing tech skills to attend these events but they are a great way to discover areas you might want to learn more about.&nbsp;</p>\n\n\n\n<h4>Contributor days offer a great opportunity to get involved</h4>\n\n\n\n<p>These events are specially designed to help you get involved in building the open-source WordPress platform. You can collaborate with other members of its community and find areas that are right for you to use and grow your skills. All of the tasks you will discover at an event can be continued at home and some are easy to get other family members involved in learning and adding in ideas.&nbsp;</p>\n\n\n\n<p>Contributors come from all sorts of backgrounds and locations, some may live near you and others thousands of miles away. Working alongside lots of different cultures and countries can open up new ideas for young people letting them learn new ways of doing things and discover different perspectives. All those different perspectives can cause misunderstandings. But being involved in a global learning community is a great way to practice communicating across cultural boundaries.&nbsp;</p>\n\n\n\n<h4>Getting involved can be rewarding in many (unexpected) ways</h4>\n\n\n\n<p>The most rewarding part of actively taking part in WordPress events is making budding friendships. New connections often turn into long-lasting friendships that are likely to continue for years to come, both online and offline. With a global community, these friendships can potentially lead to lots of international adventures too!</p>\n\n\n\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Getting ready for the <a href=\"https://twitter.com/WordCampBTN?ref_src=twsrc%5Etfw\">@WordCampBTN</a>. I&#8217;ve got my 5kg backpack and one-way ticket to London in a few days <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f929.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> What shall I do after? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://t.co/cdQqeyNWif\">pic.twitter.com/cdQqeyNWif</a></p>— Sabrina Zeidan going to #WCKyiv (@sabrina_zeidan) <a href=\"https://twitter.com/sabrina_zeidan/status/1160265428473712640?ref_src=twsrc%5Etfw\">August 10, 2019</a></blockquote>\n\n\n\n<h3>Make our digital world safer and more inclusive</h3>\n\n\n\n<p>Befriending people from a wide variety of cultures and backgrounds can be an enriching experience in itself. It can also help you make us make more informed decisions. The more we interact with a diverse range of people, the more empathic we become. Some of the most valuable learning that can be offered to Gen Z (and probably to all of us at times) is that what we come across in fast-moving digital communities isn’t always the entire view.&nbsp;</p>\n\n\n\n<h2>All things considered….</h2>\n\n\n\n<p>Anyone who is a digital native may not need encouragement to obtain tech skills. But they may not be aware that digital communities are still communities and <a href=\"https://wordpress.org/news/2019/10/responsible-participation-in-online-communities/\">we need to use the same sorts of people skills for both offline and online locations</a>. Opening up conversations about situations they may experience online that may require them to (re)act responsibly, can encourage them to think critically and act with empathy. Compared to previous generations, digital natives spend substantially more time by themselves while using devices, so encouraging them to join real-life communities, such as WordPress, could be the first step to learning what it means to be a good digital citizen!&nbsp; </p>\n\n\n\n<h2>Contributors</h2>\n\n\n\n<p><a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>, <a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>, <a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a> &amp; <a href=\'https://profiles.wordpress.org/annemariedh/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>annemariedh</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7413\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:51:\"\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\n\t\t\t\t\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 5.3 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 21:18:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7397\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"The first release candidate for WordPress 5.3 is now available! This is an important milestone as we progress toward the WordPress 5.3 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.3 is currently [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3144:\"\n<p>The first release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>This is an important milestone as we progress toward the WordPress 5.3 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.3 is currently scheduled to be released&nbsp;on&nbsp;<strong>November 12, 2019</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, <strong>now is the time</strong>!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate: </p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC1.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<h2>What’s in WordPress 5.3?</h2>\n\n\n\n<p>WordPress 5.3 expands and refines the <strong>Block Editor</strong> introduced in WordPress 5.0 with <strong>new blocks, more intuitive interactions, and improved accessibility</strong>. New features in the editor increase design freedoms, provide additional layout options and style variations to allow designers complete control over the look of a site.</p>\n\n\n\n<p>This release also introduces the <strong>Twenty Twenty</strong> theme giving the user more design flexibility and integration with the Block Editor. </p>\n\n\n\n<p>In addition, WordPress 5.3 allows developers to work with <strong>dates and timezones</strong> in a more reliable way and prepares the software to work with <strong>PHP 7.4</strong> to be release later this year. </p>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme file to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;WordPress 5.3 Field Guide&nbsp;will be published within the next 24 hours with a more detailed dive into the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a>&nbsp;This release also marks the&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a>&nbsp;point of the 5.3 release schedule.</p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n\thourly\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n\t1\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 30 Nov 2019 12:15:07 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Tue, 19 Nov 2019 04:47:30 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    262,
    '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3',
    '1575159309',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    263,
    '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3',
    '1575116109',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    264,
    '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1575159310',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    265,
    '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n\t\n\t\n\t\n\t\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: WP&amp;UP to Hold #DoSummitGood Online Event for Giving Tuesday\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95585\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wpup-to-hold-dosummitgood-online-event-for-giving-tuesday\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4922:\"<img />\n\n\n\n<p>On Giving Tuesday, December 3, WP&amp;UP is holding an online event called <a href=\"https://wpandup.org/go/dosummitgood\">#DoSummitGood</a> that features speakers from various &ldquo;for good&rdquo; WordPress organizations.  The event will have nine sessions from 13 speakers.  It begins at <a href=\"http://www.timebie.com/std/utc.php?q=13\">13:00 UTC</a>.</p>\n\n\n\n<p>Giving Tuesday is a global movement meant to inspire generosity.  The celebration has run each year since 2012 on the Tuesday following the U.S. Thanksgiving holiday.  The idea is to inspire people to do good, not for just one day of the year, but each day of their lives.</p>\n\n\n\n<p>A WordPress-focused event on Giving Tuesday sounds like a perfect match.  Given the nature of open source and the charitable work of many of the people and companies in the space, it makes sense to hold a specific event for the holiday.   &ldquo;This is the first #DoSummitGood and there has already been a discussion about making this an annual event for Giving Tuesday,&rdquo; said Dan Maby, CEO and a Trustee of WP&amp;UP.</p>\n\n\n\n<p>WP&amp;UP is a registered charity organization with a mission to support and promote positive mental health within the WordPress community.  Its <a href=\"https://wpandup.org/health-hubs/\">Health Hubs</a> cover topics like business, skills, physical, and mental health.  The organization also provides support and counseling services.</p>\n\n\n\n<p>The idea for the #DoSummitGood event was born from a WP&amp;UP <a href=\"https://wpandup.org/2019/10/join-our-open-discussion-town-hall-ama-on-wednesday-9th-october/\">Town Hall</a> in October.  &ldquo;Our focus is on collaboration and our Town Halls are an opportunity for members of the public to get involved and help brainstorm ideas for the community, as well as get to know more about what WP&amp;UP does,&rdquo; said Maby.</p>\n\n\n\n<p>The primary event will run via <a href=\"https://www.crowdcast.io/e/dosummitgood/register\">Crowdcast</a>.  By registering for the event, attendees will gain access to the Hallway Track to meet with other attendees online.  They will also have the ability to ask questions directly to the speakers.  Registration is free but will close once it reaches a specific number of signups.  &ldquo;WP&amp;UP is paying for the technical solution to deliver the event,&rdquo; said Maby.  &ldquo;As a registered charity we have to be responsible for expenditure, and so limiting the number of seats for this first event is one way we can do that.&rdquo;</p>\n\n\n\n<p>For those who do not register and attend via Crowdcast, they can still watch and participate in the event through various social platforms:</p>\n\n\n\n<ul><li><a href=\"https://twitter.com/WPandUP\">Twitter</a></li><li><a href=\"https://www.facebook.com/WPandUP/\">Facebook</a></li><li><a href=\"https://www.youtube.com/wpandup\">YouTube</a></li><li><a href=\"https://www.twitch.tv/wpandup\">Twitch</a></li></ul>\n\n\n\n<p>Each of the sessions will feature various international speakers who will give a talk on their area of expertise.  The sessions will follow a specific format and run for one hour.  For the first 10 minutes of each session, the individual speaker or group will talk about the &ldquo;for good&rdquo; entity they represent.  They will follow up with a 35-minute talk on their subject.  Afterward, the speaker and attendees will participate in an open Q&amp;A session.</p>\n\n\n\n<p>The #DoSummitGood event is designed to give back.  &ldquo;Throughout the event, a donation form will be shared,&rdquo; said Maby.  &ldquo;All money raised through this form will be distributed between the various non-profits that feature in the event.&rdquo;</p>\n\n\n\n<p>Cory Miller, a Trustee at WP&amp;UP, will kick off the event with a session titled &ldquo;The Iceberg of Life: How I Manage the Ups and Downs.&rdquo;  Miller has been open about mental health within the WordPress community and his struggles for several years.  He has previously written on the topic of <a href=\"https://corymiller.com/the-iceberg-of-life/\">The Iceberg of Life</a>, which is worth reading if you are looking to get an early look into what his session may be about.</p>\n\n\n\n<p>Marieke van de Rakt will follow up with a talk about improving a site&rsquo;s SEO.  She is representing Yoast and its <a href=\"https://wptavern.com/yoast-launches-fund-to-increase-speaker-diversity-at-tech-conferences\">diversity fund program</a>, which helps to remove the financial burdens that cause minorities or underrepresented groups to speak at conferences.</p>\n\n\n\n<p>The nine sessions have a diverse group of speakers from various organizations that are currently providing support for charities, minorities, and other groups that need help.  The topics include turning passion into a profession,  bringing more diversity to speaking roles at conferences, and more.  Two of the sessions will be round-table events with multiple speakers.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 19:26:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Matt: Distributed Podcast: Clark Valberg, Lydia X. Z. Brown, Stephen Wolfram, and the Grand Meetup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50496\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://ma.tt/2019/11/distributed-podcast-updates/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9149:\"<p>If y&#8217;all haven&#8217;t caught up recently with my podcast <a href=\"https://distributed.blog/\">Distributed</a>, this is a perfect moment to do so—the past several weeks have been full of insights from folks like InVision CEO Clark Valberg, attorney and advocate Lydia X. Z. Brown, Stephen Wolfram, and some of my own Automattic colleagues in-person at our Grand Meetup. </p>\n\n\n\n<p>You can subscribe at <a href=\"https://podcasts.apple.com/us/podcast/distributed-with-matt-mullenweg/id1463243282\">Apple Podcasts</a>, <a href=\"https://podcasts.google.com/?feed=aHR0cHM6Ly9kaXN0cmlidXRlZC5ibG9nL2NhdGVnb3J5L3BvZGNhc3QvZmVlZC8%3D\">Google</a>, <a href=\"https://overcast.fm/itunes1463243282/distributed-with-matt-mullenweg\">Overcast</a>, <a href=\"https://open.spotify.com/show/59bljZU7v9cJTXKvlfnFN8?si=Iv4hgJMFRCCx4SpmXlLArg\">Spotify</a>, or wherever you like to listen.&nbsp;</p>\n\n\n\n<span id=\"more-50496\"></span>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/11/26/the-importance-of-irl-in-a-world-of-screens/\">The Importance of IRL in a World of Screens (Automattic Grand Meetup)</a></h2>\n\n\n\n<p>&#8220;When you work in a distributed company, every time that you interact with your colleagues via text… you are taking out of your social bank account with them. So when you get people together, that’s when you have the opportunity to see each other face-to-face, and remind everybody that you’re all human beings. And fill that social capital back up because it’s so hard to communicate via text.&#8221;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/11/14/clark-valberg-invision/\">Building the Tools That Bring the Screen to Life (Clark Valberg, InVision)&nbsp;</a></h2>\n\n\n\n<p>&#8220;We needed it as a talent hack, as a talent arbitrage. Hire the best people wherever they happen to be, figure everything out later, hire them quickly, get them in the ship as early as possible and start seeing results. How can I just hire the best people no matter where they are?&#8221;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/10/31/making-work-accessible-wherever-it-happens/\">Making Work Accessible, Wherever It Happens (Lydia X. Z. Brown)</a></h2>\n\n\n\n<p>&#8220;I have believed from a very young age that every single one of us has a moral obligation to use whatever resources we have — time, money, knowledge, skills, emotional energy, access to physical resources — however that might be defined — that we each have a moral obligation to use those resources in service of justice, and fighting against injustice and oppression and violence in all of its forms, structural and individual, subtle and overt.&#8221;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/10/17/inside-toptals-distributed-screening-process/\">Inside Toptal&#8217;s Distributed Screening Process (Taso Du Val)&nbsp;</a></h2>\n\n\n\n<p>&#8220;I was going into an office but not seeing anyone or interacting with anyone except myself. So it almost was this zombie-like walk to the office every morning where I’m going to the office because I go to work, but I don’t see anyone who I work with. [laughs] And so I actually started waking up and just working on my computer at home. And then I said to myself, &#8216;Well, why am I even working from home?\'&#8221;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/10/03/turning-ideas-into-real-things/\">The Machine That Turns Ideas Into Real Things (Stephen Wolfram)&nbsp;</a></h2>\n\n\n\n<p>“You can do things that are very commercial, but a little bit intellectually boring. And it tends to be the case that you’re doing a lot of rinse-and-repeat stuff if you want to grow purely commercially, so to speak. Or, you can do things that are wonderful intellectually, but the world doesn’t happen to value them and you can’t make commercial sense that way. And I’ve tried to navigate something in between those two where it’s where I’m really intellectually interested and where it’s commercially successful enough to sustain the process for a long time.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/09/19/welcome-to-the-chaos/\">Welcome to the Chaos (Sonal Gupta, Automattic)</a></h2>\n\n\n\n<p>“I like to trust people and give them autonomy. But I keep in touch with them very regularly and I think it becomes clear pretty quickly if somebody is not doing work. We look at performance, and we look at communication at a distributed company. Communication is oxygen.”&nbsp;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/09/05/managing-distributed-teams/\">Observe, Don’t Surveil: Managing Distributed Teams with Respect (Scott Berkun)</a></h2>\n\n\n\n<p>“To work at a remote company demanded great communication skills, and everyone had them. It was one of the great initial delights. Every corporation has the same platitudes for the importance of clear communication, yet utterly fails to practice it. There was little jargon at Automattic. No ‘deprioritized action items’ or ‘catalyzing of crossfunctional objectives.’ People wrote plainly, without pretense and with great charm.”&nbsp;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/08/22/build-distributed-engineering-teams/\">How to Build and Strengthen Distributed Engineering Teams (Cate Huston, Automattic)</a></h2>\n\n\n\n<p>“A senior engineer makes the whole team better, but we don’t want to be prescriptive about how people made the team better. That was up to them. There were options, but that was the expectation for everyone on the team. You come in, you’re an experienced engineer, we expect you to be making the whole team better in some way, and what that looks like is up to you.”&nbsp;</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/08/08/stay-connected-in-a-distributed-world/\">How to Stay Connected in a Distributed World (Leo Widrich)</a>&nbsp;</h2>\n\n\n\n<p>“I started to feel like I was hitting a wall. This thing that I always dreamt of, to have a profitable company, to be financially secure, to have a team… I felt that having that success, having some of that financial security — it left me unfulfilled in a lot of other areas. — in the sense of deep lasting connection and also a lack of emotional resilience to deal with the ups and downs that startup life comes with.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/07/25/helping-creativity-happen-from-a-distance/\">Helping Creativity Happen from a Distance (John Maeda)&nbsp;</a></h2>\n\n\n\n<p>“My point is blogging is good for you. It’s mental health, it’s expression, it’s sharing your process with the world. And when you relate to the world, your standard of quality floats to that value of the world. It’s a market economy of ideas and by putting ourselves out there, you become relevant.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/07/11/engineering-with-empathy/\">Engineering with Empathy (Han Yuan, Upwork)&nbsp;</a></h2>\n\n\n\n<p>“We really want to encourage empathy in general. And so a key part of empathy is being able to try to see the other person’s point of view. And in an organization as distributed as ours where people come from all around the world, we view it as an essential ingredient to developing deep and meaningful collaboration.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/07/11/how-to-do-hr-in-a-blended-company/\">How to Do HR in a Blended Company (Zoe Harte, Upwork)&nbsp;</a></h2>\n\n\n\n<p>“That means saying, ‘Okay, our entire organization will connect this many times a year in this many ways. There will be an all-department meeting once a month, once a quarter — whatever is appropriate — and that we will cover these three priorities and in broad progress and how it’s impacting the business overall.’ And then the expectation would be that the smaller subsets of teams are meeting in this way.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/07/02/on-building-automattic/\">On Building Automattic (Me)</a></h2>\n\n\n\n<p>“Our distributed roots did not come from some grand vision, but instead emerged from cold realities. Colocation (being in the same place, at the same time) is expensive!”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/06/13/is-remote-work-bs/\">Is Remote Work Bulls&#8212;t? (Arianna Simpson)</a></h2>\n\n\n\n<p>“I think having people come and interrupt you every 25 seconds, as is often the case in open floor plans, is definitely not the most productive situation. So the model I’ve seen work well, or the model I lean towards, is having an office where people are working from, but having private offices or spaces where people can plug in their headphones and just do work alone while still being in the same place as, hopefully, all of their colleagues.”</p>\n\n\n\n<h2><a href=\"https://distributed.blog/2019/05/30/could-vr-replace-the-office/\">For Years, VR Promised to Replace the Office. Could It Really Happen Now? (John Vechey, Pluto VR)</a></h2>\n\n\n\n<p>“The technology forces you to be present — in a way flatscreens do not — so that you gain authentic experiences, as authentic as in real life. People remember VR experiences not as a memory of something they saw but as something that happened to them.”</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 03:53:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: WordPress Black Friday Sales Roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95552\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wptavern.com/wordpress-black-friday-sales-roundup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11633:\"<div class=\"wp-block-cover alignfull has-background-dim-80 has-gray-900-background-color has-background-dim has-parallax bg-gray-900\"><div class=\"wp-block-cover__inner-container\">\n<h1 class=\"text-white\">WordPress Black Friday Sales Roundup</h1>\n\n\n\n<p class=\"has-medium-font-size font-secondary text-base\"><a href=\"https://wptavern.com/author/justintadlock\">Justin Tadlock</a>&nbsp;<span class=\"sep mx-2\">&middot;</span>&nbsp;November 26, 2019&nbsp;<span class=\"sep mx-2\">&middot;</span>&nbsp;<a href=\"https://wptavern.com/category/news\">News</a></p>\n</div></div>\n\n\n\n<p>&lsquo;Tis the largest shopping season of the year.  While you are gearing up for a big weekend of finding that perfect gift for your family and friends, you might take a moment to consider giving your website a little something for the holiday.</p>\n\n\n\n<p>The following is our roundup of WordPress hosting, services, and plugins that are on sale this week and next.</p>\n\n\n\n<h2>Hosting and Domain Deals</h2>\n\n\n\n<p>If you are in the market for a new host or have been sitting on a new domain name to purchase, now might be the time to start looking around to see if you can snag a good price.</p>\n\n\n\n<h3>BlueHost</h3>\n\n\n\n<p>BlueHost is running a weeklong event, which began on November 25.  The web host is offering 60% off WordPress, 50% off VPS, and 40% off WordPress Pro hosting. The offer includes a free domain for the first year.</p>\n\n\n\n<p><a href=\"https://www.bluehost.com/\">Visit BlueHost&rsquo;s site &rarr;</a></p>\n\n\n\n<h3>DreamHost</h3>\n\n\n\n<p>DreamHost is cutting their prices on new domain registrations from November 25 through December 3, which ranges from a low $0.79 for <code>.xyz</code> to $6.99 for <code>.com</code> registrations. Beginning on Friday, November 29, they are offering deals on their Shared Unlimited hosting for 1-year ($5.95/month) and 3-year ($4.95/month) paid plans.</p>\n\n\n\n<p><a href=\"http://dreamhost.com/\">Visit DreamHost&rsquo;s site &rarr;</a></p>\n\n\n\n<h2>WordPress Services</h2>\n\n\n\n<p>A couple of WordPress companies are offering markdowns on their services rather than products this shopping season.</p>\n\n\n\n<h3>WPScan</h3>\n\n\n\n<p>WPScan, an online WordPress vulnerability scanner, is giving a 20% discount for the first three months on any of their paid plans.  Use the coupon code <code>BLACKFRIDAY20</code> at checkout.</p>\n\n\n\n<p><a href=\"http://wpscan.io\">Visit WPScan&rsquo;s site &rarr;</a></p>\n\n\n\n<h3>WPDandy</h3>\n\n\n\n<p>WPDandy offers WordPress maintenance, management, and support, which includes backup and security services.  The team is currently running 50% off each plan available.  The Black Friday deal is currently open, but there is no mention of when it ends.</p>\n\n\n\n<p><a href=\"https://wpdandy.com/black-friday-2019\">See WPDandy&rsquo;s sale &rarr;</a></p>\n\n\n\n<h2>Plugins</h2>\n\n\n\n<p>If you have had your eye on a particular plugin but have yet to pull the trigger, now may be a good chance to grab it.  The following is a roundup of several plugins and plugin bundles.  Some are currently on sale.  Others will begin on Black Friday.  Most sales will last several days.</p>\n\n\n\n<h3>Saturday Drive</h3>\n\n\n\n<p>Saturday Drive, the company behind <a href=\"https://ninjaforms.com/\">Ninja Forms</a> and <a href=\"https://calderaforms.com/\">Caldera Forms</a>, has the most interesting Black Friday deal.  Users have a chance of getting between 40% and 100% off either plugin by using the spinner at checkout.  The company is also donating 10% of all sales to Operation Smile.  The promotion runs between November 29 and December 3.</p>\n\n\n\n<p>Read more about Saturday Drive&rsquo;s <a href=\"https://saturdaydrive.com/save-it-forward/\">Save it Forward event &rarr;</a></p>\n\n\n\n<h3>iThemes</h3>\n\n\n\n<p>iThemes has a large selection of products, including its popular BackupBuddy and iThemes Security Pro plugins.  The site is cutting prices 50% off any new plugin, combo pack, hosting, theme, Stash, or annual Sync plan from November 23 &ndash; December 2.</p>\n\n\n\n<p><a href=\"https://ithemes.com/coupon/black-friday-cyber-monday-sale/\">See iTheme&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>GiveWP</h3>\n\n\n\n<p>GiveWP is a donations plugin that allows visitors to contribute to your cause directly from your website. They are running a 50%-off special for the next week.  However, the sale is limited to the first 500 customers.  This would be a good time to snag the plugin if you plan on collecting donations for Giving Tuesday next week.</p>\n\n\n\n<p><a href=\"https://givewp.com/lps/black-friday/\">See GiveWP&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>Pootlepress</h3>\n\n\n\n<p>Pootlepress, a WordPress plugin and theme shop, is slashing 40% off their WooBuilder Blocks and Storefront Blocks plugins, which integrate WooCommerce and Gutenberg.  The sale begins on November 29 and ends on December 4.</p>\n\n\n\n<p><a href=\"https://www.pootlepress.com/\">Visit Pootlepress&rsquo; site &rarr;</a></p>\n\n\n\n<h3>Starfish Reviews</h3>\n\n\n\n<p>Starfish Reviews, a plugin designed to help businesses get more reviews on Google, Facebook, and other platforms, is currently on sale for 83% off. The lifetime deal ends on November 30.</p>\n\n\n\n<p><a href=\"https://starfish.reviews/2019-bfcm-ltd/\">See Starfish Review&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>ProjectHuddle</h3>\n\n\n\n<p>ProjectHuddle is a WordPress feedback plugin for use by agencies and freelancers to communicate with their clients. It allows clients to provide comments on mockups and more.  Each pricing plan has been cut by 40%.  The sale began on November 25 and runs through December 2.</p>\n\n\n\n<p><a href=\"https://projecthuddle.com/friday\">See ProjectHuddle&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>Paid Memberships Pro</h3>\n\n\n\n<p>Paid Memberships Pro is a WordPress community and memberships plugin that works with several payment gateways and integrates with community plugins such as bbPress and BuddyPress.  The website is cutting $100 from its Plus plan and $200 from its Unlimited plan, both of which locks in a lifetime renewal rate.  The offer runs from November 29 through December 2.  Use the <code>blackfriday</code> discount code at checkout.</p>\n\n\n\n<p><a href=\"https://www.paidmembershipspro.com/press/resources/\">See Paid Memberships Pro&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>Dev4Press</h3>\n\n\n\n<p>Dev4Press is a plugin shop that has a range of plugins, including bbPress tools, security, ratings, and more.  Customers can grab 25% off using the <code>BLACKCYBER</code> coupon code at checkout.  The discount can be applied to all plugins, add-ons, and club memberships.  The sale runs from November 27 through December 3.  </p>\n\n\n\n<p><a href=\"https://www.dev4press.com/promotion/2019/black-friday-cyber-monday-2019/\">See Dev4Press&rsquo; sale &rarr;</a></p>\n\n\n\n<h3>SiteOrigin</h3>\n\n\n\n<p>SiteOrigin is slashing 50% off their premium product bundle on Black Friday, November 29, which includes over 20 add-ons for their theme and plugin products.  Use the <code>NOVEMBER30</code> coupon code at checkout for the discount.  On Giving Tuesday, November 3, the team will provide email support to all users, which is typically only available on paid plans.</p>\n\n\n\n<p><a href=\"https://siteorigin.com/downloads/premium/\">Visit SiteOrigin&rsquo;s Premium page &rarr;</a></p>\n\n\n\n<h3>Stackable</h3>\n\n\n\n<p>Stackable, a premium blocks collection plugin, kicked off its version 2 launch on November 25.  The site is currently holding a flash sale that ends on November 27.  Use the discount code <code>LTD30</code> to grab 30% off.  After the flash sale, they will continue with a 20% discount for all annual plans when using the <code>LAUNCH20</code> discount code. This deal ends on December 9.  The website is also offering limited-time lifetime purchases during the event.</p>\n\n\n\n<p><a href=\"https://wpstackable.com/\">Visit Stackable&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>Hookturn</h3>\n\n\n\n<p>Hookturn, a company that specializes in add-on plugins for Advanced Custom Fields, is currently offering 40% off their ACF Theme Code Pro, ACF Custom Database Tables, and Advanced Forms Pro plugins.  The sale runs until December 3.</p>\n\n\n\n<p><a href=\"https://hookturn.io\">Visit Hookturn&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>SearchWP</h3>\n\n\n\n<p>SearchWP is an advanced search form plugin that offers a more robust search of content for WordPress.  The company&rsquo;s sale this year begins on Friday, November 29, and lasts until Tuesday, December 3.  The site is offering a 30%-50% discount on new plugin licenses and 40% off upgrades for existing customers at checkout.</p>\n\n\n\n<p><a href=\"https://searchwp.com/\">Visit SearchWP&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>OrganizeWP</h3>\n\n\n\n<p>OrganizeWP, a drag-and-drop plugin that allows users to manage their WordPress admin, will be on sale for 50% off support and update licenses.  The runs November 29 through December 3.  Discounts are automatically applied at checkout.</p>\n\n\n\n<p><a href=\"https://organizewp.com/\">Visit OrganizeWP&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>Gravity PDF</h3>\n\n\n\n<p>Gravity PDF, a plugin for automatically creating PDF documents for Gravity Forms, is currently holding a sale for 40% off their access passes.  The sale will end on Monday, December 2.</p>\n\n\n\n<p><a href=\"https://gravitypdf.com/l/2019-black-friday-and-cyber-monday-sale/\">See Gravity PDF&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>Meta Box</h3>\n\n\n\n<p>Meta Box, a custom fields plugin for developers, is offering 60% off their lifetime bundle, which brings the price from $499 down to $199.  The sales event lasts from November 26 through December 6.</p>\n\n\n\n<p><a href=\"https://metabox.io/black-friday/\">See Meta Box&rsquo;s sale &rarr;</a></p>\n\n\n\n<h3>WisdmLabs</h3>\n\n\n\n<p>WisdmLabs, a shop with various WooCommerce and LearnDash add-ons, will begin offering 30% discount on all products and bundles available through their site on November 28 and last through December 2.  Use the <code>BFCM30</code> coupon code at checkout.</p>\n\n\n\n<p><a href=\"https://wisdmlabs.com/premium-wordpress-plugins/\">See WisdmLabs&rsquo; sale &rarr;</a></p>\n\n\n\n<h3>MailOptin</h3>\n\n\n\n<p>MailOptin is an email opt-in form plugin that allows website visitors to sign up for an email subscription.  The site is offering a 25% discount for customers who use the <code>BCFM2019</code> coupon code from November 29 through December 3.</p>\n\n\n\n<p><a href=\"https://mailoptin.io\">Visit MailOptin&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>Social Rocket</h3>\n\n\n\n<p>Social Rocket, a social sharing plugin for WordPress that works with all the major social networks, is currently on sale for 33% off using the <code>BFCM2019</code> coupon code.  The discount is available through December 2.</p>\n\n\n\n<p><a href=\"https://wpsocialrocket.com/\">Visit Social Rocket&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>Charitable</h3>\n\n\n\n<p>Charitable is a fundraising plugin for WordPress that allows visitors to donate directly on users&rsquo; sites.  The website is offering 30% off its pro and agency payment options from November 29 through December 3.  Use the <code>PRO30BF19</code> code at checkout for the discount.</p>\n\n\n\n<p><a href=\"https://www.wpcharitable.com/\">Visit Charitable&rsquo;s website &rarr;</a></p>\n\n\n\n<h3>Sandhills Development</h3>\n\n\n\n<p>Sandhills Development is offering 25% off with the <code>BFCM2019</code> coupon code on all its products, which includes Easy Digital Downloads, AffiliateWP, Restrict Content Pro, Sugar Calendar, and WP Simple Pay.  The sale runs from November 29 through December 6.  They are also offering lifetime bundle deals and over $3,000 in prizes.</p>\n\n\n\n<p><a href=\"https://sandhillsdev.com/2019/11/sandhills-sale-event-2019/\">See Sandhills Development&rsquo;s sale &rarr;</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Nov 2019 21:29:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WPTavern: WP Tavern’s New Design: No More Wood Grain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95513\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wptavern.com/wp-taverns-new-design-no-more-wood-grain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4871:\"<img />Screenshot of the new homepage design.\n\n\n\n<p>If you are viewing WP Tavern from your browser today, you might be a bit shocked.  Things are different &mdash; much different.  If you are reading this post via email or a feed reader, hop on over to the live site to take a look.</p>\n\n\n\n<p>Welcome to the new design!</p>\n\n\n\n<p>When I accepted the job to write for WP Tavern, some of you asked if I would be handling anything with the design and development aspects of the site.  Today, you have your answer.  I was tasked with overhauling our dated design and getting something fresh up.</p>\n\n\n\n<p>From the moment I logged in and started peeking behind the curtain, the task seemed almost insurmountable.  WP Tavern has had nearly 5,000 posts over 12 years.  It has content mixed and matched with plugins that have not been used in years.  Being perfectly honest, I was unsure what some plugins did for a long while.  However, I have gotten to know the site and its inner-workings over the past couple of months, and the new design has taken shape around some of that.</p>\n\n\n\n<p>Rather than taking the time to do a complete overhaul of everything, which is sorely needed, our team decided the best course of action was to get a new theme up and iterate.</p>\n\n\n\n<p>The first step of the design process was to remove the wood-grain background.  There is likely some nostalgia attached to that for some of our readers (some of you may have grown accustomed to it over the last 12 years), but it is the one thing we universally agreed to drop.</p>\n\n\n\n<p>The second step was to move to a sidebar-less design.  Our team at the Tavern decided that nearly everything in the previous design&rsquo;s sidebar offered few benefits to our readers.  It was a distraction that took away from the content.</p>\n\n\n\n<p>The next step of the design process was to add complete compatibility with the block editor (Gutenberg).  With no sidebar, this will open the door for us to do more interesting things with media and other elements over the long term.</p>\n\n\n\n<p>Overall, the goal was to make the reading process nicer for all of you who visit the site.  I hope that we have accomplished that.</p>\n\n\n\n<h2>The Future Design of the Site</h2>\n\n\n\n<p>This is version 1.0 of the new design.  A large part of the process was laying the groundwork in a way that it would be easy to make changes going forward.</p>\n\n\n\n<p>There are still some missing elements that will be re-added soon.  Primarily, the site needs a search form in the header/navigation area.  Redesigning the email subscription form and moving it to a different location is high on the list.</p>\n\n\n\n<p>The site should load faster than before. However, there is still a lot of cleanup to do with plugins over the long haul. Page loads should be even snappier as we continue to iterate.</p>\n\n\n\n<p>I also hope we can add a custom logo and other Tavern-<em>esque</em> elements that bring more personality to the site as we move along in this ongoing process.</p>\n\n\n\n<p>However, this is the point where you, the WP Tavern audience, get to join the conversation.  Before pushing too far with additional changes, it is important to get your feedback about what you want to see in the coming days, weeks, and months.  Ultimately, the goal is to serve you WordPress news and information in the best way possible.</p>\n\n\n\n<p>Feedback is certainly welcome.  If there is a missing element you want to see return, post it in the comments.  If there is something you would like to see added, don&rsquo;t be shy about letting us know.</p>\n\n\n\n<p>The <a href=\"https://wptavern.com/contact-me\">contact form</a> is also always open for private feedback or for letting us know about a problem with the site.</p>\n\n\n\n<h2>What Is Under the Hood?</h2>\n\n\n\n<p>To get the theme up and running, I reused a ton of code from my previous theme-related work before joining WP Tavern. It made sense to use a build system I already knew from top to bottom and not reinvent the wheel.</p>\n\n\n\n<p>The CSS system is a customized and stripped-down version of <a href=\"https://tailwindcss.com/\">Tailwind CSS</a>.  Tailwind is a utility-first CSS framework.  For most of my professional career, I have shied away from utility-based frameworks.  However, Tailwind is a well-designed framework with a smart naming scheme that strikes a balance between readability and practicality.  It is one of the few that has clicked with me.  WordPress also uses several utility classes, especially with the block editor.  The two systems made sense together.</p>\n\n\n\n<p>WordPress front-end output and some plugins (I&rsquo;m looking at you, Jetpack) do not make it easy to take a full utility-class approach.  Everything else was addressed on a case-by-case basis.</p>\n\n\n\n<p>If any WordPress developers want to know more about the technical aspects, I am happy to answer questions.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 25 Nov 2019 20:32:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"bbPress: bbPress 2.6.2 is out!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://bbpress.org/?p=206111\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://bbpress.org/blog/2019/11/bbpress-2-6-2-is-out/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1342:\"<p>bbPress 2.6.2 fixes <a href=\"https://bbpress.trac.wordpress.org/query?status=closed&group=resolution&milestone=2.6.2\">5 more small bugs</a> that were reported by community members in our support forums:</p>\n\n\n\n<ul><li>Hierarchical replies in threaded discussion topics were broken for sites that were enabling the visual editor, so we unbroke it.</li><li>Sites with custom <code>bbpress.css</code> files were not having their custom styling applied in some cases. We fixed at least one case that we could find. Let us know if this is still not working correctly for you.</li><li>BuddyPress Notifications stopped working completely, but that wasn&#8217;t on purpose so we made them work completely again.</li><li>The &#8220;Edit&#8221; part of a URL pattern was not customizable inside of Forum Settings. Now it is!</li><li>One of the repair tools had a typo in it, so we untypo&#8217;ed it.</li></ul>\n\n\n\n<p>Thanks to everyone in the forums for being persistent and helping us identify all these annoyances. </p>\n\n\n\n<p>We&#8217;re going to continue minor releases as bugs get reported and fixed. The team is committed to making sure your forums are running as smoothly as can be, so don&#8217;t be surprised if you see 2.6.3 soon too! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f41d.png\" alt=\"?\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Nov 2019 18:24:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"John James Jacoby\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Optimizing Code in a World That Doesn’t Want to Optimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95433\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/optimizing-code-in-a-world-that-doesnt-want-to-optimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6757:\"<p><em>Premature optimization is the root of all evil.</em></p>\n\n\n\n<p>It is a common saying among developers.  It makes sense.  Optimizing prematurely can mean redoing work down the line, and time is the developer&rsquo;s most finite resource.  It can mean spending that precious time optimizing for scenarios that do not yet exist for a product&rsquo;s users.  It can mean writing code that is harder to understand with unclear performance gains.</p>\n\n\n\n<p>While participating with the WordPress theme review team about a year ago, I came across that nugget of advice once again.  <em>Premature optimization is the root of all evil.</em>  The reply was to a theme author who was looking to decrease the number and weight of scripts their theme needed to load.  On one hand, the theme author could load a 1.29 kb script with no dependencies to get the job done.  The other option was to use the jQuery-dependent script included in core WordPress for a total of 105 kb because &ldquo;most&rdquo; WordPress sites are loading jQuery anyway.</p>\n\n\n\n<p>For me, the answer was simple.  Use the smaller script unless the core script was already loaded on the front end.  I did not think of it in terms of <em>premature optimization</em>.  I thought of it as plain old, run-of-the-mill, everyday optimization.</p>\n\n\n\n<p>Developers should not confuse <em>premature optimization</em> with the concept of making smart design decisions early in the process.  Nor should they wait until the final stage of development to start optimizing, a time when the focus is on getting a product out to end-users.  That is a sign of a poor product design process.</p>\n\n\n\n<p>Over the past year, that conversation stuck with me.  It helped me become more cognizant of a terrifying trend, not just in the WordPress developer community, but with web development in general.  Far too often, developers are so far removed from normal users and the technology those users rely on that optimization is little more than an afterthought.  Instead, it should always be at the forefront of any developer&rsquo;s mind.</p>\n\n\n\n<p>The overreliance on this misused quote has helped push the trend of measuring page weight in megabytes instead of kilobytes.  It is too often used as a catchall justification for not doing any optimization in the development phase while making up for it with file compression and caching in production.</p>\n\n\n\n<p>Part of writing quality code is optimizing that code during every stage of the development process.  It is about making hard decisions to cut unnecessary things as the software comes together.  Caching should be a last resort after everything else has been cleaned up.</p>\n\n\n\n<p>Premature optimization is more about attempting to optimize when there are no clear gains or working on micro-optimizations that alter the software&rsquo;s design for little-to-no benefit.  It does not mean overlooking obvious performance boosts during development.</p>\n\n\n\n<h2>Not Everyone is on Gigabit Internet</h2>\n\n\n\n<p>Most developers I know are on super-fast internet connections, often with 1 Gbps download speeds and unlimited data.  In that situation, it is easy to forget that large chunks of the world are still on slow connections with data caps.</p>\n\n\n\n<p>Some may even associate slow connections with third-world countries where millions of people are on 2G cell phone technology.  However, there are large swaths of the United States and other developed countries that have no direct cable or DSL lines, which are commonly available in cities and suburbs.</p>\n\n\n\n<p>This disconnect is directly evident when other developers have initiated chats with me.  In the past couple of years, it has been increasingly common for them to ask for a video chat.  It is not even questioned whether such a thing is possible (video chats are unreliable at best for me).  The ability to video chat at any time is taken for granted.</p>\n\n\n\n<p>There are two internet service options in the area that I live in:  satellite or dial-up.  Even the local telephone company refuses to offer DSL in this area because of infrastructural costs with decades-old phone lines.  Because of the prohibitive costs of satellite internet access, which typically comes with data limits, many are stuck with dial-up.  Cell phone companies are changing the game to a degree, assuming service is reliable, but there are downfalls with going that route, which can include data or hotspot limitations.</p>\n\n\n\n<p>For such a technologically-advanced country, many of its people are barely catching up to where others were a decade ago.</p>\n\n\n\n<p>While I am fortunate enough to choose where I live and have nothing holding me back from moving, most do not have that option.  They are stuck with the best they can afford.  Even in rural areas, the internet is an inescapable part of daily life, and developers are not making it easy for these people.</p>\n\n\n\n<p>While this is anecdotal, it is the stark reality of rural life in pockets of the US.</p>\n\n\n\n<p>The upside of living in the backwoods of Alabama is that it has changed my perspective as a developer.  It has meant that I needed to question every code decision for every plugin and theme I built.  With data caps, I needed to make sure that I was not using too many resources.  </p>\n\n\n\n<p>More than anything, having a data cap changed how I used the internet.  I now run an ad-blocker.  I have an extension to kill videos from auto-loading.  I disable JavaScript on heavy sites that I need to use.  Some sites seem interesting, but I never return to them because they are resource hogs.</p>\n\n\n\n<p>When you live in a place where every byte matters, you tend to avoid wasting them.</p>\n\n\n\n<p>While not always successful, since my transition to small-town life, I have attempted to build applications in a way that served people who are not privileged enough to have blazing-fast internet access.</p>\n\n\n\n<p>Pointing this out is about making sure developers are aware that optimization matters.  It matters at every stage of the development process.  It matters because these people with slow connections and data caps also need to buy products, use services, read content, and do all the other things that people do on the web.</p>\n\n\n\n<p>If you are a developer who is thinking about adding that slider, swiping mechanism for mobile, or some other slick gadget, think about those of who must wait for that feature to load.  Check that its dependencies are not loading too many extra resources.  Do some research to see if you can locate a lighter-weight implementation.  But, first, ask yourself if it is necessary.</p>\n\n\n\n<p>The themes and plugins that WordPress developers build should never be the bottleneck for a website.  We can do better.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Nov 2019 21:31:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:11:\"\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"HeroPress: Five Years Since The Dream Began\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=3019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://heropress.com/five-years-since-the-dream-began/#utm_source=rss&utm_medium=rss&utm_campaign=five-years-since-the-dream-began\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3140:\"<p>Exactly five years ago today I woke up to an email from Dave Rosen telling me my life was about to change.  He didn&#8217;t know yet what we&#8217;d build, but he offered me the chance to build something.</p>\n\n\n\n<p>From that seed we crafted HeroPress. It was a battle, filled with uncertainty, and at times tears, but I can say without hesitation that HeroPress has changed my life, and the life of my family, for the better.</p>\n\n\n\n<p>Never, ever did I expect to become friends with so many people from so many places. HeroPress has changed the way I look at the world, and the people in it. It&#8217;s influenced my job opportunities. It&#8217;s opened doors for me to places that I didn&#8217;t know existed.</p>\n\n\n\n<p>As always, I want to say thank you.  Thank you to Dave for planting the seed.  Thank you to all the contributors over the years, building something great.  Thank you to people willing to retweet for me every week. Thank you to all the people who&#8217;ve trusted me with their stories.</p>\n\n\n\n<p>Here&#8217;s hoping for another five years!</p>\n\n\n\n<img />Dave Rosen and I doing the X-Team X.\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Five Years Since The Dream Began\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Five%20Years%20Since%20The%20Dream%20Began&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffive-years-since-the-dream-began%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Five Years Since The Dream Began\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffive-years-since-the-dream-began%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffive-years-since-the-dream-began%2F&title=Five+Years+Since+The+Dream+Began\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Five Years Since The Dream Began\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/five-years-since-the-dream-began/&media=https://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=Five Years Since The Dream Began\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Five Years Since The Dream Began\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/five-years-since-the-dream-began/\" title=\"Five Years Since The Dream Began\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/five-years-since-the-dream-began/\">Five Years Since The Dream Began</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 Nov 2019 15:21:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WPTavern: WP Agency Summit Kicks Off December 6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95420\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com/wp-agency-summit-kicks-off-december-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4819:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p><a href=\"https://wpagencysummit.com/\">WP Agency Summit</a>, a virtual event for WordPress agencies, will kick off December 6, 2019, and last through December 16.  The event will feature daily sessions by over 30 WordPress professionals that are designed to help agencies grow their business.  Each session will be free to view, but there will be a price tag attached after the event closes.</p>\n\n\n\n<p>Jan Koch, owner WP Mastery, is running the event.  WP Agency Summit is for profit, but Koch expressed a desire to give something back to the community that has helped him over the years.  &ldquo;I want this event to deliver value to the WP community, because I myself have received free support countless times from Facebook groups, forums, etc.,&rdquo; he said.  &ldquo;That&rsquo;s why the event is free to watch online while it&rsquo;s running.&rdquo;</p>\n\n\n\n<p>The event is primarily aimed at WordPress agencies, but others may find value in it.  &ldquo;This event is also interesting for WordPress freelancers and digital agencies who occasionally use WordPress,&rdquo; said Koch.  &ldquo;However, being a WordPress agency owner myself, I wanted to ensure that business owners like myself and those in similar situations get the most value from the event.&rdquo;</p>\n\n\n\n<p>Video sessions will be available to view for 48 hours at no cost.  For those who sign up for a free pass, they can upgrade to lifetime access for $127. That lifetime access will go up to $197 during the event and $497 afterward.</p>\n\n\n\n<p>Potential buyers may want to opt for the free option before deciding whether future access to the sessions and bonus materials are worth plunking down the cash.  For an agency, the cost is minimal either way.  However, for a solo freelancer, the $497 price is high enough to warrant caution.  Most will want to check out the material first.</p>\n\n\n\n<p>Each of the video sessions is prerecorded and edited rather than shot live.  Koch is using Vimeo Pro to host the videos.  There will be a live hangout to begin the event.  Attendees and speakers will also get a Facebook group invite for asking questions and engaging with each other.</p>\n\n\n\n<p>Cloudways, Siteground, and MainWP are sponsoring the event, which helps cover some of the up-front costs.  Outside of that, Koch is handling the remainder of those costs out of his pocket but is hopeful for a positive return through the sale of lifetime access to the materials.</p>\n\n\n\n<p>Koch first ran a virtual summit called &ldquo;The WP Summit&rdquo; in 2015, which was a more broad event based on various WordPress topics.  That event had over 2,000 registrations.  &ldquo;As you can imagine, just talking about topics related to WP resulted in a very wide-spread speaker lineup, so there weren&rsquo;t any clear takeaways,&rdquo; said Koch.</p>\n\n\n\n<p>The idea for WP Agency Summit has been in Koch&rsquo;s mind since 2018.  It wasn&rsquo;t until some conversations with others at WordCamp Europe (WCEU) in 2019 that it started coming together.  &ldquo;After WCEU, I invested in a virtual training for summits and hired a mentor to properly set up the WP Agency Summit,&rdquo; he said.  &ldquo;My goal is to run 4 events like this in 2020, so this summit is serving as &lsquo;crash test dummy&rsquo; and foundation at the same time.&rdquo;</p>\n\n\n\n<h2>The Speaker Lineup</h2>\n\n\n\n<p>There are over 30 speakers signed on for the event.  Kim Doyal, a content marketer formerly known as &ldquo;The WordPress Chick,&rdquo; will teach agencies how to write copy that attracts higher-paying clients.  Ahmad Awais, core WordPress contributor, will teach how to save time writing code in the VS Code editor.</p>\n\n\n\n<p>Most sessions will focus on how agencies can grow their business with topics related to recurring revenue, marketing, and working with clients.  Each day of the event will feature three or four sessions.</p>\n\n\n\n<p>WP Agency Summit is hosting a diverse male lineup of over 20 speakers from Europe, Asia, Australia, Africa, and the US.  However, there are only four sessions lead by women within the industry.  &ldquo;I recognize this as a problem with my event,&rdquo; said Koch.  &ldquo;The reason I have so much more male than female speakers is quite simple, the current speaker line-up is purely based on connections I had when I started planning for the event. It was a relatively short amount of time for me, so I wasn&rsquo;t able to build relationships with more female WP experts beforehand.&rdquo;</p>\n\n\n\n<p>Koch assures that he will have a more balanced ratio for upcoming summits in 2020 and beyond.  &ldquo;Even in this prelaunch phase, I already got in touch with many outstanding women in the WP community which would make perfect speakers for the next events,&rdquo; he said.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Nov 2019 19:50:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"HeroPress: Building A WordPress Business In Iran – ساختن یک زندگی وردپرسی در ایران\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=3012\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:148:\"https://heropress.com/essays/building-a-wordpress-business-in-iran/#utm_source=rss&utm_medium=rss&utm_campaign=building-a-wordpress-business-in-iran\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:19728:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2019/11/112019-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: Over the years, WordPress transformed my personal and profesional life. In Persian: در طی این سالها، وردپرس زندگی شخصی و حرفه‌ای من را تغییر داد.\" /><div class=\"c-message__content c-message__content--feature_sonic_inputs\">\n<div class=\"c-message__message_blocks c-message__message_blocks--rich_text\">\n<div class=\"p-block_kit_renderer p-block_kit_renderer--absorb_margin\">\n<div class=\"p-block_kit_renderer__block_wrapper p-block_kit_renderer__block_wrapper--first\">\n<div class=\"p-rich_text_block\" dir=\"auto\">\n<div class=\"p-rich_text_section\"><a href=\"https://heropress.com/feed/#fas\">این مقاله به زبان فارسی نیز در دسترس است.</a></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<p>I purchased my first computer set when I was 19 years old, but several years before that, at the age of 15, I took a computer and MS-DOS training course and without having a computer, by merely practicing on paper, I managed to get the perfect score on the final exam.</p>\n<p>It was during those years that internet gradually entered our town. Well, don’t be shocked. Internet was introduced to our small town pretty late and we got acquainted with this technological phenomenon very late. However, internet instantly found its place in my daily routine and I was fascinated by it.  After surfing the internet for a year, I was little by little encouraged to find out what a website is and how it works. Thus, I familiarized myself with the first programming language, that is, HTML and began learning it and given my enthusiasm, I mastered it in less than 10 days.</p>\n<p>I was increasingly attracted to the internet and the issues pertinent to it, and soon enough I was drawn to various internet technologies. In less than a year, I was able to learn PHP, CSS, and HTML and relying on my limited knowledge, I began testing different systems and scripts.</p>\n<h3>Introduction to Blogging</h3>\n<p>During those same years, I worked with various blog systems, one of which was B2 system. A little while later, while conducting tests, doing installations, and having fun, I encountered a system which was quite similar to B2. I installed it. Then, I entered its various parts.  I found its management system, templates and codes quite appealing and easy to work with. Thus, I began translating it into Persian for my personal purposes, and in less than a week, I turned most of its various parts into Persian and they were ready to be used. Yet, due to certain reasons, I failed to install this system on my host or test it online. But I kept the system on my computer and I worked with it and enjoyed it. Yes, that system was one of the first versions of WordPress.</p>\n<p>Prior to working with WordPress, I had worked with various systems and scripts, and I was primarily accustomed to Joomla. However, simplicity, convenience, and interesting environment of WordPress drew me towards this system and I kept working with it.</p>\n<p>I was by nature shy and reticent; therefore, I was not that active in any groups or forums –this was the case in my personal life as well as on the web. Consequently, during the first few years of my activity in the field of WordPress, I hardly ever participated in WordPress forums or local groups.</p>\n<h3>Getting Involved</h3>\n<p>However, one of my friends who was active in the field of Persian WordPress, invited me to collaborate with one of the Persian WordPress support forums and this was a new beginning for me in the area of localization of WordPress.</p>\n<p>My keen interest in working with WordPress as well as helping others work and become more familiar with it made me spend a lot of time daily in the Persian WordPress forum. Nevertheless, due to the shortcomings and needs of the Persian WordPress community, we also created another support website. Following the creation of this new website, many users were attracted to it and gradually we got a lot of feedback from the Persian WordPress community. So, we became further involved with the Persian WordPress community and the scope of our activities expanded.</p>\n<p>It was during these years that I got my first formal job offer in the field of WordPress and I launched the first WordPress website for a client and received money in return for my services.  This experience highly motivated me and helped me envision my future as a WordPress developer. Meanwhile, with the help of some of my friends, I started a small web design and development company which was supposed to focus on coding and programming electronic components, but my keen enthusiasm for web development drew the entire team to focus on web design and development. Due to my numerous activities in the field of WordPress and my growing recognition as a WordPress activist, over the course of a few years, virtually all of our company activities centered on WordPress as the main basis of our work, and now we are one of the active supporters of WordPress in Iran.</p>\n<h3>Transformations</h3>\n<p>Over the years, WordPress transformed my personal and professional life. My personal life was changed in the respect that from a shy, quiet and inactive guy, I turned into an energetic, active person interested in discussions and participation in social events. Along the way, I also met great and influential people, including my future spouse.</p>\n<p>We organized various gatherings and meetups in the field of WordPress. We held WordPress seminars. We set up various public forums and groups to enhance the impact of WordPress and educate newcomers, and thus, many changes occurred in my overall mood and personality.</p>\n<p>Besides, prior to the general change of direction in our company towards web and especially WordPress, our revenues were low and the company had a very slow growth; yet following our change of direction and basing the structure of the company on WordPress, our annual growth rate increased dramatically and there was a considerable increase in the size of the company, number of the personnel, and payments.</p>\n<p>I should also mention that I am a graduate of textile engineering. However, my field of study has nothing to do with my career interests. Since from a very young age I dreamt of working in the field of computer science, even studying an irrelevant major did not stop me from pursuing my old dream and while studying textile engineering, I worked in the field of computer science and in my own company.</p>\n<p>Now, 16 years after my first encounter with WordPress, it has pervaded every aspect of my life and has changed me personally, mentally, and professionally and has influenced my choice of career and business. And I am really glad that on that day I became familiar with WordPress and started working with it and am still involved with it up to this day, because not only my life changed as a result, but also I managed to educate so many people and help them transform their lives in a way that WordPress played a major role in their lives and contributed to their further success.</p>\n<h1 id=\"fas\">ساختن یک زندگی وردپرسی در ایران</h1>\n<p>من اولین کامپیوتر خود را وقتی ۱۹ ساله بودم خریدم ولی چندین سال قبل از آن  در سن 15 سالگی به کلاس آموزش کامپیوتر و دوره آموزشی کار با DOS رفتم  و بدون داشتن کامپیوتر و با تمرین روی کاغذ توانستم نمره کامل رو در آزمون نهایی کسب کنم.</p>\n<p>در همان سالها بود که اینترنت کم کم وارد شهر ما شد، بله تعجب نکنید درشهرکوچک ما اینترنت خیلی دیر وارد شد و ما خیلی دیر با این پدیده آشنا شدیم اما اینترنت به سرعت جای خود را در کارهای روزمره من باز کرد و من شیفته آن شدم بعد از یک سال کار کردن با اینترنت من کم کم ترغیب شدم که بفهمم سایت چیست و چگونه کار میکند و با اولین زبان یعنی HTML آشنا شدم و شروع به یادگیری آن کردم و با اشتیاق فراوانی که داشتم آن را در کمتر از ۱۰ روز یاد گرفتم.</p>\n<p>من هر روز بیشتر جذب اینترنت و موضوعات مرتبط با آن می شدم و به سرعت به سوی تکنولوژی های مختلف اینترنتی کشیده شدم. یک سال هم طول نکشید که توانستم HTML / CSS / PHP را یاد بگیرم و با همون دانش اندک، شروع به تست سیستم و اسکریپتهای مختلف کردم.</p>\n<h3>مقدمه‌ای برای شروع</h3>\n<p>در همان سال‌ها من با سیستم‌های وبلاگی مختلفی کار کردم که یکی از آن‌ها سیستم b2 بود. کمی بعدتر در همین تستها و نصب‌ها و بازیگوشی ها  با سیستمی مواجه شدم که بسیار شبیه b2 بود. آن را نصب کردم سپس وارد بخش‌های مختلف آن شدم، سیستم مدیریت، بخش قالب و کدهای آن و بسیار برایم ساده و جالب و جذاب به نظر رسید و به همین دلیل شروع به فارسی کردن آن برای کارهای شخصی خود کردم و کمتر از یک هفته بخش‌های مختلف آن را تا حدود زیادی فارسی و آماده استفاده کرده بودم. اما به دلایل خاصی موفق نشدم که آن را بر روی هاست خود نصب و به صورت آنلاین تست کنم. ولی آن سیستم را بر روی کامپیوتر خود نگه داشتم و با آن کار می کردم و لذت می بردم. بله آن سیستم یکی از اولین نسخه های وردپرس بود.</p>\n<p>من قبل از کار با وردپرس با سیستم ها و اسکریپت های مختلفی کار کرده بودم و بیشترین اسکریپتی که با آن انس گرفته بودم جوملا بود اما سادگی و روانی و محیط جذاب مدیریت وردپرس باعث شد که من به سمت وردپرس کشیده شوم و کار با آن را ادامه دهم.</p>\n<p>من ذاتا آدم کم حرف و خجالتی بودم و به همین دلیل خیلی در گروه ها و انجمن های خاصی فعالیت نمی‌کردم و این هم شامل وب و هم شامل زندگی عادی من میشد به همین دلیل تا چند سال اولیه فعالیت من در وردپرس، خیلی در انجمنهای تخصصی و یا گروه های محلی آن  فعالیتی نداشتم.</p>\n<h3>شروع مشارکت</h3>\n<p>تا اینکه یکی از دوستان من که از فعالان وردپرس در زبان فارسی بود من را دعوت به همکاری در یکی از انجمن های پشتیبانی وردپرس به زبان فارسی کرد و این شروعی دوباره برای من در زمینه محلی سازی وردپرس بود.</p>\n<p>علاقه زیاد من به کار با وردپرس و همچنین کمک به دیگران برای کار و آشنایی بیشتر با وردپرس باعث شد که من روزانه زمان زیادی را در انجمن وردپرس فارسی صرف کنم. اما با توجه به کمبود ها و نیازهایی که جامعه فارسی داشت ما یک سایت پشتیبانی دیگر را نیز ایجاد کردیم با ایجاد سایت جدید کاربران زیادی جذب ما شدند و کم کم ما بازخوردهای زیادی را از جامعه فارسی گرفتیم به همین دلیل بیشتر درگیر جامعه فارسی وردپرس شدیم و دامنه فعالیت های ما نیز گسترش پیدا کرد.</p>\n<h3>دگرگونی</h3>\n<p>در همین سال‌ها اولین پیشنهاد کاری رسمی من در زمینه وردپرس رسید و من اولین سایت خود را برای یک مشتری با وردپرس برپا کردم و در قبال آن مبلغی را دریافت کردم که این موضوع باعث شد انگیزه زیادی در من شکل بگیرد و مسیر حرکتی آینده خود را در وردپرس ببینم. همزمان، با کمک چند نفر از دوستان خود یک شرکت طراحی و برنامه نویسی کوچک را تاسیس کردیم که روند آن قرار بود بر کدنویسی و برنامه نویسی برای قطعات الکترونیکی باشد اما اشتیاق فراوان من به طراحی وب باعث شد که نظر کلیه جمع نیز به سمت کدنویسی و طراحی وب کشیده شود. با توجه به فعالیت‌های زیاد من در وردپرس و بیشتر شناخته شدن من به عنوان یک فعال وردپرسی، در طی یک بازه زمانی چند ساله، کلیه فعالیت های شرکت ما نیز به سمت وردپرس کشیده شد و مبنای اصلی کارهای ما وردپرس شد و هم اکنون ما یکی از حامیان فعال وردپرس در ایران هستیم.</p>\n<p>طی سالیان مختلف وردپرس زندگی شخصی و کاری من را تغییر داد. زندگی شخصی من را از این جهت تغییر داد که از یک آدم خجالتی و کم حرف و کم فعالیت به یک آدم فعال، پر انرژی و علاقمند به بحث و گفتگو و حضور در اجتماعات تبدیل شوم. در این مسیر با افراد بزرگ و تاثیرگذار منجمله با همسر آینده خود نیز آشنا شدم.</p>\n<p>اجتماعات و میتاپهای مختلفی را در زمینه وردپرس راه اندازی نمودیم. سمینار های وردپرسی برگزار کردیم. انجمن ها و گروه‌های مردمی مختلفی را در جهت افزایش نفوذ وردپرس و آموزش آن به افراد تازه کار راه اندازی کردیم و به همین دلیل تغییرات زیادی در روحیه و خلقیات و شخصیت کلی من ایجاد شد.</p>\n<p>همچنین تا قبل از تغییر روند کلی شرکت ما به سمت وب و علی‌الخصوص وردپرس، شرکت درآمد خاصی نداشت و بسیار کند رشد می کرد اما پس از تغییر رویه و راه اندازی بستر اصلی شرکت بر روی وردپرس روند سالانه ما به شدت رشد کرد و هم از نظر اندازه و هم تعداد کارکنان و هم از نظر سطح دستمزد و حقوق پیشرفت چشمگیری در شرکت ایجاد شد.</p>\n<p>این را هم اضافه کنم که من فارغ التحصیل در رشته مهندی نساجی هستم. اما رشته تحصیلی من با رشته و علاقمندی کا ی من کاملا از هم جدا و نامرتبط هستند. چون من از جوانی آرزو و شوق کار کردن در زمینه کامپیوتر را داشتم و حتی تحصیل در رشته ای نامرتبط هم سبب نشد که دست از آرزوی قدیمی خود بردارم  و حتی همزمان با تحصیل در رشته نساجی، در زمینه کامپیوتر و در شرکت خود مشغول به کار بودم.</p>\n<p>حالا ۱۶ سال از اولین برخورد و کار من با وردپرس می‌گذرد و وردپرس تقریباً در همه زمینه های مختلف زندگی من نفوذ کرده و باعث تغییر من در زمینه شخصی، روحی و کاری و کسب و کار  من شده است و از این بابت بسیار خوشحال هستم که آن روز توانستم با وردپرس آشنا شده و شروع به کار کنم و تا به امروز نیز درگیر آن باشم.</p>\n<p>زیرا علاوه بر اینکه زندگی من تغییر کرد، توانستم افراد زیادی را نیز آموزش داده و به آنها کمک کنم تا زندگی‌ آنها نیز تغییر کند و وردپرس شاکله زندگی آنها را تشکیل داده و باعث موفقیت بیشتر آنها شود.</p>\n<p>&nbsp;</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\">\n<div class=\"rtsocial-twitter-horizontal\">\n<div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Building%20A%20WordPress%20Business%20In%20Iran%20%2D%20%D8%B3%D8%A7%D8%AE%D8%AA%D9%86%20%DB%8C%DA%A9%20%D8%B2%D9%86%D8%AF%DA%AF%DB%8C%20%D9%88%D8%B1%D8%AF%D9%BE%D8%B1%D8%B3%DB%8C%20%D8%AF%D8%B1%20%D8%A7%DB%8C%D8%B1%D8%A7%D9%86&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-wordpress-business-in-iran%2F\" rel=\"nofollow\" target=\"_blank\"></a></div>\n</div>\n<div class=\"rtsocial-fb-horizontal fb-light\">\n<div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-wordpress-business-in-iran%2F\" rel=\"nofollow\" target=\"_blank\"></a></div>\n</div>\n<div class=\"rtsocial-linkedin-horizontal\">\n<div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbuilding-a-wordpress-business-in-iran%2F&title=Building+A+WordPress+Business+In+Iran+%26%238211%3B+%D8%B3%D8%A7%D8%AE%D8%AA%D9%86+%DB%8C%DA%A9+%D8%B2%D9%86%D8%AF%DA%AF%DB%8C+%D9%88%D8%B1%D8%AF%D9%BE%D8%B1%D8%B3%DB%8C+%D8%AF%D8%B1+%D8%A7%DB%8C%D8%B1%D8%A7%D9%86\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران\"></a></div>\n</div>\n<div class=\"rtsocial-pinterest-horizontal\">\n<div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/building-a-wordpress-business-in-iran/&media=https://heropress.com/wp-content/uploads/2019/11/112019-min-150x150.jpg&description=Building A WordPress Business In Iran - ساختن یک زندگی وردپرسی در ایران\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران\"></a></div>\n</div>\n<p><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/building-a-wordpress-business-in-iran/\" title=\"Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران\"></a></div>\n<p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/building-a-wordpress-business-in-iran/\">Building A WordPress Business In Iran &#8211; ساختن یک زندگی وردپرسی در ایران</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 20 Nov 2019 04:30:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Morteza Geransayeh\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: 10up Releases GitHub Actions for Simplifying WordPress Plugin Deployment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95388\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/10up-releases-github-actions-for-simplifying-wordpress-plugin-deployment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6671:\"<p>10up announced the <a href=\"https://10up.com/blog/2019/wordpress-github-actions-streamline-plugin-deployment/\">public availability of two GitHub Actions</a> geared toward WordPress plugin developers yesterday.  The first Action allows developers to deploy plugin updates directly to the WordPress.org plugin directory by tagging a release on GitHub.  The second Action handles readme file and asset updates. </p>\n\n\n\n<p>On November 14, GitHub <a href=\"https://github.blog/2019-11-14-powering-community-led-innovation-with-github-actions/\">announced the public launch</a> of their GitHub Actions feature.  GitHub Actions are a way for developers to automate workflows from their Git repositories.  Actions can also be shared with others, reused across projects, and forked like any other public repository.</p>\n\n\n\n<p>Currently, there are over 1,300 GitHub Actions with more being added every day.  At least <a href=\"https://github.com/marketplace?utf8=%E2%9C%93&type=actions&query=wordpress\">nine of the current Actions</a> are related to WordPress, including an Action to <a href=\"https://wptavern.com/rtcamp-releases-github-actions-for-automated-code-review-deploying-wordpress-and-slack-notifications\">deploy WordPress by rtCamp</a>, but there will certainly be more to come in the future.</p>\n\n\n\n<p>With GitHub Actions out of beta, it opens the door for companies like 10up to share their custom workflows and for others to build upon them.  It will also be interesting to see what Actions other developers within the WordPress ecosystem release.</p>\n\n\n\n<p>The 10up team initially <a href=\"https://10up.com/blog/2019/introducing-github-actions-for-wordpress-plugins/\">launched their custom Actions</a> for WordPress in March 2019, which was during GitHub Actions beta period.  &ldquo;Everybody has been very positive,&rdquo; said Helen Hou-Sand&iacute;, director of open source initiatives at 10up and WordPress lead developer.  &ldquo;We&rsquo;ve had a number of people report bugs, request enhancements, and contribute code and documentation. That&rsquo;s been a really great measure of adoption and attention for me &mdash; having people give thoughtful critical feedback and help us improve this tool for everybody.&rdquo;</p>\n\n\n\n<p>Hou-Sand&iacute; is interested in seeing other ideas for adding workflows or potentially new Actions from the community.  &ldquo;An example of something we&rsquo;ve just started doing without writing a whole new Action is generating hook documentation and deploying that to GitHub Pages, which eliminates the need to generate locally, commit manually, and decide on where to host things,&rdquo; she said.</p>\n\n\n\n<p>&ldquo;Development was actually smoother than I anticipated,&rdquo; said Hou-Sand&iacute; of creating and testing the team&rsquo;s GitHub Actions.  &ldquo;Maybe because I spent a fairly long time planning and obsessing over potential issues and chose to use Bash.&rdquo;  For testing, she was able to use an inactive plugin repo on WordPress.org.  &ldquo;I&rsquo;m sure I could have come up with a method to test completely locally, but being able to use actual environments without repercussions was helpful.&rdquo;</p>\n\n\n\n<p>The 10up team has already been deploying plugin updates with the Actions.  Hou-Sand&iacute; said that she does not think about this in terms of saving time, even though the team is already tagging releases via GitHub.  </p>\n\n\n\n<p>&ldquo;What it&rsquo;s really done for us is, along with well-documented release processes, made it so that anybody can jump in and get a plugin updated or released without worrying about modifying commit permissions or their personal knowledge of SVN,&rdquo; she said.  &ldquo;This makes it much easier to get releases out especially when it&rsquo;s an urgent bugfix.&rdquo;</p>\n\n\n\n<h2>Deploying and Updating WordPress Plugins</h2>\n\n\n\n<p>Both of the GitHub Actions created by 10up help ease the pain of deploying plugin updates to the official WordPress plugin directory.  They are designed to streamline plugin release management and simplify the process of getting code out to end-users.</p>\n\n\n\n<p>WordPress plugin authors must use Subversion (SVN) to commit and tag plugin releases in the directory.  Often, this is an issue because Git is the most-used version control system.  Some developers have no experience with SVN, and the number of developers unfamiliar with it will likely only grow as Git continues to gain popularity.  Even with those who do understand SVN, switching between version control systems can hinder workflows, particularly with larger teams.</p>\n\n\n\n<p>With so many WordPress plugin developers using Git, it makes sense to use tools that are a part of their daily workflow rather than jumping into a system only used during releases.  That is where both of these GitHub Actions developed by 10up can help.  </p>\n\n\n\n<p>Adding Actions to a repository is a fairly straightforward process.  All repositories have a new &ldquo;Actions&rdquo; tab.  Developers can create new workflows directly from the Actions page for their repository.  When adding a new workflow, it is simply a matter of copying and pasting a particular Action&rsquo;s code snippet.</p>\n\n\n\n<div class=\"wp-block-image\"><img />Adding a custom GitHub workflow.</div>\n\n\n\n<p>The <a href=\"https://github.com/marketplace/actions/wordpress-plugin-deploy\">WordPress Plugin Deploy</a> Action is for deploying plugin updates directly to the WordPress plugin directory.  When developers tag a release on GitHub, it will automatically commit the update to the WordPress.org SVN repository.  The Action respects <code>.distignore</code> and <code>.gitattributes</code> for ignoring files that should not be distributed to users.  It also allows developers to add their plugin assets to a <code>.wordpress-org</code> folder, which will be committed to the top-level <code>assets</code> directory.</p>\n\n\n\n<p><a href=\"https://github.com/marketplace/actions/wordpress-plugin-readme-assets-update\">WordPress.org Plugin Readme/Assets Update</a> is a separate Action that allows developers to commit changes to their plugin&rsquo;s readme or assets.  It is useful when plugin authors need to update their plugin&rsquo;s <code>Tested up to</code> version number or update screenshots, banners, and icons.  This Action watches for changes on a specified branch.</p>\n\n\n\n<p>Both Actions require developers to set up secret values for their WordPress SVN username and password.  Secrets are encrypted data that can be set via a repository&rsquo;s &ldquo;Settings &gt; Secrets&rdquo; screen.  The SVN username and password are required so that GitHub can deploy commits to WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Nov 2019 23:00:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"WordPress.org blog: WordPress 5.2.4 Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/news/2019/11/wordpress-5-2-4-update/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1100:\"<p>Late-breaking news on the<a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\"> 5.2.4 short-cycle security release </a>that landed October 14. When we released the news post, I inadvertently missed giving props to Simon Scannell of <a href=\"https://blog.ripstech.com/\">RIPS Technologies</a> for finding and disclosing an issue where path traversal can lead to remote code execution. </p>\n\n\n\n<p>Simon has done a <a href=\"https://wordpress.org/news/2018/12/wordpress-5-0-1-security-release/\">great</a> <a href=\"https://wordpress.org/news/2019/03/wordpress-5-1-1-security-and-maintenance-release/\">deal</a> of <a href=\"https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/\">work</a> on the WordPress project, and failing to mention his contributions is a huge oversight on our end.</p>\n\n\n\n<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing</a> vulnerabilities, which gave us time to fix them before WordPress sites could be attacked.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Nov 2019 04:47:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Gutenberg 6.9 Introduces Image Titles, Block Patterns, and New Theme Features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95365\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/gutenberg-6-9-introduces-image-titles-block-patterns-and-new-theme-features\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5671:\"<p>On November 13, the Gutenberg team <a href=\"https://make.wordpress.org/core/2019/11/13/whats-new-in-gutenberg-13-november/\">launched version 6.9</a> with several features, most of which were aimed at developers.  Users can now add custom image title attributes.  Plugin developers can start diving into the new Block Patterns API.  Plus, theme authors can begin tinkering with the experimental gradient presets and block templates features.</p>\n\n\n\n<p>Gutenberg 6.9 fixed numerous bugs, including an annoying <a href=\"https://github.com/WordPress/gutenberg/issues/16429\">invalid content error</a> when selecting a color for the pullquote block.  The update included several enhancements and changes to the underlying codebase.</p>\n\n\n\n<p>Much of the work in version 6.9 went toward experimental features, including the navigation block.  At this point, the nav block still needs a ton of work for practical use.  The interface is still a bit clunky.  Undoubtedly, this is one of the toughest user experience challenges to solve and will take time before it is ready for widespread usage.  Right now, it is about continually iterating upon the work from previous versions.</p>\n\n\n\n<h2>Image Title Attribute Field</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Editing the image title field in Gutenberg.</div>\n\n\n\n<p>The ability to add image titles is perhaps the biggest user-facing feature added in Gutenberg 6.9.  The <a href=\"https://github.com/WordPress/gutenberg/issues/11054\">original ticket</a> for adding the feature has been simmering for over a year.</p>\n\n\n\n<p>The Gutenberg team added the title field under the &ldquo;Advanced&rdquo; tab when editing an image block. This was a smart decision because image titles are often used incorrectly to describe an image, which is the job of the &ldquo;Alt Text&rdquo; field located under the &ldquo;Image Settings&rdquo; tab.  Image titles are also generally unnecessary.  When used, they should describe the role of the image on the page.</p>\n\n\n\n<h2>Initial Block Patterns API Merged</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Choosing a column layout in the block editor.</div>\n\n\n\n<p>The Block Patterns API is a developer feature primarily for creating initial setup states for complex blocks.  For example, the columns block has several common patterns that users may want to choose. By providing those patterns when first inserting a block, the user does not have to go through the routine of configuring all of the settings for it.</p>\n\n\n\n<p>The idea is to cut back on the complexities of configuring some blocks so that users can more quickly get to the point of adding their custom content and getting their desired results.</p>\n\n\n\n<p>The first step toward the Block Patterns API was <a href=\"https://github.com/WordPress/gutenberg/pull/18270\">merged into Gutenberg 6.9</a>, but it is still in the experimental stage at this point.</p>\n\n\n\n<h2>Block Gradient Presets</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Adding a gradient background to a button in Gutenberg.</div>\n\n\n\n<p>Gutenberg introduced gradient backgrounds in <a href=\"https://wptavern.com/gutenberg-6-7-introduces-storybook-and-gradient-backgrounds\">version 6.7</a> for the button block. The feature launched with a set of gradients that did not match users&rsquo; themes, which meant the feature was little more than a fun experiment.</p>\n\n\n\n<p>In version 6.9, developers can register custom gradients that are less of an eyesore by using colors that fit into the theme&rsquo;s color palette.</p>\n\n\n\n<p>Currently, <a href=\"https://developer.wordpress.org/block-editor/developers/themes/theme-support/#block-gradient-presets\">block gradient presets</a> are marked as an experimental feature and use the <code>__experimental-editor-gradient-presets</code> theme support flag.  Now is a good time for theme authors to begin exploring this feature so they can be ready when the experimental flag is removed.</p>\n\n\n\n<h2>Block Templates for Themes</h2>\n\n\n\n<p>For theme authors, block templates were the most exciting aspect of Gutenberg&rsquo;s potential when it first launched.  Throughout all of WordPress&rsquo; history, creating custom page templates, particularly front page templates, has been an exercise in frustration.  Theme authors have always had great ideas about what their themes&rsquo; front pages should look like.  In a way, it is an author&rsquo;s signature on a theme project.  It is often what sets one theme apart from another.</p>\n\n\n\n<p>However, creating an interface that allows users to change what is traditionally a blog post list to something more ornate and complex is not an easy thing to do.  Hundreds, perhaps thousands, of varying implementations are currently in the wild, each with their take on how to create a custom front page.</p>\n\n\n\n<p>Enter Gutenberg.  Theme authors, regardless of whether they love or hate it, usually see the potential of a block-based editor in terms of laying out a front page.  The idea of having complete control over where specific blocks sit and how they appear on the front end is an alluring one, especially if there is a standardized experience for users to figure out how to plug their content into the blocks.</p>\n\n\n\n<p>Gutenberg 6.9 <a href=\"https://github.com/WordPress/gutenberg/pull/18247\">laid the groundwork</a> toward this reality by resolving block templates from a theme&rsquo;s <code>/block-templates</code> folder.</p>\n\n\n\n<p>At this point, theme block templates are still in the experimental stage as part of the <a href=\"https://github.com/WordPress/gutenberg/issues/17512\">full site editing feature</a>.  From a theme development perspective, this could be revolutionary.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Nov 2019 19:03:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"Post Status: Scott Bolinger on WordPress, JAMstack, and the future of the independent developer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=71326\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://poststatus.com/wordpress-jamstack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1790:\"<p>In this episode, Scott and I dig into his experience as an indie developer within the WordPress landscape.</p>\n\n\n\n<p>Scott has long used JavaScript as a core technology with AppPresser. I think he\'s on the forefront of thinking about and using technologies that are new to WordPress but out in full force in other ecosystems. </p>\n\n\n\n<p>Scott is really into <a href=\"https://jamstack.org/\">JAMstack</a> (JavaScript, APIs, Markup). He\'s working on <a href=\"https://staticfuse.com/\">Static Fuse</a> now, which helps connect WordPress to <a href=\"https://www.gatsbyjs.org/\">Gatsby</a>. Gatsby has a <em>lot</em> of attention in web tech right now.</p>\n\n\n\n<p>We also dig pretty deeply into the challenges and opportunities facing independent developers, and the interest levels in WordPress from the indie dev crowd. It\'s an interesting episode, and I learned a lot from Scott. I hope you do too. Enjoy our conversation!</p>\n\n\n\n\n\n\n\n<h3>Other links from the show</h3>\n\n\n\n<ul><li><a href=\"https://graphql.org/\">GraphQL</a> and <a href=\"https://www.wpgraphql.com/\">WPGraphQL</a></li><li><a href=\"https://scottbolinger.com/\">Scott\'s website</a></li><li><a href=\"https://theproductbusiness.com/podcast/\">The Product Business podcast</a></li><li>Zac Gordon\'s <a href=\"https://javascriptforwp.com/product-category/courses/\">JavascriptforWP</a> courses</li></ul>\n\n\n\n<h3>Sponsor: Sandhills Development</h3>\n\n\n\n<p><a href=\"http://sandhillsdev.com/\">Sandhills Development</a>&nbsp;makes a suite of excellent plugins to power your WordPress website. Whether you need to sell digital downloads, restrict content, create an affiliate program, or manage an events calendar, they’ve got you covered. Thanks to&nbsp;<a href=\"http://sandhillsdev.com/\">Sandhills</a>&nbsp;for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 16 Nov 2019 16:36:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: 24 WordPress Snippets ’til Christmas, Submissions Open for 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95346\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/24-wordpress-snippets-til-christmas-submissions-open-for-2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5943:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>After a multi-year hiatus, Elliott Richmond has relaunched his WordPress advent calendar and is looking for volunteers.  The <a href=\"https://advent.elliottrichmond.co.uk/\">WP Snippets &rsquo;til Christmas</a> site will host 24 days of WordPress code snippets starting on December 1 and lasting until December 24.  With each passing day, a new code snippet will be revealed.</p>\n\n\n\n<p>Advent calendars are special types of calendars used to count down the days until Christmas.  They are often a part of religious celebrations but can be used for other purposes such as family traditions and games.  For Richmond&rsquo;s advent calendar, it is a way to contribute something back to the WordPress community.</p>\n\n\n\n<p>Richmond opened the site for developers to make contributions to the 24-day event.  &ldquo;I&rsquo;ve been in touch with the original contributors in the hope that they&rsquo;ll submit again and registration is also open to anyone else who wishes to contribute,&rdquo; he said.  &ldquo;Otherwise, it will just be the Elliott Richmond show.&rdquo;  </p>\n\n\n\n<p>He would rather have community submissions than attempting to write all 24 code snippets alone.  Jeff Starr, Zac Gordon, and Tom McFarlin, all prominent developers in the WordPress community, have already signed on to submit code.  <em>Author&rsquo;s note: I am also considering joining because it sounds like fun.</em></p>\n\n\n\n<p>Anyone who wants to receive updates each day of the event can register for free on the <a href=\"https://advent.elliottrichmond.co.uk/\">WP Snippets &rsquo;til Christmas</a> website.  The same signup form is available for contributors.</p>\n\n\n\n<p>There are no limitations on the types of code snippets that contributors can submit, only that they should be related to WordPress.  Richmond says he has some ideas such as a WP-CLI script and a deployment tool for use on the command line.  However, code snippets can be something as simple as sticking a basic function into a theme to more complex scripts.</p>\n\n\n\n<p>&ldquo;I come from a frontend world and I&rsquo;m a self-taught PHP developer,&rdquo; said Richmond.  &ldquo;I&rsquo;m evolving constantly and always eager to learn new things. I think WordPress is similar, it&rsquo;s always evolving and inspiring innovation. If you put any limitations on things they rapidly become stagnated.&rdquo;</p>\n\n\n\n<p>The code snippets are not aimed at any type of WordPress user in particular.  &ldquo;I think it&rsquo;s really useful to see bite-size code snippets to help those in the community who are taking that next step into development,&rdquo; said Richmond.  &ldquo;To those more seasoned developers, I think it&rsquo;s always useful to see how other developers approach things.&rdquo;</p>\n\n\n\n<p>Each code snippet will have an open comments section similar to a traditional blog.  This will allow others to say thanks for sharing or to jump-start a conversation.</p>\n\n\n\n<h2>The Road Back to the Advent Calendar</h2>\n\n\n\n<p>Richmond has been a WordPress user and developer since the launch of the platform.  He is the director of <a href=\"https://squareone.software/\">Square One Software</a>, a software development company that specializes in WordPress development.</p>\n\n\n\n<p>He <a href=\"https://wptavern.com/wordpress-snippets-til-christmas-submissions-opened-for-2013\">last ran the advent calendar</a> in 2013.  After the success of the first year in 2012, he decided to put it together for a second round.  He wanted to keep it going beyond the first two years, but work and other commitments took priority.</p>\n\n\n\n<p>In the years since, Richmond met other local WordPress enthusiasts at WordCamp London.  He now helps host the local meetup in Cheltenham, UK.  With the help of the community, he organized four teams of local project managers, designers, developers, and content writers for a <a href=\"https://doaction.org/event/cheltenham-2019/\">local do_action event</a>.  &ldquo;I&rsquo;m still an enthusiastic proponent of giving back to the community and actively encourage others in our local community to share their experience and knowledge,&rdquo; said Richmond.</p>\n\n\n\n<p><a href=\"https://doaction.org/\">do_action</a> events are charity hackathons that use WordPress to help provide local charity organizations an online presence.</p>\n\n\n\n<p>&ldquo;Every single team and team member did an amazing job on the day for four local non-profit charities, putting together a functional WordPress website for each charity while I personally gave a charity representative some hands-on training,&rdquo; said Richmond.  &ldquo;Taking away some of the overhead of creating a website for the charities allows them to concentrate on what they do best, which is raising money for their own community.&rdquo;</p>\n\n\n\n<p>Richmond described needing to find something to do next while still riding the buzz from the event.  That is when he decided to relaunch the WP Snippets &rsquo;til Christmas event.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>Because it is the season, Richmond crowned &ldquo;It&rsquo;s a Wonderful Life&rdquo; as the greatest Christmas movie.</p>\n\n\n\n<p>&ldquo;I love classics and this one is a true classic, pretty apt in the current move to make people aware of mental health,&rdquo; said Richmond.  &ldquo;The movie starts with depression and pending suicide when a guardian angel is bestowed to the main character George Bailey. George is shown how many lives he&rsquo;s impacted on in his own local community and how things would have been if he didn&rsquo;t exist, a real heartwarming feel-good reflection on the things that we take for granted in our own existence.&rdquo;</p>\n\n\n\n<p>With this upcoming holiday season, considering taking the time to give back to both your local community and the WordPress community.  One great way to do that is to contribute a code snippet to WP Snippets &rsquo;til Christmas.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 15 Nov 2019 21:10:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"bbPress: bbPress 2.6.1 is out!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://bbpress.org/?p=205662\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://bbpress.org/blog/2019/11/bbpress-2-6-1-is-out/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2442:\"<p>It seems like only <a href=\"https://bbpress.org/blog/2019/11/bbpress-2-6/\">yesterday that 2.6.0</a> was released, and depending on where you live that might actually be true! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f5d3.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n\n\n<p>bbPress 2.6.1 fixes a few small (but very annoying bugs) that warranted some immediate attention:</p>\n\n\n\n<ul><li><a href=\"https://bbpress.trac.wordpress.org/ticket/3232\">One</a> was causing subforums not to be listed underneath their parents anymore.</li><li><a href=\"https://bbpress.trac.wordpress.org/ticket/3281\">Another</a> was causing styling issues for a few of the themes that come bundled with WordPress itself.</li><li><a href=\"https://bbpress.trac.wordpress.org/ticket/3280\">The last one</a> was causing issues with posting content within WordPress Admin, because of incompatibility with a few plugins that were interacting with the REST API in admin area pages in fun ways that we hadn&#8217;t anticipated yet.</li></ul>\n\n\n\n<p>Thanks to the quick reporting of <a href=\"https://bbpress.org/forums/profile/stevehammatt/\">stevehammatt</a> and <a href=\"https://bbpress.org/forums/profile/pdvwp/\">pdvwp</a>, we were able to identify all of these problems and get them into bbPress 2.6.1 right away. You both rock! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f44f.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n\n\n<p class=\"has-text-color has-background has-very-dark-gray-color has-very-light-gray-background-color\">One bug still remains that we could use your help with, that is affecting sites that have a custom <code>bbpress.css</code> file in their theme. If you need to fix this ASAP, you can rename it to <code>bbpress.min.css</code> temporarily. If you&#8217;re able to chime into <a href=\"https://bbpress.org/forums/topic/child-css/\">this topic in the forums</a>, that would be super helpful!</p>\n\n\n\n<p>If you have a few moments, the great Justin Tadlock from WPTavern <a href=\"https://wptavern.com/bbpress-2-6-released-after-6-years-includes-per-forum-moderation-and-engagements-api\">asked me a few questions about bbPress 2.6</a>, so consider giving it a read.</p>\n\n\n\n<p>Lastly, thank you everyone for the positive comments and responses to seeing bbPress 2.6 finally happen. It made my day, and I really appreciate it. <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f49a.png\" alt=\"?\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Nov 2019 23:48:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"John James Jacoby\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WPTavern: bbPress 2.6 Released After 6 Years, Includes Per-Forum Moderation and Engagements API\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95336\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/bbpress-2-6-released-after-6-years-includes-per-forum-moderation-and-engagements-api\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7007:\"<p>On Tuesday, John James Jacoby announced that bbPress 2.6 was available to the public after a six-year wait in a post titled <a href=\"https://bbpress.org/blog/2019/11/bbpress-2-6/\">bbPress 2.6 &mdash; Better Great Than Never</a>.  The announcement landed with a whimper as it was overshadowed by the release of WordPress 5.3 on the same day.</p>\n\n\n\n<p><a href=\"https://wordpress.org/plugins/bbpress/\">bbPress</a> is an official WordPress project for powering forums.  It was <a href=\"https://bbpress.org/blog/2004/12/soft-launch/\">initially launched</a> on December 28, 2004, by Matt Mullenweg as a standalone project.  During the first iteration&rsquo;s heyday, it was popular within the WordPress community as a simple forum solution.  In 2011, <a href=\"https://bbpress.org/blog/2011/09/bbpress-2-0-now-available/\">bbPress 2.0 relaunched</a> as a WordPress plugin with Jacoby as the lead developer.</p>\n\n\n\n<p>The bbPress team is primarily comprised of four part-time contributors with nearly no volunteers available for user testing.  Stephen Edgar, Brandon Allen, and Sergey Biryukov were the primary developers other than Jacoby behind version 2.6.</p>\n\n\n\n<p>&ldquo;Jennifer M. Dodd deserves a mention for her contributions to 2.6 early on; she&rsquo;s largely moved on but is wonderful,&rdquo; said Jacoby.  &ldquo;Behind the scenes in the meta and forums teams are Samuel &lsquo;Otto&rsquo; Wood, Dion Hulse, Mika Epstein, Marius Jensen, and countless others who provide feedback and feature requests upstream based on how WordPress.org uses bbPress.&rdquo;</p>\n\n\n\n<p>Contributors resolved 420 open tickets with 1,737 code commits over the multi-year span it took for version 2.6 to drop.  The new version ships with hundreds of bug fixes and improvements.  Its features include per-forum moderation, new platforms to import forum content from, and an Engagements API.</p>\n\n\n\n<p>The new Engagements API connects user IDs to the various types of content in bbPress, such as forums, topics, replies, and topic tags.  This works as a sort of relationship system between users and any content they interact with on the forums.  In previous versions of bbPress, all of this data was saved in the user metadata table.</p>\n\n\n\n<p>Per-forum moderation is a key feature for forums, but it has been one of the missing elements in bbPress.  The new feature takes advantage of the Engagements API to connect user IDs to forum IDs.  In turn, this allows site owners to create moderators for individual forums.  This feature works in contrast to the existing &ldquo;moderator&rdquo; role in bbPress, which provides users global moderation powers.</p>\n\n\n\n<h2>Why the 6-Year Wait?</h2>\n\n\n\n<p>You could be forgiven for wondering if bbPress was all but dead.  The last minor release happened in 2017 when the team dropped version 2.5.14.  The same year, bbPress 2.6 was <a href=\"https://wptavern.com/bbpress-2-6-beta-3-likely-as-team-focuses-on-solid-data-migration-path\">headed toward a third beta</a> and even had a <a href=\"https://bbpress.org/forums/topic/bbpress-2-6-beta/\">few release candidates</a>.</p>\n\n\n\n<p>&ldquo;There was not very much feedback on the 2.6 beta or RC, and I had just transitioned into my role at Sandhills Development,&rdquo; said Jacoby. &ldquo;I decided it was better to concentrate on doing a good job where I could make a direct impact on people&rsquo;s lives, rather than have no idea if I was doing a good job at all with bbPress.&rdquo;</p>\n\n\n\n<p>Jacoby did not want to release a potentially buggy version 2.6 and take on the support burden at the time.  Doing so would have interfered with his responsibilities at his new job.  &ldquo;Younger me would have tried to do both, and failed at both,&rdquo; said Jacoby.</p>\n\n\n\n<p><em>Why such a long wait between releases?</em>  Most likely, it was for the same reason the <a href=\"https://twitter.com/bbPress/status/1194327563407122432\">Twitter announcement</a> got fewer than a couple of dozen likes and even fewer retweets.  There is not much community engagement with the project.  On the flip side, the bbPress team has not been active on social media or the project&rsquo;s official blog in the past two years.  </p>\n\n\n\n<p>Despite the lack of community engagement, bbPress is currently installed on over 300,000 sites.  It runs the forums at WordPress.org, WordPress.com, CSS-Tricks, and other large communities.  However, there is not much help sent back to the bbPress project from most places.</p>\n\n\n\n<p>&ldquo;On WordPress.org, bbPress is just one piece of a very complex puzzle, and everything is mostly in maintenance mode all the time,&rdquo; said Jacoby.  &ldquo;The forums team focuses on the needs of the forums and the meta team helps maintain the code itself, but WordPress has made it easier and more rewarding to contribute to; so contributors graduate up to WordPress core and rarely look back.&rdquo;</p>\n\n\n\n<p>The idea behind switching bbPress 2.x to a WordPress plugin from its standalone roots was that it would be simpler for the larger WordPress community to pitch in.  Jacoby said that contributions have improved since the pre-plugin era, but it has not helped enough.  &ldquo;There&rsquo;s more attention and accolades with WordPress and Gutenberg than there are with the bb&rsquo;s or GlotPress,&rdquo; he said.</p>\n\n\n\n<p>One of bbPress&rsquo; biggest problems is the lack of resources.  There is no commercial element to the plugin and no major companies are funding anyone to work on the project full time.</p>\n\n\n\n<p>&ldquo;For an open-source project to be sustainable long-term, it needs to have an economy behind it,&rdquo; said Jacoby.  &ldquo;Without an economy, what&rsquo;s the real goal? Market share? Building better forum software? Those are not enough by itself when people need to make a living, and when less work with WooCommerce can help you earn a better living.&rdquo;</p>\n\n\n\n<h2>The Future of Forums</h2>\n\n\n\n<p>Six years between major releases is a lifetime in technological years, plenty enough time for another company to claim the WordPress forum market share.  However, bbPress managed to keep its crown as the most-used WordPress forum plugin during the wait.  It does beg the question of whether companies or developers see a future for forums.</p>\n\n\n\n<p>With so many alternative options for user engagement, are forums a dying breed of software?</p>\n\n\n\n<p>&ldquo;If forums are dying, it&rsquo;s a slow death, according to the numbers anyway,&rdquo; said Jacoby.  &ldquo;Chat apps like Slack and Discord (or Twitch and YouTube) are where people do forum-type stuff these days. Moderating your own community takes dedication and work, and if you&rsquo;re going to do work, why not build an audience someplace else instead?&rdquo;</p>\n\n\n\n<p>Jacoby has hope for the future, however.  &ldquo;I can imagine a bunch of reasons why forums seem unattractive,&rdquo; he said, &ldquo;but to me they are still what everyone circles back around to, just like having their own blogs!&rdquo;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Nov 2019 20:17:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: WordCamp US 2020 Date and Location Announced, New Weekday Schedule\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95327\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/wordcamp-us-2020-date-and-location-announced-new-weekday-schedule\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3394:\"<p>Mark your calendars, folks.  WordCamp US 2020 will start on a&hellip;<em>Tuesday</em>.</p>\n\n\n\n<p>On November 11, the WordCamp US team announced that next year&rsquo;s event will happen during the middle of the week, from October 27 through October 29.  This is a change from the usual three-day weekend event.  The time frame puts the event&rsquo;s days on Tuesday, Wednesday, and Thursday.  The yearly conference will remain in St. Louis, Missouri, in 2020.</p>\n\n\n\n<p>Those planning ahead can sign up for updates via the new <a href=\"https://2020.us.wordcamp.org/\">WordCamp US 2020 site</a>.</p>\n\n\n\n<p>Thus far, the switch away from a weekend has been met with generally positive <a href=\"https://twitter.com/WordCampUS/status/1193910076244996096\">responses via Twitter</a> and Slack. However, some people fear the schedule will not allow them to attend.  </p>\n\n\n\n<p>The WordCamp US Twitter account cited date availability, Halloween, and giving the weekend back to attendees as the reason behind the change.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Number of reasons from date availability, letting folks get home for Halloween, and letting folks have a their weekend back on an out-of-town event</p>&mdash; WordCamp US (@WordCampUS) <a href=\"https://twitter.com/WordCampUS/status/1193912839725101056?ref_src=twsrc%5Etfw\">November 11, 2019</a></blockquote>\n</div>\n\n\n\n<p>For professionals in the WordPress space, this move will likely be a welcome change.  They are often able to get extra time off from work, sometimes paid leave, to attend the event.  The company they work for may even be funding their travel.  For them, attending a WordCamp is a part of their work.  </p>\n\n\n\n<p>The unfortunate side effect of attending a WordCamp over the weekend is that some attendees usually have to wake up for work on Monday morning after traveling back home on Sunday.  Many are essentially working two weeks straight without any downtime.  This helps pile on the problem of developer burnout.  Rest days, time with friends and family, and getting away from code-related things is a part of a healthy work-life balance.</p>\n\n\n\n<p>Moving the event to the middle of the week should allow professionals to better maintain that balance.</p>\n\n\n\n<p>On the other hand, some attendees may find it harder to attend during the week.  This is particularly true for WordCamp-goers who do not work with WordPress professionally.  They may not be able to get the time off work.</p>\n\n\n\n<p>As a general rule, Americans tend to have little paid leave they can take advantage of throughout the year.  The average worker in the private sector only gets <a href=\"https://www.cnbc.com/2018/07/05/heres-how-many-paid-vacation-days-the-typical-american-worker-gets-.html\">10 paid vacation days</a> per year after one year of employment.  Those numbers rise the longer an employee sticks with a single company.  The US does not guarantee paid leave for workers.</p>\n\n\n\n<p>Without support from their employer, some people may have to choose between using their paid time off to attend and keeping those days in reserve for family vacation or holidays.</p>\n\n\n\n<p>Unlike local WordCamps, the US conference is more of an industry event that sees professionals from across the US and the world.  The move to a weekday schedule should be a nice change for many.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 13 Nov 2019 21:27:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"WPTavern: WordPress 5.3 “Kirk” Released, Brings New Default Theme, Editor Improvements, and UI Tweaks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95290\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/wordpress-5-3-kirk-released-brings-new-default-theme-editor-improvements-and-ui-tweaks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7770:\"<div class=\"wp-block-image\"><img />Rahsaan Roland Kirk<br />Credit:  <a href=\"https://www.flickr.com/photos/heiner1947/4485444348/in/photostream/\">Heinrich Klaffs</a> CC BY-SA 2.0</div>\n\n\n\n<p><a href=\"https://wordpress.org/news/2019/11/kirk/\">WordPress 5.3 &ldquo;Kirk,&rdquo;</a> named in honor American jazz musician Rahsaan Roland Kirk, is now available for download.  The update includes a new default theme named Twenty Twenty, user interface improvements aimed at accessibility, and new block editor features.</p>\n\n\n\n<p>This release saw contributions from 645 volunteers, which is the largest contributor group ever for a WordPress release.</p>\n\n\n\n<p>The release was led by <a href=\"https://ma.tt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/francina/\">Francesca Marano</a>, and <a href=\"https://profiles.wordpress.org/davidbaumwald\">David Baumwald</a>.  They were joined by the following contributors in supporting roles in getting version 5.3 released.</p>\n\n\n\n<ul><li>Editor Tech Lead &ndash; <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a></li><li>Editor Design Lead &ndash; <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a></li><li>Core Tech Lead &ndash; <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a></li><li>Default Theme Design Lead &ndash; <a href=\"https://profiles.wordpress.org/anlino/\">Anders Nor&eacute;n</a></li><li>Default Theme Wrangler &ndash; <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a></li><li>Docs Coordinator &ndash; <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a></li><li>Accessibility Lead &ndash; <a href=\"https://profiles.wordpress.org/audrasjb/\">JB Audras</a></li><li>Marketing Lead &ndash; <a href=\"https://profiles.wordpress.org/mikerbg/\">Mike Reid</a></li><li>Media Focus Lead &ndash; <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a></li></ul>\n\n\n\n<p>WordPress 5.2 had 84 million downloads before WordPress 5.3&rsquo;s release.</p>\n\n\n\n<p>The PHP native JSON extension is now required for any site running WordPress 5.3 or later.  This should not be an issue for the majority of users because the extension has been bundled with PHP by default since 2006.  WordPress will output an error and cancel the update procedure if it detects the extension is missing.  Users who are unable to update will need to contact their web hosts to have the extension enabled.</p>\n\n\n\n<h2>Twenty Twenty: New Default Theme</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Screenshot of the Twenty Twenty WordPress theme.</div>\n\n\n\n<p>WordPress is getting a fresh coat of paint.  Anders Nor&eacute;n led the design team for the new <a href=\"https://wptavern.com/twenty-twenty-bundled-in-core-beta-features-overview\">Twenty Twenty</a> theme, which was a <a href=\"https://wptavern.com/first-look-at-twenty-twenty-new-wordpress-default-theme-based-on-chaplain\">fork of his original Chaplin theme</a>.</p>\n\n\n\n<p>The Twenty Twenty theme is completely geared toward creating content with the block editor with its bold and opinionated styling.  It comes with a cover page template and has a custom color system designed to keep the site&rsquo;s color contrast accessible.</p>\n\n\n\n<h2>Block Editor Features and Improvements</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Nesting any block inside the Cover block.</div>\n\n\n\n<p>WordPress 5.3 includes features from the versions 5.4 &ndash; 6.5 of the Gutenberg plugin along with bug fixes and performance improvements from versions 6.6 and 6.7.  For users who have not been running the plugin, they should see faster loading times and quicker responses from keystrokes.</p>\n\n\n\n<p>WP Tavern has covered every major release of the Gutenberg plugin that will be bundled in WordPress 5.3, except Gutenberg 5.6.  Catch up on any features you missed with the following articles.</p>\n\n\n\n<ul><li><a href=\"https://wptavern.com/gutenberg-5-5-adds-new-group-block-for-nesting-child-blocks\">Gutenberg 5.5 Adds New Group Block for Nesting Child Blocks</a></li><li><a href=\"https://wptavern.com/gutenberg-5-7-adds-new-block-appender-for-group-and-columns-blocks\">Gutenberg 5.7 Adds New Block Appender for Group and Columns Blocks</a></li><li><a href=\"https://wptavern.com/gutenberg-5-8-released-with-prototype-of-new-block-based-widgets-screen\">Gutenberg 5.8 Released with Prototype of New Block-based Widgets Screen</a></li><li><a href=\"https://wptavern.com/gutenberg-5-9-brings-major-improvements-to-block-grouping-introduces-snackbar-notices\">Gutenberg 5.9 Brings Major Improvements to Block Grouping, Introduces Snackbar Notices</a></li><li><a href=\"https://wptavern.com/gutenberg-6-0-adds-layout-picker-to-columns-block\">Gutenberg 6.0 Adds Layout Picker to Columns Block </a></li><li><a href=\"https://wptavern.com/gutenberg-6-1-introduces-animation-to-block-moving-actions-adds-block-based-widgets-screen-experiments\">Gutenberg 6.1 Introduces Animation to Block Moving Actions, Adds Block-Based Widgets Screen Experiments</a></li><li><a href=\"https://wptavern.com/gutenberg-6-2-adds-nesting-capabilities-to-cover-media-text-blocks\">Gutenberg 6.2 Adds Nesting Capabilities to Cover, Media &amp; Text Blocks</a></li><li><a href=\"https://wptavern.com/gutenberg-6-3-improves-accessibility-with-new-navigation-and-edit-modes\">Gutenberg 6.3 Improves Accessibility with New Navigation and Edit Modes</a></li><li><a href=\"https://wptavern.com/gutenberg-6-4-adds-new-typewriter-experience-cover-block-resizing-and-block-inserter-help-panel\">Gutenberg 6.4 Adds New Typewriter Experience, Cover Block Resizing, and Block Inserter Help Panel</a></li><li><a href=\"https://wptavern.com/gutenberg-6-5-adds-experimental-block-directory-search-to-inserter-and-new-social-links-block\">Gutenberg 6.5 Adds Experimental Block Directory Search to Inserter and New Social Links Block</a></li></ul>\n\n\n\n<h2>Other Core Features</h2>\n\n\n\n<p>Work toward <a href=\"https://wptavern.com/wordpress-5-3-improves-large-image-handling\">large image handling</a> went into the update.  Instead of checking file sizes, images larger than 2,560 pixels are scaled down and used as the &ldquo;full&rdquo; image size.  This change makes large images web ready and will significantly decrease file sizes for many users who upload images without optimizing them beforehand.  This is common with mobile phone uploads.  </p>\n\n\n\n<p>For those who prefer to maintain the original sizes of image uploads, which is sometimes the case with photography sites, grab the <a href=\"https://wordpress.org/plugins/disable-big-image-threshold/\">Disable &ldquo;BIG Image&rdquo; Threshold</a> plugin.</p>\n\n\n\n<p>The site health screen introduced in WordPress 5.2 has some user experience improvements, such as tweaking how the grading indicator works for clarity.  WordPress site owners will also need to <a href=\"https://wptavern.com/wordpress-5-3-to-introduce-new-admin-email-verification-screen\">verify their admin email</a> every six months.  This feature is to help make sure site recovery emails are being sent to the right place when an error occurs.  It also lays the groundwork for future features that may build upon it.</p>\n\n\n\n<h2>Developer Changes</h2>\n\n\n\n<p>Developers should read the full <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 field guide</a> to make sure none of the changes affect their plugins or themes. Some of the changes include the following.</p>\n\n\n\n<ul><li>Full support for PHP 7.4.</li><li>Improved date/time handling.</li><li>Robots meta tag now used for discouraging search engines from listing a site.</li><li>New meta key comparison operators added.</li><li>Integers are no longer allowed for nav menu slugs.</li><li><code>wp_die()</code> now allows custom HTML.</li></ul>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Nov 2019 22:12:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WordPress.org blog: WordPress 5.3 “Kirk”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7684\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/news/2019/11/kirk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:56355:\"<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/5.3-album-cover.png?resize=632%2C632&ssl=1\" alt=\"Album cover for WordPress 5.3 Kirk, showcasing a duotone red/cream Rahsaan Roland Kirk playing the saxophone on a red background.\" class=\"wp-image-7710\" /></div>\n\n\n\n<p class=\"has-text-color has-background\">Introducing our most refined user experience with the improved block editor in WordPress 5.3! Named “Kirk” in honour of jazz multi-instrumentalist Rahsaan Roland Kirk, the latest and greatest version of WordPress is available for <a href=\"https://wordpress.org/download/\">download</a> or update in your dashboard.</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=632%2C159&ssl=1\" alt=\"\" class=\"wp-image-7721\" />\n\n\n\n<p><strong>5.3 expands and refines the block editor</strong> with more intuitive <strong>interactions</strong> and improved <strong>accessibility</strong>. New features in the editor increase design freedoms, provide additional layout options and style variations to allow designers more control over the look of a site.</p>\n\n\n\n<p>This release also introduces the <strong>Twenty Twenty theme</strong> giving the user more design flexibility and integration with the block editor. Creating beautiful web pages and advanced layouts has never been easier.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Block Editor Improvements</h2>\n\n\n\n\n\n\n\n<p>This enhancement-focused update introduces over 150 new features and usability improvements, including improved large image support for uploading non-optimized, high-resolution pictures taken from your smartphone or other high-quality cameras. Combined with larger default image sizes, pictures always look their best.</p>\n\n\n\n<p>Accessibility improvements include the integration of block editor styles in the admin interface. These improved styles fix many accessibility issues: color contrast on form fields and buttons, consistency between editor and admin interfaces, new snackbar notices, standardizing to the default WordPress color scheme, and the introduction of Motion to make interacting with your blocks feel swift and natural. </p>\n\n\n\n<p>For people who use a keyboard to navigate the dashboard, the block editor now has a Navigation mode. This lets you jump from block to block without tabbing through every part of the block controls.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Expanded Design Flexibility</h2>\n\n\n\n\n\n\n\n<p>WordPress 5.3 adds even more robust tools for creating amazing designs.</p>\n\n\n\n<ul><li>The new Group block lets you easily divide your page into colorful sections.</li><li>The Columns block now supports fixed column widths.</li><li>The new predefined layouts make it a cinch to arrange content into advanced designs.</li><li>Heading blocks now offer controls for text and background color.</li><li>Additional style options allow you to set your preferred style for any block that supports this feature.</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Introducing Twenty Twenty</h2>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/twentytwenty-desktop.png?resize=632%2C626&ssl=1\" alt=\"A desktop preview of the Twenty Twenty theme, showing both the front-end and the editor view.\" class=\"wp-image-7686\" /></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/twentytwenty-mobile.png?w=632&ssl=1\" alt=\"A mobile image of the Twenty Twenty  theme, over a decorative backgorund of brown-grey bars.\" class=\"wp-image-7714\" /><div class=\"wp-block-media-text__content\">\n<p>As the block editor celebrates its first birthday, we are proud that Twenty Twenty is designed with flexibility at its core. Show off your services or products with a combination of columns, groups, and media blocks. Set your content to wide or full alignment for dynamic and engaging layouts. Or let your thoughts be the star with a centered content column!</p>\n\n\n\n<p class=\"has-normal-font-size\">As befits a theme called Twenty Twenty, clarity and readability is also a big focus. The theme includes the typeface&nbsp;<a href=\"https://rsms.me/inter/\">Inter</a>, designed by Rasmus Andersson. Inter comes in a Variable Font version, a first for default themes, which keeps load times short by containing all weights and styles of Inter in just two font files.</p>\n</div></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Improvements for Everyone</h2>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Rotate.png?w=632&ssl=1\" alt=\"An icon showing an arrow rotating a square.\" class=\"wp-image-7731\" /><div class=\"wp-block-media-text__content\">\n<h3>Automatic Image Rotation</h3>\n\n\n\n<p>Your images will be correctly rotated upon upload according to the embedded orientation data. This feature was first proposed nine years ago and made possible through the perseverance of many dedicated contributors.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/11/Health.png?w=632&ssl=1\" alt=\"A plus in a square, indicating health.\" class=\"wp-image-7732\" /><div class=\"wp-block-media-text__content\">\n<h3>Improved Site Health Checks</h3>\n\n\n\n<p>The improvements introduced in 5.3 make it even easier to identify issues. Expanded recommendations highlight areas that may need troubleshooting on your site from the Health Check screen.</p>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Email.png?w=632&ssl=1\" alt=\"A email icon.\" class=\"wp-image-7733\" /><div class=\"wp-block-media-text__content\">\n<h3>Admin Email Verification</h3>\n\n\n\n<p>You’ll now be periodically asked to confirm that your admin email address is up to date when you log in as an administrator. This reduces the chance of getting locked out of your site if you change your email address.</p>\n</div></div>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>For Developers</h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<h3>Date/Time Component Fixes</h3>\n\n\n\n<p>Developers can now work with&nbsp;<a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">dates and timezones</a>&nbsp;in a more reliable way. Date and time functionality has received a number of new API functions for unified timezone retrieval and PHP interoperability, as well as many bug fixes.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3>PHP 7.4 Compatibility</h3>\n\n\n\n<p>WordPress 5.3 aims to fully support PHP 7.4. This release contains&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">multiple changes</a>&nbsp;to remove deprecated functionality and ensure compatibility. WordPress continues to encourage all users to run the latest and greatest versions of PHP.</p>\n</div>\n</div>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/divider.png?resize=632%2C159&ssl=1\" alt=\"\" class=\"wp-image-7721\" />\n\n\n\n<h2>The Squad</h2>\n\n\n\n<p>This release was led by&nbsp;<a href=\"http://ma.tt/\">Matt Mullenweg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/francina\">Francesca Marano</a>, and <a href=\"https://dream-encode.com/blog/\">David Baumwald</a>. They were enthusiastically supported by a large release squad:</p>\n\n\n\n<ul><li><strong>Editor Tech</strong>: Riad Benguella (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/youknowriad/\"><strong>@youknowriad</strong></a>)</li><li><strong>Editor Design</strong>: Mark Uraine (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/mapk/\"><strong>@mapk</strong></a>)</li><li><strong>Core Tech</strong>: Andrew Ozz (<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://profiles.wordpress.org/azaozz/\"><strong>@azaozz</strong></a>)</li><li><strong>Docs Coordinator</strong>:&nbsp;Justin Ahinon (<a href=\"https://profiles.wordpress.org/justinahinon/\"><strong>@justinahinon</strong></a>)</li><li><strong>Marketing/Release Comms</strong>:&nbsp;Mike Reid (<a href=\"https://profiles.wordpress.org/mikerbg/\"><strong>@mikerbg</strong></a>)</li><li><strong>Media/Uploader</strong>:&nbsp;Mike Schroder (<a href=\"https://profiles.wordpress.org/mikeschroder/\"><strong>@mikeschroder</strong></a>)</li><li><strong>Accessibility</strong>:&nbsp;JB Audras (<a href=\"https://profiles.wordpress.org/audrasjb/\"><strong>@audrasjb</strong></a>)</li><li><strong>Default Theme</strong> <strong>Wrangler</strong>: Ian Belanger (<a href=\"https://profiles.wordpress.org/ianbelanger/\"><strong>@ianbelanger</strong></a>)</li><li><strong>Default Theme Designer</strong>: Anders Norén (<a href=\"https://profiles.wordpress.org/anlino/\"><strong>@anlino</strong></a>)</li></ul>\n\n\n\n<p>The squad was joined throughout the twelve week release cycle by 645 generous volunteer contributors (our largest group of contributors to date) who collectively fixed 658 bugs.</p>\n\n\n\n<p>Put on a Rahsaan Roland Kirk playlist, click that update button (or <a href=\"https://wordpress.org/download/\">download it directly</a>), and check the profiles of the fine folks that helped:</p>\n\n\n<a href=\"https://profiles.wordpress.org/123host/\">123host</a>, <a href=\"https://profiles.wordpress.org/1994rstefan/\">1994rstefan</a>, <a href=\"https://profiles.wordpress.org/5hel2l2y/\">5hel2l2y</a>, <a href=\"https://profiles.wordpress.org/irsdl/\">@irsdl</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/aksdvp/\">Aashish S</a>, <a href=\"https://profiles.wordpress.org/abhijitrakas/\">Abhijit Rakas</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb/\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/acalfieri/\">acalfieri</a>, <a href=\"https://profiles.wordpress.org/acosmin/\">acosmin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamsoucie/\">Adam Soucie</a>, <a href=\"https://profiles.wordpress.org/adhitya03/\">Adhitya Rachman</a>, <a href=\"https://profiles.wordpress.org/ahdeubzer/\">ahdeubzer</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais/\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ajayghaghretiya1/\">Ajay Ghaghretiya</a>, <a href=\"https://profiles.wordpress.org/ajitbohra/\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/ajlende/\">ajlende</a>, <a href=\"https://profiles.wordpress.org/atachibana/\">Akira Tachibana</a>, <a href=\"https://profiles.wordpress.org/albertomake/\">albertomake</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/xavortm/\">Alex Dimitrov</a>, <a href=\"https://profiles.wordpress.org/alexclassroom/\">Alex Lion</a>, <a href=\"https://profiles.wordpress.org/alexsanford1/\">Alex Sanford</a>, <a href=\"https://profiles.wordpress.org/xyfi/\">Alexander Botteram</a>, <a href=\"https://profiles.wordpress.org/xel1045/\">Alexandre D\'Eschambeault</a>, <a href=\"https://profiles.wordpress.org/alexvorn2/\">Alexandru Vornicescu</a>, <a href=\"https://profiles.wordpress.org/alexeyskr/\">alexeyskr</a>, <a href=\"https://profiles.wordpress.org/alextran/\">alextran</a>, <a href=\"https://profiles.wordpress.org/ayubi/\">Ali Ayubi</a>, <a href=\"https://profiles.wordpress.org/allancole/\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav/\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/alvarogois/\">Alvaro Gois dos Santos</a>, <a href=\"https://profiles.wordpress.org/arush/\">Amanda Rush</a>, <a href=\"https://profiles.wordpress.org/amolv/\">Amol Vhankalas</a>, <a href=\"https://profiles.wordpress.org/anlino/\">Anders Norén</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andg/\">Andrea Gandino</a>, <a href=\"https://profiles.wordpress.org/agengineering/\">Andrea Grillo</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/abrain/\">Andreas Brain</a>, <a href=\"https://profiles.wordpress.org/andraganescu/\">Andrei Draganescu</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin/\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/anevins/\">Andrew Nevins</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/andrewtaylor-1/\">Andrew Taylor</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey Savchenko</a>, <a href=\"https://profiles.wordpress.org/nosolosw/\">Andrés Maneiro</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer/\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/angelagibson/\">Angela Gibson</a>, <a href=\"https://profiles.wordpress.org/rilwis/\">Anh Tran</a>, <a href=\"https://profiles.wordpress.org/anischarolia/\">anischarolia</a>, <a href=\"https://profiles.wordpress.org/antpb/\">Anthony Burchell</a>, <a href=\"https://profiles.wordpress.org/atimmer/\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/apermo/\">Apermo</a>, <a href=\"https://profiles.wordpress.org/arafat/\">Arafat Rahman</a>, <a href=\"https://profiles.wordpress.org/arena/\">arena</a>, <a href=\"https://profiles.wordpress.org/aristath/\">Ari Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/arunsathiya/\">Arun Sathiya</a>, <a href=\"https://profiles.wordpress.org/artisticasad/\">Asad Shahbaz</a>, <a href=\"https://profiles.wordpress.org/asadkn/\">asadkn</a>, <a href=\"https://profiles.wordpress.org/mrasharirfan/\">Ashar Irfan</a>, <a href=\"https://profiles.wordpress.org/ashwinpc/\">ashwinpc</a>, <a href=\"https://profiles.wordpress.org/wpboss/\">Aslam Shekh</a>, <a href=\"https://profiles.wordpress.org/atlasmahesh/\">atlasmahesh</a>, <a href=\"https://profiles.wordpress.org/au87/\">au87</a>, <a href=\"https://profiles.wordpress.org/aubreypwd/\">Aubrey Portwood</a>, <a href=\"https://profiles.wordpress.org/augustuswm/\">augustuswm</a>, <a href=\"https://profiles.wordpress.org/aurooba/\">Aurooba Ahmed</a>, <a href=\"https://profiles.wordpress.org/avinapatel/\">Avina Patel</a>, <a href=\"https://profiles.wordpress.org/aksl95/\">Axel DUCORON</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/backermann1978/\">backermann1978</a>, <a href=\"https://profiles.wordpress.org/b-07/\">Bappi</a>, <a href=\"https://profiles.wordpress.org/toszcze/\">Bartosz Romanowski</a>, <a href=\"https://profiles.wordpress.org/pixolin/\">Bego Mario Garde</a>, <a href=\"https://profiles.wordpress.org/bfintal/\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/benjamin_zekavica/\">Benjamin Zekavica</a>, <a href=\"https://profiles.wordpress.org/bennemann/\">bennemann</a>, <a href=\"https://profiles.wordpress.org/bgermann/\">bgermann</a>, <a href=\"https://profiles.wordpress.org/bhaktirajdev/\">Bhaktii Rajdev</a>, <a href=\"https://profiles.wordpress.org/bibliofille/\">bibliofille</a>, <a href=\"https://profiles.wordpress.org/biranit/\">Biranit</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bitcomplex/\">bitcomplex</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boblinthorst/\">boblinthorst</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/crazyjaco/\">Bradley Jacobs</a>, <a href=\"https://profiles.wordpress.org/bradleyt/\">Bradley Taylor</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher/\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/bronsonquick/\">Bronson Quick</a>, <a href=\"https://profiles.wordpress.org/bsetiawan88/\">bsetiawan88</a>, <a href=\"https://profiles.wordpress.org/burhandodhy/\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/cbravobernal/\">Carlos Bravo</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/cdog/\">Catalin Dogaru</a>, <a href=\"https://profiles.wordpress.org/cathibosco1/\">Cathi Bosco</a>, <a href=\"https://profiles.wordpress.org/chandrapatel/\">Chandra Patel</a>, <a href=\"https://profiles.wordpress.org/caercam/\">Charlie Merland</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">Chetan Satasiya</a>, <a href=\"https://profiles.wordpress.org/blogginglife/\">Chico</a>, <a href=\"https://profiles.wordpress.org/chintan1896/\">Chintan hingrajiya</a>, <a href=\"https://profiles.wordpress.org/chrico/\">ChriCo</a>, <a href=\"https://profiles.wordpress.org/aprea/\">Chris Aprea</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten/\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/needle/\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/lovememore/\">christianoliff</a>, <a href=\"https://profiles.wordpress.org/christophherr/\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/cleancoded/\">cleancoded</a>, <a href=\"https://profiles.wordpress.org/cmagrin/\">cmagrin</a>, <a href=\"https://profiles.wordpress.org/compilenix/\">CompileNix</a>, <a href=\"https://profiles.wordpress.org/salzano/\">Corey Salzano</a>, <a href=\"https://profiles.wordpress.org/courtney0burton/\">courtney0burton</a>, <a href=\"https://profiles.wordpress.org/cristianozanca/\">Cristiano Zanca</a>, <a href=\"https://profiles.wordpress.org/littlebigthing/\">Csaba (LittleBigThings)</a>, <a href=\"https://profiles.wordpress.org/dswebsme/\">D.S. Webster</a>, <a href=\"https://profiles.wordpress.org/daleharrison/\">daleharrison</a>, <a href=\"https://profiles.wordpress.org/danmicamediacom/\">Dan Foley</a>, <a href=\"https://profiles.wordpress.org/goodevilgenius/\">Dan Jones</a>, <a href=\"https://profiles.wordpress.org/danbuk/\">DanBUK</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/redsweater/\">Daniel Jalkut (Red Sweater)</a>, <a href=\"https://profiles.wordpress.org/danieltj/\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan/\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp/\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/danieliser/\">danieliser</a>, <a href=\"https://profiles.wordpress.org/daniloercoli/\">daniloercoli</a>, <a href=\"https://profiles.wordpress.org/dvankooten/\">Danny van Kooten</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier</a>, <a href=\"https://profiles.wordpress.org/darthhexx/\">darthhexx</a>, <a href=\"https://profiles.wordpress.org/deapness/\">Dave Parker</a>, <a href=\"https://profiles.wordpress.org/get_dave/\">Dave Smith</a>, <a href=\"https://profiles.wordpress.org/drw158/\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davetgreen/\">davetgreen</a>, <a href=\"https://profiles.wordpress.org/davilera/\">David Aguilera</a>, <a href=\"https://profiles.wordpress.org/davidanderson/\">David Anderson</a>, <a href=\"https://profiles.wordpress.org/david.binda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/davidbinda/\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/daveshine/\">David Decker</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/daviedr/\">David Rozando</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/daxelrod/\">daxelrod</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/dennis_f/\">Deni</a>, <a href=\"https://profiles.wordpress.org/dehisok/\">Denis Cherniavsky</a>, <a href=\"https://profiles.wordpress.org/denisco/\">Denis Yanchevskiy</a>, <a href=\"https://profiles.wordpress.org/wpdennis/\">Dennis</a>, <a href=\"https://profiles.wordpress.org/dionysous/\">Dennis Hipp</a>, <a href=\"https://profiles.wordpress.org/dmsnell/\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/dsifford/\">Derek Sifford</a>, <a href=\"https://profiles.wordpress.org/derweili/\">derweili</a>, <a href=\"https://profiles.wordpress.org/dfangstrom/\">dfangstrom</a>, <a href=\"https://profiles.wordpress.org/dharmin16/\">Dharmin Shah</a>, <a href=\"https://profiles.wordpress.org/dhavalkasvala/\">Dhaval kasavala</a>, <a href=\"https://profiles.wordpress.org/dhuyvetter/\">dhuyvetter</a>, <a href=\"https://profiles.wordpress.org/dianeco/\">Diane Co</a>, <a href=\"https://profiles.wordpress.org/diedeexterkate/\">DiedeExterkate</a>, <a href=\"https://profiles.wordpress.org/diego-la-monica/\">Diego La Monica</a>, <a href=\"https://profiles.wordpress.org/digitalapps/\">digitalapps</a>, <a href=\"https://profiles.wordpress.org/dilipbheda/\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/odminstudios/\">Dima</a>, <a href=\"https://profiles.wordpress.org/dingo_d/\">dingo-d</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency/\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/drewapicture/\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dukex/\">Dukex</a>, <a href=\"https://profiles.wordpress.org/dushanthi/\">dushanthi</a>, <a href=\"https://profiles.wordpress.org/seedsca/\">EcoTechie</a>, <a href=\"https://profiles.wordpress.org/ediamin/\">Edi Amin</a>, <a href=\"https://profiles.wordpress.org/etoledom/\">Eduardo Toledo</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/elliotcondon/\">Elliot Condon</a>, <a href=\"https://profiles.wordpress.org/codex-m/\">Emerson Maningo</a>, <a href=\"https://profiles.wordpress.org/edocev/\">Emil Dotsev</a>, <a href=\"https://profiles.wordpress.org/emiluzelac/\">Emil Uzelac</a>, <a href=\"https://profiles.wordpress.org/epiqueras/\">Enrique Piqueras</a>, <a href=\"https://profiles.wordpress.org/nrqsnchz/\">Enrique S&#225;nchez</a>, <a href=\"https://profiles.wordpress.org/erikkroes/\">erikkroes</a>, <a href=\"https://profiles.wordpress.org/estelaris/\">estelaris</a>, <a href=\"https://profiles.wordpress.org/evalarumbe/\">evalarumbe</a>, <a href=\"https://profiles.wordpress.org/faazshift/\">faazshift</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy/\">Fabian K&#228;gy</a>, <a href=\"https://profiles.wordpress.org/fblaser/\">fblaser</a>, <a href=\"https://profiles.wordpress.org/felipeelia/\">Felipe Elia</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fencer04/\">Fencer04</a>, <a href=\"https://profiles.wordpress.org/flipkeijzer/\">flipkeijzer</a>, <a href=\"https://profiles.wordpress.org/mista-flo/\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/foysalremon/\">Foysal Remon</a>, <a href=\"https://profiles.wordpress.org/galbaras/\">Gal Baras</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/voldemortensen/\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/garyj/\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/guddu1315/\">Gaurang Dabhi</a>, <a href=\"https://profiles.wordpress.org/gchtr/\">gchtr</a>, <a href=\"https://profiles.wordpress.org/soulseekah/\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/loyaltymanufaktur/\">Gesundheit Bewegt GmbH</a>, <a href=\"https://profiles.wordpress.org/sachyya-sachet/\">ghoul</a>, <a href=\"https://profiles.wordpress.org/girlieworks/\">girlieworks</a>, <a href=\"https://profiles.wordpress.org/glauberglauber/\">glauberglauber</a>, <a href=\"https://profiles.wordpress.org/hometowntrailers/\">Glenn</a>, <a href=\"https://profiles.wordpress.org/gravityview/\">GravityView</a>, <a href=\"https://profiles.wordpress.org/gregsullivan/\">gregsullivan</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hardeepasrani/\">Hardeep Asrani</a>, <a href=\"https://profiles.wordpress.org/thakkarhardik/\">Hardik Thakkar</a>, <a href=\"https://profiles.wordpress.org/hardipparmar/\">hardipparmar</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/hareesh pillai/\">Hareesh Pillai</a>, <a href=\"https://profiles.wordpress.org/harryfear/\">harryfear</a>, <a href=\"https://profiles.wordpress.org/harshbarach/\">harshbarach</a>, <a href=\"https://profiles.wordpress.org/haszari/\">haszari</a>, <a href=\"https://profiles.wordpress.org/hesyifei/\">He Yifei</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/henrywright/\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/herbmiller/\">herbmiller</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/hirofumi2012/\">hirofumi2012</a>, <a href=\"https://profiles.wordpress.org/hkandulla/\">HKandulla</a>, <a href=\"https://profiles.wordpress.org/howdy_mcgee/\">Howdy_McGee</a>, <a href=\"https://profiles.wordpress.org/hoythan/\">hoythan</a>, <a href=\"https://profiles.wordpress.org/hlashbrooke/\">Hugh Lashbrooke</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianmjones/\">ianmjones</a>, <a href=\"https://profiles.wordpress.org/zinigor/\">Igor Zinovyev</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/gsayed786/\">Imran Sayed</a>, <a href=\"https://profiles.wordpress.org/intimez/\">intimez</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/iqbalbary/\">iqbalbary</a>, <a href=\"https://profiles.wordpress.org/ireneyoast/\">Irene Strikkers</a>, <a href=\"https://profiles.wordpress.org/isabel_brison/\">Isabel Brison</a>, <a href=\"https://profiles.wordpress.org/ismailelkorchi/\">Ismail El Korchi</a>, <a href=\"https://profiles.wordpress.org/jdgrimes/\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jagirbaheshwp/\">jagirbaheshwp</a>, <a href=\"https://profiles.wordpress.org/whyisjake/\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jalpa1984/\">Jalpa Panchal</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jameslnewell/\">jameslnewell</a>, <a href=\"https://profiles.wordpress.org/janak007/\">janak Kaneriya</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/janwoostendorp/\">janw.oostendorp</a>, <a href=\"https://profiles.wordpress.org/jared_smith/\">jared_smith</a>, <a href=\"https://profiles.wordpress.org/jarocks/\">jarocks</a>, <a href=\"https://profiles.wordpress.org/jarretc/\">Jarret</a>, <a href=\"https://profiles.wordpress.org/javeweb/\">jave.web</a>, <a href=\"https://profiles.wordpress.org/javorszky/\">javorszky</a>, <a href=\"https://profiles.wordpress.org/jayswadas/\">Jay Swadas</a>, <a href=\"https://profiles.wordpress.org/iamjaydip/\">Jaydip</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jfarthing84/\">Jeff Farthing</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/jeichorn/\">jeichorn</a>, <a href=\"https://profiles.wordpress.org/jenblogs4u/\">Jen Miller</a>, <a href=\"https://profiles.wordpress.org/jenkoian/\">jenkoian</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/engelen/\">Jesper van Engelen</a>, <a href=\"https://profiles.wordpress.org/luminuu/\">Jessica Lyschik</a>, <a href=\"https://profiles.wordpress.org/jffng/\">jffng</a>, <a href=\"https://profiles.wordpress.org/jikamens/\">jikamens</a>, <a href=\"https://profiles.wordpress.org/jitendrabanjara1991/\">jitendrabanjara1991</a>, <a href=\"https://profiles.wordpress.org/jkitchen/\">jkitchen</a>, <a href=\"https://profiles.wordpress.org/jmmathc/\">jmmathc</a>, <a href=\"https://profiles.wordpress.org/joakimsilfverberg/\">joakimsilfverberg</a>, <a href=\"https://profiles.wordpress.org/jobthomas/\">Job</a>, <a href=\"https://profiles.wordpress.org/jodamo5/\">jodamo5</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnregan3/\">John Regan</a>, <a href=\"https://profiles.wordpress.org/jojotjebaby/\">jojotjebaby</a>, <a href=\"https://profiles.wordpress.org/jrchamp/\">Jonathan Champ</a>, <a href=\"https://profiles.wordpress.org/jond/\">Jonathan Davis</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jg-visual/\">Jonathan Goldford</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonoaldersonwp/\">Jono Alderson</a>, <a href=\"https://profiles.wordpress.org/joostdevalk/\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/koke/\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/josephscott/\">Joseph Scott</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha Haden</a>, <a href=\"https://profiles.wordpress.org/shelob9/\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/joshuanoyce/\">Joshua Noyce</a>, <a href=\"https://profiles.wordpress.org/joshuawold/\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/jsnajdr/\">jsnajdr</a>, <a href=\"https://profiles.wordpress.org/juanfra/\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/jrf/\">Juliette Reinders Folmer</a>, <a href=\"https://profiles.wordpress.org/juliobox/\">Julio Potier</a>, <a href=\"https://profiles.wordpress.org/junktrunk/\">junktrunk</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/greenshady/\">Justin Tadlock</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kafleg/\">kafleg</a>, <a href=\"https://profiles.wordpress.org/trepmal/\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kakshak/\">Kakshak Kalaria</a>, <a href=\"https://profiles.wordpress.org/kamrankhorsandi/\">Kamran Khorsandi</a>, <a href=\"https://profiles.wordpress.org/leprincenoir/\">Kantari Samy</a>, <a href=\"https://profiles.wordpress.org/karlgroves/\">karlgroves</a>, <a href=\"https://profiles.wordpress.org/katielgc/\">katielgc</a>, <a href=\"https://profiles.wordpress.org/kbrownkd/\">kbrownkd</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/kellychoffman/\">Kelly Hoffman</a>, <a href=\"https://profiles.wordpress.org/kerfred/\">Kerfred</a>, <a href=\"https://profiles.wordpress.org/kingkero/\">kero</a>, <a href=\"https://profiles.wordpress.org/ketanumretiya030/\">ketanumretiya030</a>, <a href=\"https://profiles.wordpress.org/kevinkovadia/\">kevIN kovaDIA</a>, <a href=\"https://profiles.wordpress.org/killerbishop/\">killerbishop</a>, <a href=\"https://profiles.wordpress.org/killua99/\">killua99</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp/\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/kokers/\">kokers</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon/\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/kuus/\">kuus</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leogermani/\">leogermani</a>, <a href=\"https://profiles.wordpress.org/leonblade/\">leonblade</a>, <a href=\"https://profiles.wordpress.org/lessbloat/\">lessbloat</a>, <a href=\"https://profiles.wordpress.org/lllor/\">lllor</a>, <a href=\"https://profiles.wordpress.org/lordlod/\">lordlod</a>, <a href=\"https://profiles.wordpress.org/loreleiaurora/\">LoreleiAurora</a>, <a href=\"https://profiles.wordpress.org/luan-ramos/\">Luan Ramos</a>, <a href=\"https://profiles.wordpress.org/luciano-croce/\">luciano-croce</a>, <a href=\"https://profiles.wordpress.org/luigipulcini/\">luigipulcini</a>, <a href=\"https://profiles.wordpress.org/luisherranz/\">luisherranz</a>, <a href=\"https://profiles.wordpress.org/wpfed/\">Luke</a>, <a href=\"https://profiles.wordpress.org/lukecarbis/\">Luke Carbis</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh/\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/m1tk00/\">m1tk00</a>, <a href=\"https://profiles.wordpress.org/maartenleenders/\">maartenleenders</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">Maciej Palmowski</a>, <a href=\"https://profiles.wordpress.org/mahesh901122/\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/majemedia/\">Maje Media LLC</a>, <a href=\"https://profiles.wordpress.org/malthert/\">malthert</a>, <a href=\"https://profiles.wordpress.org/manooweb/\">manooweb</a>, <a href=\"https://profiles.wordpress.org/manuelaugustin/\">Manuel Augustin</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk/\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/marcguay/\">MarcGuay</a>, <a href=\"https://profiles.wordpress.org/iworks/\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marcomartins/\">Marco Martins</a>, <a href=\"https://profiles.wordpress.org/marcosalexandre/\">MarcosAlexandre</a>, <a href=\"https://profiles.wordpress.org/mkaz/\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekhrabe/\">Marek Hrabe</a>, <a href=\"https://profiles.wordpress.org/chaton666/\">Marie Comet</a>, <a href=\"https://profiles.wordpress.org/maguiar/\">Mario Aguiar</a>, <a href=\"https://profiles.wordpress.org/nofearinc/\">Mario Peshev</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/mdwolinski/\">Mark D Wolinski</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mapk/\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/mspatovaliyski/\">Martin Spatovaliyski</a>, <a href=\"https://profiles.wordpress.org/splitti/\">Martin Splitt</a>, <a href=\"https://profiles.wordpress.org/m-e-h/\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/masummdar/\">masummdar</a>, <a href=\"https://profiles.wordpress.org/matstars/\">Mat Gargano</a>, <a href=\"https://profiles.wordpress.org/mat-lipe/\">Mat Lipe</a>, <a href=\"https://profiles.wordpress.org/iceable/\">Mathieu Sarrasin</a>, <a href=\"https://profiles.wordpress.org/mattchowning/\">Matt Chowning</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattheu/\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/matthiasthiel/\">matthias.thiel</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/matveb/\">Matías Ventura</a>, <a href=\"https://profiles.wordpress.org/maximeculea/\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/maximejobin/\">Maxime Jobin</a>, <a href=\"https://profiles.wordpress.org/maxme/\">maxme</a>, <a href=\"https://profiles.wordpress.org/mchavezi/\">mchavezi</a>, <a href=\"https://profiles.wordpress.org/immeet94/\">Meet Makadia</a>, <a href=\"https://profiles.wordpress.org/mehidi258/\">Mehidi Hassan</a>, <a href=\"https://profiles.wordpress.org/mehulkaklotar/\">Mehul Kaklotar</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/melinedo/\">Melin Edomwonyi</a>, <a href=\"https://profiles.wordpress.org/meloniq/\">meloniq</a>, <a href=\"https://profiles.wordpress.org/michael-arestad/\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/mbabker/\">Michael Babker</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/donmhico/\">Michael Panaga</a>, <a href=\"https://profiles.wordpress.org/michelweimerskirch/\">michel.weimerskirch</a>, <a href=\"https://profiles.wordpress.org/michielatyoast/\">Michiel Heijmans</a>, <a href=\"https://profiles.wordpress.org/mcsf/\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/miguelvieira/\">Miguel Vieira</a>, <a href=\"https://profiles.wordpress.org/mihaiiceyro/\">mihaiiceyro</a>, <a href=\"https://profiles.wordpress.org/miinasikk/\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/simison/\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri/\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mdgl/\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mikehansenme/\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/mikerbg/\">Mike Reid</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikengarrett/\">MikeNGarrett</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mobeen-abdullah/\">Mobeen Abdullah</a>, <a href=\"https://profiles.wordpress.org/mohsinrasool/\">Mohsin Rasool</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">Monika Rao</a>, <a href=\"https://profiles.wordpress.org/boemedia/\">Monique Dubbelman</a>, <a href=\"https://profiles.wordpress.org/gwendydd/\">Morgan Kay</a>, <a href=\"https://profiles.wordpress.org/mor10/\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman/\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mt8biz/\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mppfeiffer/\">mppfeiffer</a>, <a href=\"https://profiles.wordpress.org/mrmadhat/\">mrmadhat</a>, <a href=\"https://profiles.wordpress.org/msaggiorato/\">msaggiorato</a>, <a href=\"https://profiles.wordpress.org/mtias/\">mtias</a>, <a href=\"https://profiles.wordpress.org/phpdocs/\">Muhammad Afzal</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/mzorz/\">mzorz</a>, <a href=\"https://profiles.wordpress.org/nadir/\">nadir</a>, <a href=\"https://profiles.wordpress.org/nfmohit/\">Nahid Ferdous Mohit</a>, <a href=\"https://profiles.wordpress.org/naveenkharwar/\">Naveen Kharwar</a>, <a href=\"https://profiles.wordpress.org/nayana123/\">Nayana Maradia</a>, <a href=\"https://profiles.wordpress.org/greatislander/\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/neelpatel7295/\">Neel Patel</a>, <a href=\"https://profiles.wordpress.org/nextendweb/\">Nextendweb</a>, <a href=\"https://profiles.wordpress.org/niallkennedy/\">Niall Kennedy</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty/\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nickylimjj/\">Nicky Lim</a>, <a href=\"https://profiles.wordpress.org/nicolad/\">nicolad</a>, <a href=\"https://profiles.wordpress.org/rahe/\">Nicolas Juen</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw/\">Niels de Blaauw</a>, <a href=\"https://profiles.wordpress.org/nielslange/\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nikschavan/\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nikolastoqnow/\">nikolastoqnow</a>, <a href=\"https://profiles.wordpress.org/niq1982/\">Niku Hietanen</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/nishitlangaliya/\">Nishit Langaliya</a>, <a href=\"https://profiles.wordpress.org/kailanitish90/\">Nitish Kaila</a>, <a href=\"https://profiles.wordpress.org/nmenescardi/\">nmenescardi</a>, <a href=\"https://profiles.wordpress.org/noahtallen/\">noahtallen</a>, <a href=\"https://profiles.wordpress.org/notnownikki/\">notnownikki</a>, <a href=\"https://profiles.wordpress.org/hideokamoto/\">Okamoto Hidetaka</a>, <a href=\"https://profiles.wordpress.org/lindstromer/\">Olaf Lindstr&#246;m</a>, <a href=\"https://profiles.wordpress.org/moonomo/\">Omaar Osmaan</a>, <a href=\"https://profiles.wordpress.org/omarreiss/\">Omar Reiss</a>, <a href=\"https://profiles.wordpress.org/onlanka/\">onlanka</a>, <a href=\"https://profiles.wordpress.org/oxyc/\">oxyc</a>, <a href=\"https://profiles.wordpress.org/ozmatflc/\">ozmatflc</a>, <a href=\"https://profiles.wordpress.org/paaljoachim/\">Paal Joachim Romdahl</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">Paragon Initiative Enterprises</a>, <a href=\"https://profiles.wordpress.org/paresh07/\">Paresh Shinde</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/patilvikasj/\">patilvikasj</a>, <a href=\"https://profiles.wordpress.org/patrelentlesstechnologycom/\">Patrick Baldwin</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron/\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/paulschreiber/\">Paul Schreiber</a>, <a href=\"https://profiles.wordpress.org/bassgang/\">Paul Vincent Beigang</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendon&#231;a</a>, <a href=\"https://profiles.wordpress.org/pputzer/\">pepe</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/phillipjohn/\">PhillipJohn</a>, <a href=\"https://profiles.wordpress.org/pierlo/\">Pierre Gordon</a>, <a href=\"https://profiles.wordpress.org/pikamander2/\">pikamander2</a>, <a href=\"https://profiles.wordpress.org/decrecementofeliz/\">Pilar Mera</a>, <a href=\"https://profiles.wordpress.org/wppinar/\">Pinar Olguc</a>, <a href=\"https://profiles.wordpress.org/powerbuoy/\">powerbuoy</a>, <a href=\"https://profiles.wordpress.org/promz/\">Pramod Jodhani</a>, <a href=\"https://profiles.wordpress.org/pratikthink/\">Pratik</a>, <a href=\"https://profiles.wordpress.org/pratikkry/\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/freewebmentor/\">Prem Tiwari</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/priyankkpatel/\">Priyank Patel</a>, <a href=\"https://profiles.wordpress.org/quantumstate/\">Quantumstate</a>, <a href=\"https://profiles.wordpress.org/raajtram/\">Raaj Trambadia</a>, <a href=\"https://profiles.wordpress.org/raamdev/\">Raam Dev</a>, <a href=\"https://profiles.wordpress.org/raboodesign/\">raboodesign</a>, <a href=\"https://profiles.wordpress.org/rahulvaza/\">Rahul Vaza</a>, <a href=\"https://profiles.wordpress.org/superpoincare/\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramon-fincken/\">ramon fincken</a>, <a href=\"https://profiles.wordpress.org/rclations/\">RC Lations</a>, <a href=\"https://profiles.wordpress.org/rebasaurus/\">rebasaurus</a>, <a href=\"https://profiles.wordpress.org/reikodd/\">ReikoDD</a>, <a href=\"https://profiles.wordpress.org/remcotolsma/\">Remco Tolsma</a>, <a href=\"https://profiles.wordpress.org/retrofox/\">retrofox</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rockfire/\">Richard Korthuis</a>, <a href=\"https://profiles.wordpress.org/riddhiehta02/\">Riddhi Mehta</a>, <a href=\"https://profiles.wordpress.org/rbrishabh/\">Rishabh Budhiraja</a>, <a href=\"https://profiles.wordpress.org/noisysocks/\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/miqrogroove/\">Robert Chapin</a>, <a href=\"https://profiles.wordpress.org/robi-bobi/\">Robert Ivanov</a>, <a href=\"https://profiles.wordpress.org/rogueresearch/\">rogueresearch</a>, <a href=\"https://profiles.wordpress.org/rconde/\">Roi Conde</a>, <a href=\"https://profiles.wordpress.org/ronakganatra/\">Ronak Ganatra</a>, <a href=\"https://profiles.wordpress.org/raubvogel/\">Ronny Harbich</a>, <a href=\"https://profiles.wordpress.org/karthost/\">Roy Randolph</a>, <a href=\"https://profiles.wordpress.org/roytanck/\">Roy Tanck</a>, <a href=\"https://profiles.wordpress.org/ryan/\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/ryankienstra/\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">S&#233;bastien SERRE</a>, <a href=\"https://profiles.wordpress.org/samgordondev/\">samgordondev</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/solarissmoke/\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/otto42/\">Samuel Wood (Otto)</a>, <a href=\"https://profiles.wordpress.org/progremzion/\">Sanket Mehta</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly/\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/sarathar/\">sarath.ar</a>, <a href=\"https://profiles.wordpress.org/saskak/\">saskak</a>, <a href=\"https://profiles.wordpress.org/sbardian/\">sbardian</a>, <a href=\"https://profiles.wordpress.org/coffee2code/\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/assassinateur/\">Seghir Nadir</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/vjik/\">Sergey Predvoditelev</a>, <a href=\"https://profiles.wordpress.org/sergiomdgomes/\">sergiomdgomes</a>, <a href=\"https://profiles.wordpress.org/seuser/\">seuser</a>, <a href=\"https://profiles.wordpress.org/sgastard/\">sgastard</a>, <a href=\"https://profiles.wordpress.org/shadyvb/\">Shady Sharaf</a>, <a href=\"https://profiles.wordpress.org/shamim51/\">Shamim Hasan</a>, <a href=\"https://profiles.wordpress.org/sharaz/\">Sharaz Shahid</a>, <a href=\"https://profiles.wordpress.org/shashank3105/\">Shashank Panchal</a>, <a href=\"https://profiles.wordpress.org/shawfactor/\">shawfactor</a>, <a href=\"https://profiles.wordpress.org/shital-patel/\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/siliconforks/\">siliconforks</a>, <a href=\"https://profiles.wordpress.org/simono/\">simono</a>, <a href=\"https://profiles.wordpress.org/sirreal/\">sirreal</a>, <a href=\"https://profiles.wordpress.org/sixes/\">Sixes</a>, <a href=\"https://profiles.wordpress.org/slaffik/\">Slava Abakumov</a>, <a href=\"https://profiles.wordpress.org/slobodanmanic/\">Slobodan Manic</a>, <a href=\"https://profiles.wordpress.org/smerriman/\">smerriman</a>, <a href=\"https://profiles.wordpress.org/snapfractalpop/\">snapfractalpop</a>, <a href=\"https://profiles.wordpress.org/socalchristina/\">socalchristina</a>, <a href=\"https://profiles.wordpress.org/soean/\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/spectacula/\">Spectacula</a>, <a href=\"https://profiles.wordpress.org/spenserhale/\">spenserhale</a>, <a href=\"https://profiles.wordpress.org/spuds10/\">spuds10</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/ryokuhi/\">Stefano Minoia</a>, <a href=\"https://profiles.wordpress.org/hypest/\">Stefanos Togoulidis</a>, <a href=\"https://profiles.wordpress.org/sabernhardt/\">Stephen Bernhardt</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/studyboi/\">studyboi</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sudhiryadav/\">Sudhir Yadav</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tha_sun/\">sun</a>, <a href=\"https://profiles.wordpress.org/codesue/\">Suzen Fylke</a>, <a href=\"https://profiles.wordpress.org/svanhal/\">svanhal</a>, <a href=\"https://profiles.wordpress.org/patilswapnilv/\">Swapnil V. Patil</a>, <a href=\"https://profiles.wordpress.org/swapnild/\">swapnild</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/sergioestevao/\">Sérgio Estêvão</a>, <a href=\"https://profiles.wordpress.org/miyauchi/\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/nevma/\">Takis</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tazotodua/\">tazotodua</a>, <a href=\"https://profiles.wordpress.org/technote0space/\">technote</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Tellyworth</a>, <a href=\"https://profiles.wordpress.org/tessak22/\">Tessa Kriesel</a>, <a href=\"https://profiles.wordpress.org/themes-1/\">them.es</a>, <a href=\"https://profiles.wordpress.org/themezly/\">Themezly</a>, <a href=\"https://profiles.wordpress.org/thulshof/\">Thijs Hulshof</a>, <a href=\"https://profiles.wordpress.org/kraftner/\">Thomas Kr&#228;ftner</a>, <a href=\"https://profiles.wordpress.org/thomaswm/\">thomaswm</a>, <a href=\"https://profiles.wordpress.org/tdh/\">Thord D. Hedengren</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith/\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a>, <a href=\"https://profiles.wordpress.org/n7studios/\">Tim Carr</a>, <a href=\"https://profiles.wordpress.org/timhavinga/\">Tim Havinga</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph/\">timph</a>, <a href=\"https://profiles.wordpress.org/tmatsuur/\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/tmdesigned/\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">tobifjellner (Tor-Bjorn Fjellner)</a>, <a href=\"https://profiles.wordpress.org/toddhalfpenny/\">toddhalfpenny</a>, <a href=\"https://profiles.wordpress.org/tosho/\">Todor Gaidarov</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tferry/\">Tommy Ferry</a>, <a href=\"https://profiles.wordpress.org/skithund/\">Toni Viemer&#246;</a>, <a href=\"https://profiles.wordpress.org/tonybogdanov/\">tonybogdanov</a>, <a href=\"https://profiles.wordpress.org/torres126/\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978/\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/trasweb/\">trasweb</a>, <a href=\"https://profiles.wordpress.org/travisnorthcutt/\">Travis Northcutt</a>, <a href=\"https://profiles.wordpress.org/travisseitler/\">travisseitler</a>, <a href=\"https://profiles.wordpress.org/triplejumper12/\">triplejumper12</a>, <a href=\"https://profiles.wordpress.org/truchot/\">truchot</a>, <a href=\"https://profiles.wordpress.org/truongwp/\">truongwp</a>, <a href=\"https://profiles.wordpress.org/dekervit/\">Tugdual de Kerviler</a>, <a href=\"https://profiles.wordpress.org/dinhtungdu/\">Tung Du</a>, <a href=\"https://profiles.wordpress.org/desaiuditd/\">Udit Desai</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich/\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/utsav72640/\">Utsav tilava</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/vbaimas/\">vbaimas</a>, <a href=\"https://profiles.wordpress.org/venutius/\">Venutius</a>, <a href=\"https://profiles.wordpress.org/fesovik/\">Viktor Veljanovski</a>, <a href=\"https://profiles.wordpress.org/vishalkakadiya/\">Vishal Kakadiya</a>, <a href=\"https://profiles.wordpress.org/vishitshah/\">vishitshah</a>, <a href=\"https://profiles.wordpress.org/vladlu/\">vladlu</a>, <a href=\"https://profiles.wordpress.org/vladwtz/\">Vladut Ilie</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, <a href=\"https://profiles.wordpress.org/svovaf/\">Vova Feldman</a>, <a href=\"https://profiles.wordpress.org/vrimill/\">vrimill</a>, <a href=\"https://profiles.wordpress.org/w3rkjana/\">w3rkjana</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\">webcommsat AbhaNonStopNewsUK</a>, <a href=\"https://profiles.wordpress.org/webdados/\">Webdados (Marco Almeida)</a>, <a href=\"https://profiles.wordpress.org/webmandesign/\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/wpdavis/\">William P. Davis</a>, <a href=\"https://profiles.wordpress.org/williampatton/\">William Patton</a>, <a href=\"https://profiles.wordpress.org/withinboredom/\">withinboredom</a>, <a href=\"https://profiles.wordpress.org/worldweb/\">worldweb</a>, <a href=\"https://profiles.wordpress.org/yanngarcia/\">yanngarcia</a>, <a href=\"https://profiles.wordpress.org/collet/\">Yannicki</a>, <a href=\"https://profiles.wordpress.org/yarnboy/\">yarnboy</a>, <a href=\"https://profiles.wordpress.org/yashar_hv/\">yashar_hv</a>, <a href=\"https://profiles.wordpress.org/yoavf/\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yodiyo/\">yodiyo</a>, <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\">Yvette Sonneveld</a>, <a href=\"https://profiles.wordpress.org/zaantar/\">zaantar</a>, <a href=\"https://profiles.wordpress.org/zalak151291/\">zalak151291</a>, <a href=\"https://profiles.wordpress.org/zebulan/\">Zebulan Stanphill</a>, <a href=\"https://profiles.wordpress.org/chesio/\">Česlav Przywara</a>, <a href=\"https://profiles.wordpress.org/airathalitov/\">АЙРАТ ХАЛИТОВ <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f525.png\" alt=\"?\" class=\"wp-smiley\" /></a>, and <a href=\"https://profiles.wordpress.org/ounziw/\">水野史土</a>.\n\n\n\n<div class=\"wp-block-spacer\"></div>\n\n\n\n<p>Many thanks to all of the community volunteers who contribute in the <a href=\"https://wordpress.org/support/\">support forums</a>. They answer questions from people across the world, whether they are using WordPress for the first time or since the first release. These releases are more successful for their efforts!</p>\n\n\n\n<p>Finally, thanks to all the community translators who worked on WordPress 5.3. Their efforts bring WordPress fully translated to 47 languages at release time, with more on the way.</p>\n\n\n\n<p>If you want learn more about volunteering with WordPress, check out&nbsp;<a href=\"https://make.wordpress.org/\">Make WordPress</a>&nbsp;or the&nbsp;<a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p class=\"has-text-align-center has-medium-font-size\">Thanks for choosing WordPress!</p>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image.png?fit=632%2C414&ssl=1\" alt=\"\" class=\"wp-image-7755\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Nov 2019 21:38:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: Recurring Payments Feature Launches for WordPress.com and Jetpack Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95300\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/recurring-payments-feature-launches-for-wordpress-com-and-jetpack-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3978:\"<p>WordPress.com <a href=\"https://en.blog.wordpress.com/2019/11/12/recurring-payments/\">launched a new recurring payments feature</a> its users today.  The payments system will allow bloggers to earn money for their content directly from any page on their site.  The feature is also available for self-hosted WordPress users who have the Jetpack plugin installed.</p>\n\n\n\n<p>The recurring payments system works alongside <a href=\"https://stripe.com\">Stripe</a>, so users must have a connected account to receive payments.  Stripe currently serves over 30 countries around the world.  WordPress.com&rsquo;s documentation maintains an up-to-date <a href=\"https://en.support.wordpress.com/recurring-payments-button/#stripe-supported-countries\">list of countries</a> currently allowed to use the payment gateway.</p>\n\n\n\n<p>The new feature doesn&rsquo;t come for free.  Recurring payments access is only available to users on a premium WordPress.com plan.  Plus, on top of the 2.9% + $0.30 for each payment that Stripe collects, WordPress.com has a <a href=\"https://en.support.wordpress.com/recurring-payments-button/#related-fees\">tiered fee table</a> based on the user&rsquo;s plan.</p>\n\n\n\n<ul><li>WordPress.com eCommerce &ndash; No fee</li><li>WordPress.com Business &ndash; 2% per sale</li><li>WordPress.com Premium &ndash; 4% per sale</li><li>WordPress.com Personal &ndash; 8% per sale</li></ul>\n\n\n\n<p>At the lowest tier, users will see nearly 11% of sales go toward WordPress.com and Stripe fees.  If accepting large volumes of payments, it will make sense for most users to upgrade to a higher plan to offset the fees.  The tiers seem reasonably priced because the infrastructure is completely handled by WordPress.com.  </p>\n\n\n\n<p>Self-hosted users can bypass the WordPress.com fees with a multitude of existing payment plugins.  They will have to decide whether the tools and support provided by WordPress.com is enough of a value-add to go for their service.</p>\n\n\n\n<p>The Jetpack team first <a href=\"https://wptavern.com/jetpack-opens-signup-for-membership-block-beta\">opened a limited beta test</a> for this new feature on May 18, 2019.  At the time, the feature was referred to as a &ldquo;membership block.&rdquo;  The announcement post says that users can &ldquo;offer ongoing subscriptions, site memberships, monthly donations, and more.&rdquo;</p>\n\n\n\n<p>However, members-based content seems to be limited in comparison to other fully-featured membership plugins and would require extra manual work to limit access to a site&rsquo;s premium content.  The WordPress.com recommendation is to <a href=\"https://en.support.wordpress.com/recurring-payments-button/#limit-access-to-content\">password-protect posts</a> and email out the password to subscribers or set up a newsletter.</p>\n\n\n\n<p>This is far from a true membership system, but it could be enough for the average blogger who wants to make a few dollars on the side.  The groundwork is there for a more powerful membership system in the future if the WordPress.com and Jetpack teams want to pursue it.  The market is still ripe for innovation in the membership space.</p>\n\n\n\n<h2>Recurring Payments Block</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Jetpack recurring payments editor block</div>\n\n\n\n<p>The new recurring payments feature requires at least Jetpack version 7.4.  The feature comes in the form of a block for the block editor (Gutenberg) and is located under the &ldquo;Jetpack&rdquo; tab when inserting a new block.</p>\n\n\n\n<p>The block has four fields that can be customized:</p>\n\n\n\n<ul><li>Currency</li><li>Price</li><li>Description</li><li>Renewal Interval &ndash; limited to monthly and yearly renewals</li></ul>\n\n\n\n<p>There is no limit on the number of different payment blocks users can add.  Users can create a new payment plan by adding a new block.  Previous options are backed up and will appear when inserting the block for users who need to output an existing plan on a new post or page.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Nov 2019 19:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"bbPress: bbPress 2.6 – Better Great Than Never\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://bbpress.org/?p=193159\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://bbpress.org/blog/2019/11/bbpress-2-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2501:\"<p>There&#8217;s no way for me to contain either my excitement or anxiety when I say that bbPress 2.6.0 is available now! <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f389.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n\n\n<p>This version of bbPress has been in development for just a bit under 6 years (yikes!) over which 420 tickets were resolved via 1737 individual code commits.</p>\n\n\n\n<p>There are so many improvements that a changelog hardly seems fitting for this post, but the major features include per-forum moderation, a bunch of new platforms to import from, and an extensible engagements API that now powers the relationships between users, forums, topics, replies, subscriptions, and favorites.</p>\n\n\n\n<p>At the time of this writing, bbPress is installed on approximately 336,000 WordPress installations, and is the most widely installed forum software in the world (according to BuiltWith.com and other sources.) Several of those are right here on bbPress.org, BuddyPress.org, and WordPress.org, the later of which includes a few dozen separate languages for non-English speaking communities of contributors all over the world.</p>\n\n\n\n<p>The elephant in the room&#8230; the reason that 2.6.0 took so long, is pretty simple. bbPress has a small contributor pool, and none of us are 100% dedicated towards it. The project gets very little community feedback, which makes it hard to know if everything is working perfectly, or nobody is testing it at all. </p>\n\n\n\n<p>So&#8230; 4 less-than part-time folks supporting over 300k sites, each with their own thousands of users, depending on us. </p>\n\n\n\n<p>The pressure is high, and the chamber is echo&#8217;y, and as my own career has progressed these past 13 years, the numbers above make me increasingly nervous.</p>\n\n\n\n<p>And the longer something takes to do is the higher the expectations are, and I personally locked up pretty hard multiple times on whether done was done enough to be trusted by so many having been tested by so few.</p>\n\n\n\n<p>But&#8230; good things come to those who wait, and I’m sincerely sorry to have kept any of you waiting for too long.</p>\n\n\n\n<p>bbPress 2.6.0 has been running smoothly on these forums since day 0. It’s stable, pretty, and a joy to use. We know you are gonna love it!</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f41d.png\" alt=\"?\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f49a.png\" alt=\"?\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Nov 2019 18:42:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"John James Jacoby\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: Beyond Prefixing: A WordPress Developer’s Guide to PHP Namespaces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95284\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/beyond-prefixing-a-wordpress-developers-guide-to-php-namespaces\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9768:\"<p><em>Prefix everything.</em></p>\n\n\n\n<p>It is an adage that is old as the WordPress software itself.  Prefixing has been a standard for WordPress developers for so long that it&rsquo;s hard to imagine doing anything different.  But, the time has come for something new.  Well, it is long past due, but WordPress lags a bit behind in standard practices in the larger PHP world.</p>\n\n\n\n<p>Prefixing is the practice of creating a code-friendly version of your project name and sticking it to the front of functions, classes, and other things in the global namespace.  For example, you would name a function <code>tavern_get_post()</code> instead of <code>get_post()</code> to avoid function name clashes, which would result in a fatal error.</p>\n\n\n\n<p>Prefixing is one form of &ldquo;namespacing,&rdquo; which is just a fancy way of saying that names in this space belong to a specific project.  However, prefixing (and suffixing, which is less common) is a hack from a time when no solution existed for the PHP language.</p>\n\n\n\n<p>PHP 5.3 introduced an official method of namespacing, so the standard has existed for years.  Because WordPress 5.2 <a href=\"https://wptavern.com/wordpress-ends-support-for-php-5-2-5-5-bumps-minimum-required-php-version-to-5-6\">bumped the minimum PHP requirement</a> to 5.6, it is time for developers to shed their old habits and catch up to the rest of the PHP world.</p>\n\n\n\n<h2>Namespace (Almost) Everything</h2>\n\n\n\n<p>PHP namespacing only covers the following items.</p>\n\n\n\n<ul><li>Classes</li><li>Interfaces</li><li>Traits</li><li>Functions</li><li>Constants declared with the <code>const</code> keyword but not <code>define()</code></li></ul>\n\n\n\n<p>When it comes to script handles, image size names, database options, and other items in the global namespace, you must still prefix them.  Those are IDs and outside the scope of PHP namespacing.</p>\n\n\n\n<h2>How to Create Namespaces</h2>\n\n\n\n<p>Namespaces are simple to declare.  At the top of any PHP file that you want to use a particular namespace, declare it as shown in the following code snippet.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern;\n</pre>\n\n\n<p>What this line of code does is declare that everything within this particular file has the namespace of <code>Tavern</code>.</p>\n\n\n\n<p>Take a look at a simple function under that namespace for outputting a <code>Hello, World!</code> message.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern;\n\nfunction hello() {\n    _e( \'Hello, World!\', \'example-textdomain\' );\n}\n</pre>\n\n\n<p>If following the old rules of prefixing, <code>hello()</code> would have been named <code>tavern_hello()</code>.  However, that&rsquo;s not the case with namespaces.  The <code>hello()</code> function is encapsulated within the <code>Tavern</code> namespace and will not conflict with other functions named <code>hello()</code>.</p>\n\n\n\n<p>Classes and interfaces work the same as functions.  With a class name of <code>Article</code>, the class file might look like the following.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern;\n\nclass Article {\n    // ...\n}\n</pre>\n\n\n<p><strong>Note:</strong> There should only ever be one class or interface per file. This is particularly important if you ever plan to use an autoloader.</p>\n\n\n\n<h2>How to <em>Name</em> Namespaces</h2>\n\n\n\n<p>Developers like to argue over how to name things, and there is no one-size-fits-all solution.  The most important rule is to be unique to avoid clashes with code from other projects.  One of the best ways to do that is to use a top-level <code>Vendor</code> namespace with a <code>Package</code> sub-namespace.</p>\n\n\n\n<p>Suppose the vendor namespace was <code>Tavern</code> and the project in question was a WordPress theme named <code>News</code>.  The namespace for the project might look like the following.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern\\News;\n</pre>\n\n\n<p>That may be a bit verbose for some developers.  If your project&rsquo;s name is already fairly unique, such as &ldquo;Awesomesauce,&rdquo; you may simply want to use the following.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Awesomesauce;\n</pre>\n\n\n<p>You will want to come up with some sort of standard convention, at the very least, for yourself.  Eventually, you&rsquo;ll want to get into things like auto-loading, so having a system you follow in all your projects will help.  Feel free to peruse the PHP-FIG <a href=\"https://www.php-fig.org/psr/psr-4/\">Autoloader standard</a>.</p>\n\n\n\n<h2>Importing Classes and Functions into a Different Namespace</h2>\n\n\n\n<p>When you need to use a class or function from a different namespace than the current namespace, you need to import it.  This is done via the <code>use</code> keyword in PHP.</p>\n\n\n\n<p>The <code>use</code> statement must come after the <code>namespace</code> declaration. It should also reference the fully-qualified class name.  The following code imports the <code>Tavern\\Helpers\\Post</code> class into a file with a different namespace.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern\\Template;\n\nuse Tavern\\Helpers\\Post;\n</pre>\n\n\n<p>Once it is imported, you are safe to use the <code>Post</code> class directly as shown in the next snippet.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n$post = new Post();\n</pre>\n\n\n<p>As of PHP 5.6, you can also import functions and constants from other namespaces using the <code>use function</code> and <code>use const</code> keywords, respectively.  The following code block demonstrates how to import both a function and a constant.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern\\Template;\n\nuse function Tavern\\Helpers\\func_name;\nuse const    Tavern\\Helpers\\CONSTANT_NAME;\n</pre>\n\n\n<h2>Aliasing Classes and Functions</h2>\n\n\n\n<p>Eventually, you will run into a situation where you need to import a class or function that has the same name as a class or function within the current namespace.  You might be thinking that this is the problem that namespaces were meant to solve.  Fortunately, PHP provides a method of creating an alias on import.</p>\n\n\n\n<p>Suppose you have a class named <code>Tavern\\User</code> and need to implement the <code>Tavern\\Contracts\\User</code> interface.  When importing the interface, you will need to create an alias as shown below.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n&lt;?php\n\nnamespace Tavern;\n\nuse Tavern\\Contracts\\User as UserContract;\n\nclass User implements UserContract {\n    // ...\n}\n</pre>\n\n\n<p>The <code>as UserContract</code> appended to the end of the <code>use</code> statement creates an alias for the <code>User</code> interface.  You can safely use the new <code>UserContract</code> name without error.</p>\n\n\n\n<p>Classes, interfaces, functions, and constants all follow the same method for creating an alias.</p>\n\n\n\n<h2>Organizing Folder Structure Based on Namespaces</h2>\n\n\n\n<p>It is standard practice in the wider PHP world for namespaces and the project&rsquo;s file and folder structure to match.  Doing this makes it easy for other developers to easily locate code within your project.  It also makes it simple to build autoloaders for loading classes on demand.</p>\n\n\n\n<p>Generally, all PHP code should go into a <code>/src</code>, <code>/inc</code>, or similarly-named folder in your project.  An example plugin file and folder structure might look like the following.</p>\n\n\n<pre class=\"brush: plain; gutter: false; title: ; wrap-lines: false; notranslate\">\n/plugin-name\n    /src\n        /Core\n            /Activate.php\n            /Setup.php\n        /View\n            /Post.php\n            /Page.php\n</pre>\n\n\n<p>If following the same structure with namespaces, the above <code>.php</code> files would contain the following classes.</p>\n\n\n\n<ul><li><code>Tavern\\Core\\Activate</code></li><li><code>Tavern\\Core\\Setup</code></li><li><code>Tavern\\View\\Post</code></li><li><code>Tavern\\View\\Page</code></li></ul>\n\n\n\n<p>Take note that file and folder names are case-sensitive and should match the namespace and class name exactly.</p>\n\n\n\n<p>Of course, you are free to follow any convention that you wish.  However, the preceding recommendation is good practice and will simplify how you organize your projects in the long term.</p>\n\n\n\n<h2>Benefits of Using Namespaces</h2>\n\n\n\n<p>The most obvious benefit is to avoid clashes between classes and functions with the same name.  You should use real namespaces for the same reason you used prefixes.</p>\n\n\n\n<p>Namespaces help to avoid long class names.  Typing long names throughout a large project is a tedious practice at best.</p>\n\n\n\n<p>More easily switch implementations by importing.  Once you get the hang of importing classes and interfaces from other namespaces, you can switch an implementation of an interface with a single line of code.</p>\n\n\n\n<p>Autoloading classes is far easier if you follow the <a href=\"https://www.php-fig.org/psr/psr-4/\">PSR-4: Autoloader</a> standard, which requires at least a top-level namespace.</p>\n\n\n\n<p>For developers in the professional space, you will gain a marketable skill beyond the WordPress ecosystem.  You will be hard-pressed to find PHP development work if you don&rsquo;t know how to use namespaces.  It is not a tough concept to grasp, but there can be a learning curve for some in practice.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Nov 2019 18:43:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Matt: Farnam Street’s Great Mental Models, Presented by Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50433\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://ma.tt/2019/11/farnam-streets-great-mental-models-presented-by-automattic/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1075:\"<p>I&#8217;ve been a fan of Shane Parrish and his indispensable <a href=\"https://fs.blog/\">Farnam Street</a> for many years now. Shane is a <a href=\"https://www.nytimes.com/2018/11/11/business/intelligence-expert-wall-street.html\">fascinating person</a> — he&#8217;s a former cybersecurity expert for the Canadian intelligence agency and occasional blogger who turned his website into a full-time career. Oh and <a href=\"http://fs.blog\">fs.blog</a> is on WordPress, too. <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f60e.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n\n\n<p>His book, <a href=\"https://fs.blog/tgmm/\"><em>The Great Mental Models: General Thinking Concepts</em></a>, has been tremendously valuable to me in my work. So valuable, in fact, that Automattic is now sponsoring the next printing of the hardcover edition. <a href=\"https://www.amazon.com/Great-Mental-Models-Thinking-Concepts/dp/1999449002/\">You can pre-order it here</a>, then learn more about <a href=\"https://fs.blog/general-thinking-concepts/\">the mental models outlined in it</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Nov 2019 15:59:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"BuddyPress: The road to BuddyPress blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=308912\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://buddypress.org/2019/11/the-road-to-buddypress-blocks/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5679:\"<p>Hi everyone!</p>\n\n\n\n<p>First, we&#8217;d like to thank all the people who contributed to the poll we shared on our <a href=\"https://bpdevel.wordpress.com/2019/10/10/take-the-buddypress-blocks-poll/\">development updates blog</a> and into <a href=\"https://buddypress.org/support/topic/take-the-buddypress-blocks-poll/\">a topic of one of our forums</a> a month ago. It was really important for us to have your expectations about the content the plugin should provide to the WordPress Block Editor.</p>\n\n\n\n<p>It&#8217;s now time for us to share with you the <a href=\"https://poll.fm/10425422/results\">results of this poll</a> and tell you how we plan to work on BuddyPress blocks for the next release(s) of your favorite community engine!</p>\n\n\n\n<span id=\"more-308912\"></span>\n\n\n\n<h2>The results of the Blocks Poll</h2>\n\n\n\n<p>It received a total of 161 votes divided as follows:</p>\n\n\n\n<ul><li>A block to share a post or a page via the Activity Stream : <strong>17 votes</strong>.</li><li>A block to list the recently published posts from across your network (Exists as a widget) : <strong>13 votes</strong>.</li><li>A block to display Sitewide Notices posted by the site administrator (Exists as a widget) : <strong>12 votes</strong>.</li><li>A block to dynamicaly list the recently active, popular, newest, or alphabetical groups (Exists as a widget) : <strong>11 votes</strong>.</li><li>A block to display Profile photos of online users (Exists as a widget) : <strong>10 votes</strong>.</li><li><em>A block to highlight a single Group</em> : <strong>10 votes</strong>.</li><li><em>A block to highlight a single Member</em> : <strong>10 votes</strong>.</li><li>A block to dynamicaly list the recently active, popular, and newest Friends of a given member (Exists as a widget) : <strong>9 votes</strong>.</li><li>A block to display the Profile photos of recently active members (Exists as a widget) : <strong>9 votes</strong>.</li><li>A block to restrict content to a Group type : <strong>9 votes</strong>.</li><li>A block to dynamicaly list the recently active, popular, and newest members (Exists as a widget) : <strong>8 votes</strong>.</li><li>A block to restrict content to a Member type : <strong>8 votes</strong>.</li><li>A block to restrict content to Group members : <strong>7 votes</strong>.</li><li>A block to list the Member types : <strong>7 votes</strong>.</li><li>A block to display a selected Activity as a quote : <strong>6 votes</strong>.</li><li>A block to list the Group types : <strong>5 votes</strong>.</li><li>A placeholder block for directory pages to eventually make them benefit from wide alignments : <strong>5 votes</strong>.</li><li>No blocks! : <strong>3 votes</strong>.</li><li>Other : <strong>2 votes</strong>.</li></ul>\n\n\n\n<p>As you can see, top results are mostly corresponding to existing widgets except for:</p>\n\n\n\n<ul><li>A block to share a post or a page via the Activity Stream.</li><li><em>A block to highlight a single Group or a single Member</em>.</li></ul>\n\n\n\n<p>We also analyze from these results that there is no blocks expected to be a must have and it&#8217;s interesting to see that the 2 first blocks are about highlighting WordPress content. Finally only one suggestion was made : A &#8220;Block for Activity Stream component&#8221; (<em>PS: in Nouveau there&#8217;s an existing widget for it</em>).</p>\n\n\n\n<h2>About the BuddyPress development team&#8217;s decision regarding BuddyPress blocks.</h2>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://buddypress.org/wp-content/uploads/1/2019/11/starting-point-1024x520.png\" alt=\"\" class=\"wp-image-308935\" />Screen capture of the BuddyPress Blocks category when the <a href=\"https://github.com/buddypress/bp-blocks\">BP Blocks</a> plugin is active.</div>\n\n\n\n<p>We think working on blocks to highlight a single Group or a single Member is a good starting point. Moreover it&#8217;s something we don&#8217;t make possible yet. We also think converting existing widgets to blocks is an obvious move to do.</p>\n\n\n\n<p>We&#8217;ve decided to work on these blocks from a specific <a href=\"https://github.com/buddypress/bp-blocks\">GitHub repository</a> and to merge into the Core of the BuddyPress plugin the &#8220;JavaScript built&#8221; blocks as soon as they are ready. To the very least, we&#8217;ll have the 2 blocks to highlight a Group or a Member of your community site merged into BuddyPress for its next major release (<strong>6.0.0</strong>).</p>\n\n\n\n<p>We&#8217;ve just pushed the <a href=\"https://github.com/buddypress/bp-blocks/commit/227a15814cfbf239fb382ee5b11d29240a6ae54f\">minimal code</a> to start working on BuddyPress blocks into the BP Blocks&#8217; GitHub repository. We&#8217;ll soon add contributing notes into this repository so that you can help us building beautiful BuddyPress blocks. You can already share with us your &#8220;Pull Requests&#8221; forking the repository.</p>\n\n\n\n<p>If you can&#8217;t wait for the contributing notes to start working on BuddyPress Blocks, here&#8217;s a quick &#8220;how-to&#8221; :</p>\n\n\n\n<ul><li>Once you cloned your fork into your development environment, do <code>npm install</code></li><li>The JavaScript (ESNext) code for your block needs to land into the <code>/src/bp-{ID of the BP Component}/js/blocks/</code> directory.</li><li>Have a look at the way the <code>bp/member</code> block is registered <a href=\"https://github.com/buddypress/bp-blocks/blob/master/build/bp-members/bp-members-blocks.php#L19-L29\">here</a> to build your registration code.</li><li>run <code>npm start</code> to see how your JavaScript code behaves at each edit.</li></ul>\n\n\n\n<p>Let&#8217;s build awesome BuddyPress blocks, together &lt;3.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 10 Nov 2019 18:30:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WordPress.org blog: People of WordPress: Kim Parsell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7662\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/11/people-of-wordpress-kim-parsell/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6063:\"<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>\n\n\n\n<h2><strong>Meet Kim Parsell</strong></h2>\n\n\n\n<p>We’d like to introduce you to Kim Parsell. Kim was an active and well-loved member of the WordPress community. Unfortunately, she passed away in 2015. Lovingly referred to as #wpmom, she leaves behind a legacy of service.&nbsp;</p>\n\n\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2019/11/Kim-Parsell-1.jpg?fit=632%2C252&ssl=1\" alt=\"\" class=\"wp-image-7664\" />Kim Parsell\n\n\n\n<h2><strong>How Kim became #wpmom</strong></h2>\n\n\n\n<p>In order to understand how highly valued the WordPress community was to Kim Parsell, you have to know a bit about her environment.</p>\n\n\n\n<p>Kim was a middle-aged woman who lived off a dirt road, on top of a hill, in Southern rural Ohio. She was often by herself, taking care of the property with only a few neighbors up and down the road.</p>\n\n\n\n<p>She received internet access from towers that broadcast wireless signals, similar to cell phones but at lower speeds.</p>\n\n\n\n<h2><strong>Connecting through attending live podcast recordings</strong></h2>\n\n\n\n<p>By listening to the regular podcast, WordPress Weekly, Kim met members of the WordPress community and was able to talk to them on a weekly basis. The show and its after-hours sessions provided Kim a chance to mingle with the who’s who of WordPress at the time. It helped establish long-lasting relationships that would open up future opportunities for her.</p>\n\n\n\n<p>Since she lived in a location where few around her used or had even heard of WordPress, the community was an opportunity for her to be with like-minded people. Kim enjoyed interacting with the community, both online and at WordCamp events, and many community members became her second family, a responsibility she took very seriously.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>&#8220;Many members of the WordPress community became her second family, a responsibility she took very seriously.&#8221;</em></p><cite><em>Jeff Chandler</em></cite></blockquote>\n\n\n\n<h2><strong>One of the first women of WordPress</strong></h2>\n\n\n\n<p>Kim is regarded as one of the first “women of WordPress,” investing a lot of her time in women who wanted to break into tech. She worked hard to create a safe environment sharing herself and her knowledge and was affectionately called #wpmom.</p>\n\n\n\n<p>She contributed countless hours of volunteer time, receiving “props” for 5 major releases of WordPress, and was active on the documentation team.&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>&#8220;Affectionately called #wpmom, Kim was an investor. She invested countless hours into the WordPress project and in women who wanted to break into tech.&#8221;</em></p><cite><em>Carrie Dils</em></cite></blockquote>\n\n\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/KimParsell2.jpg?fit=632%2C468&ssl=1\" alt=\"\" class=\"wp-image-7663\" />Kim at WordCamp San Francisco\n\n\n\n<h2><strong>Kim Parsell Memorial Scholarship</strong></h2>\n\n\n\n<p>In 2014, she received a travel stipend offered by the WordPress Foundation that enabled her to attend the WordPress community summit, held in conjunction with WordCamp San Francisco. She shared with anyone who would listen, that this was a life-changing event for her.&nbsp;</p>\n\n\n\n<p>The WordPress Foundation now offers that scholarship in her memory. The Kim Parsell Memorial Scholarship provides funding annually for a woman who contributes to WordPress to attend WordCamp US, a flagship event for the WordPress community.</p>\n\n\n\n<p>This scholarship truly is a fitting memorial. Her contributions have been vital to the project. Moreover, the way she treated and encouraged the people around her has been an inspiration to many.&nbsp;&nbsp;</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p><em>Her spirit lives on in the people she knew and inspired. Here’s hoping that the Kim Parsell Memorial Scholarship will serve to further inspire those who follow in her footsteps.</em></p><cite><em>Drew Jaynes</em></cite></blockquote>\n\n\n\n<h2><strong>Kim is missed, but her spirit continues to live on</strong></h2>\n\n\n\n<p>Sadly Kim died just a few short months later. But her spirit lives on in the people she knew and inspired within her communities. The Kim Parsell Memorial Scholarship will serve to further inspire those who follow in her footsteps.</p>\n\n\n\n<h2><strong>Contributors</strong></h2>\n\n\n\n<p>Alison Rothwell (<a href=\"https://profiles.wordpress.org/wpfiddlybits/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>wpfiddlybits</a>), Yvette Sonneveld (<a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a>), Josepha Haden (<a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a>), Topher DeRosia (<a href=\"https://profiles.wordpress.org/topher1kenobe/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>topher1kenobe</a>), Jeff Chandler, Carrie Dils, Jayvee Arrellano, Jan Dembowski, Drew Jaynes</p>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=632%2C474&ssl=1\" alt=\"\" class=\"wp-image-7025\" />\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p> <em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em> </p>\n</div>\n</div>\n\n\n\n<p> <em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em> </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Nov 2019 23:58:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"Post Status: A Teenage Woman’s Perspective On The State of The Word\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=70959\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://poststatus.com/a-teenage-womans-perspective-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6914:\"<p>Hello everyone! This year I got the chance to go to the <a href=\"https://poststatus.com/matt-mullenweg-state-of-the-word-2019/\">State of the Word</a>, which is a talk given by Matt Mullenweg each year at WordCamp US (WCUS). Here are my thoughts and views on this year’s State of the Word.</p>\n\n\n\n<p>Before he even got started with the State of the Word, Matt premiered a new documentary that focuses on the fact that WordPress is both open source and also a big community. The documentary takes you to WordCamp Phoenix, WordCamp US (2018), and others. It also gives you first-hand exposure to what the community is really like.</p>\n\n\n\n<p>Another thing that the film emphasizes, is the fact that everyone wants everyone in the community to succeed, and this might be one of the unique features of the WordPress community — how members are supportive of each other.</p>\n\n\n\n<h3>Let’s Get Started!</h3>\n\n\n\n<p>Matt discussed several milestones and release notes for WordPress.</p>\n\n\n\n<h4>Two different releases within a year:</h4>\n\n\n\n<ul><li>WordPress 5.1: Developer Experience Improvements&nbsp;</li><li>WordPress 5.2: New Widgets, which can be shown or hidden</li></ul>\n\n\n\n<h4>The future of releases:</h4>\n\n\n\n<div class=\"wp-block-columns has-2-columns\">\n<div class=\"wp-block-column\">\n<p><strong>WordPress 5.3</strong></p>\n\n\n\n<ul><li>November 12</li><li>Over 150 block editor improvements</li><li>Twenty Twenty theme</li><li>Admin Email Verification</li><li>Time/Date Component Fixes</li><li>PHP 7.4 Cap</li><li>MinPHP 5.6.20</li></ul>\n\n\n\n<p><strong>Mobile</strong></p>\n\n\n\n<ul><li>Got Gutenberg on mobile&nbsp;</li><li><strong>Almost</strong> done with offline mode</li><li>DARK MODE 8</li></ul>\n\n\n\n<p><strong>Social</strong></p>\n\n\n\n<ul><li>141 WordCamps&nbsp;</li><li>About 15 KidsCamp</li><li>HeroPress</li><li>There is going to be a new scholarship to bring more people to WCUS</li></ul>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<img src=\"https://cdn.poststatus.com/wp-content/uploads/2019/11/blocks.png\" alt=\"\" class=\"wp-image-71109\" />\n</div>\n</div>\n\n\n\n<h3>Let’s Time Travel…</h3>\n\n\n\n<div class=\"wp-block-columns has-3-columns\">\n<div class=\"wp-block-column\">\n<p><strong>A Year Ago</strong></p>\n\n\n\n<ul><li>People did not like Gutenberg</li></ul>\n\n\n\n<img src=\"https://cdn.poststatus.com/wp-content/uploads/2019/11/GUT.png\" alt=\"\" class=\"wp-image-71110\" />\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p><strong>Today</strong></p>\n\n\n\n<ul><li>They have added motion</li><li>Typewritter mode</li><li>Block previews</li></ul>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p><strong>Future</strong></p>\n\n\n\n<ul><li>SOCIAL ICONS!!! (This is going to be a Gutenberg block)</li><li>The Navigation block/editor</li><li>GRADIENTS (I’m excited!)</li><li><span>Multi-Button Block</span></li><li>Block Directory&nbsp;</li><li>Block patterns&nbsp;</li></ul>\n</div>\n</div>\n\n\n\n<h3>Community</h3>\n\n\n\n<ul><li>There are so many different sites just using the block editor.</li><li>You are able to use Microsoft Word with the new editor using the Copy and Paste method.</li></ul>\n\n\n\n<h3>Beyond</h3>\n\n\n\n<p>Gutenberg is about 20% done. There are going to be 4 phases of Gutenberg:</p>\n\n\n\n<ul><li>Easier Editing</li><li>Customization</li><li>Collaboration</li><li>Multilingual</li></ul>\n\n\n\n<h3>Our Path Forward…</h3>\n\n\n\n<div class=\"wp-block-columns has-2-columns\">\n<div class=\"wp-block-column\">\n<ul><li>Help be the change&nbsp;\n<ul>\n<li>Go to Contributor Day</li>\n<li>Design Experiments by the WordPress team.</li>\n</ul>\n</li><li>More Blocks!\n<ul>\n<li>Learn JavaScript Deeply.&nbsp;</li>\n</ul>\n</li><li>Help <strong>Teach the change</strong></li><li>There are meetups everywhere</li><li>Help open the web.&nbsp;</li><li>Five for the future\n<ul>\n<li><a href=\"http://wordpress.org/5\">wordpress.org/5</a> or <a href=\"http://wordpress.org/five\">wordpress.org/five</a></li>\n</ul>\n</li></ul>\n\n\n\n<p></p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<img src=\"https://cdn.poststatus.com/wp-content/uploads/2019/11/path.png\" alt=\"\n\" class=\"wp-image-71111\" />\n</div>\n</div>\n\n\n\n<h3>My Thoughts</h3>\n\n\n\n<h4>As a young person…</h4>\n\n\n\n<p>As I was listening to the talk, I did find some golden gems that I thought my generation might be able to take advantage of and use to the benefit of both our generation and also the WordPress community.</p>\n\n\n\n<p>One of those things is the new documentary that shows how open the WordPress Community really is.</p>\n\n\n\n<p>Another thing, and yes, I am serious about this, is the fact that they are adding gradients to the WordPress editor for the Gutenberg blocks. I think that addition is going to bring out the artistic side of those of us who do not know how to do gradients in code yet.</p>\n\n\n\n<h4>That time I asked Matt Mullenweg a question…</h4>\n\n\n\n<p>One of the major things that I did during my WordCamp US trip happened during the Q&A; Session which is right after the State of the Word. I decided to try to ask a question of my own.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>Me asking Matt Mullenweg a question\n\n\n\n<p>And to summarize, I asked what was Matt’s plan for the inclusion of the next generation of WordPress users. His response to that is the fact that <a href=\"https://poststatus.com/automattic-has-purchased-tumblr/\">Automattic bought Tumblr</a> and is going to turn the back end of their site into a Gutenberg-centric WordPress interface.</p>\n\n\n\n<p>I do not think that this is a bad thing. In fact, I think that this is a good thing because of the fact that Tumblr is something that is attracting the younger generation of users.</p>\n\n\n\n<p>I think Tumblr’s addition is going to be targeted towards some of the same people who are already using WordPress, and I was just hoping for a start to something that is able to capture a new group of people who are not using Tumblr to blog.</p>\n\n\n\n<p>And now I know what you are thinking, <em>Doesn’t KidsCamp already attract the younger generation</em>? I LOVE KidsCamp and everyone and everything to do with KidsCamp. But here is the thing, KidsCamp is something that happens in less than half of the WordCamps inside of the United States, and getting there might be difficult for some parents, especially if they are going to bring their kids with them.</p>\n\n\n\n<h3>In conclusion</h3>\n\n\n\n<p>The organization of the whole event played out nicely. The media (or the people who tweet the most) got to sit in the front rows for the convenience of taking photos and notes.</p>\n\n\n\n<p>There was no line for any of it, therefore we got the chance to fully enjoy the afternoon break that came right before the State of the Word.</p>\n\n\n\n<p>I’m glad I got to ask my question to Matt. I think that there are some different ways that different people from the WordPress community are able to step in and help, beyond Tumblr, and beyond KidsCamp.</p>\n\n\n\n<p>But that is going to come inside of a different blog post later in the future.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Nov 2019 23:00:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Olivia Bisset\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Themes of the Future: A Design Framework and a Master Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95267\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://wptavern.com/themes-of-the-future-a-design-framework-and-a-master-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8863:\"<p>WordPress theming has a rich history.  Over the years, theme authors have brought a plethora of features to the platform.  In part, it is because they have often had to solve foundational issues with WordPress to create the features that end users want.</p>\n\n\n\n<p>The post and body classes all theme authors use today?  Those were originally in a theme called Sandbox.  </p>\n\n\n\n<p>Featured images?  Those were popularized by <em>magazine</em> themes a decade ago.  </p>\n\n\n\n<p>You think post formats originated with Tumblr?  Matt Mullenweg, co-creator of WordPress, taught us how to <a href=\"https://ma.tt/2004/05/asides/\">create aside posts</a> in our themes in 2004, but they existed before that.</p>\n\n\n\n<p>WordPress features often get their start in the theme world.  We sometimes take for granted the years of experimentation and iteration on ideas where theme authors are putting in the work.  Even the block editor is handling items that have traditionally been within the realm of theme design.  The cover block is a good example.  For years, theme authors built theme options for a basic hero image with text and buttons overlain.  The result was often clunky and not ideal for users.  By bringing this feature into core, it provided users the ability to put this cover block in any permitted block area.</p>\n\n\n\n<p>The reason many theme features make it to core is that they simply work better when they are standardized.  Users know what to expect, and theme authors can focus on the design aspect rather than solving the user experience problem.</p>\n\n\n\n<p>Part of the problem of the past is that each new feature adopted into core did not follow any standard design pattern or naming scheme.  A huge skill in designing WordPress themes is committing the mish-mash of hundreds of classes to memory.</p>\n\n\n\n<p>The block editor is in a unique position to change that by creating a universal design framework.</p>\n\n\n\n<h2>Does WordPress Need a Front-End Design Framework?</h2>\n\n\n\n<p>With block patterns coming in the future and full-site customization at some point after that, theme authors are wondering just exactly where this ship is sailing.  It is exciting because the possibilities are boundless for end users.  It is frightening for theme authors who have built their empires upon one way of doing things, but development is more about adaptation than anything else.</p>\n\n\n\n<p>Armed with the foreknowledge that the landscape is changing, this is the moment theme authors need to band together to shape their futures in a block-based world.</p>\n\n\n\n<p>There is a bit of a running joke in one of the developer groups I am involved in that core developers are not theme authors.  From the theme author perspective, it can sometimes seem like ideas are haphazardly thrown together with no thought toward CSS design systems.</p>\n\n\n\n<p><em>Oh, I see some BEM.  Why does this sub-element not follow the same naming scheme?  Wait. Is that a 38-character utility class?</em></p>\n\n\n\n<p>What WordPress has always lacked is a universal front-end design system.  At times, that has been a good thing.  It has allowed theme authors to use their preferred framework.  Any theme author who has been in the game long enough will tell you, that sort of flexibility is great&hellip;<em>until it is not</em>.  Have you ever tried adding contextual classes to widgets?  What about adding a utility class to the comment form wrapper?  You will need an Aspirin.  Or two.</p>\n\n\n\n<p>With WordPress, some things are set in stone and others are pluggable.  Some features follow a standard class-naming scheme and others make no sense.  The result for themes is often bloated CSS in an attempt to wrangle the various components.</p>\n\n\n\n<p>It is next to impossible to fully use a utility-class framework like <a href=\"https://tailwindcss.com\">Tailwind CSS</a> in a theme without recreating core features.  </p>\n\n\n\n<p>Much of this stems from years of legacy code piling up and WordPress&rsquo; commitment to backward compatibility.  But, the future does not have to resemble the past.  We are at the threshold of a new era, and now is the time for front end designers to jump into the conversation.</p>\n\n\n\n<p>WordPress needs a solid front-end design framework.</p>\n\n\n\n<p>That is a loaded statement.  If you put 20 designers in a room and ask them to discuss design frameworks, it could be a recipe for fisticuffs.  I tend to be an optimist and hope the debate provided results.</p>\n\n\n\n<p>Gutenberg has pushed us partially in this direction, but it does not quite go far enough.  With full-site editing in the future, there is a need for a more holistic approach in tackling this problem.</p>\n\n\n\n<p>More than anything, we need more front end designers in the conversation.  There is no way <code>.has-subtle-pale-green-background-color</code> should exist as a utility class over something like <code>.bg-pale-green</code>, <code>.bg-green-100</code>, or even <code>.background-pale-green</code>, if you want to be more verbose.  There was no concept of optimization that went into that decision.  In a time where developers are running on gigabyte internet connections, it is easy to forget that much of the world is following along at a slower pace.</p>\n\n\n\n<p>A component-based naming scheme with a healthy dose of utility classes is one option that could hit several sweet spots.  This is not an argument for one CSS framework over another.  There are many good, existing options.  WordPress should tackle this head on by borrowing from the groundwork laid down by other projects and creating something uniquely WordPress.  It should be a leader in the field.</p>\n\n\n\n<p>Design frameworks are also about plugins.  There is some crossover into the realm of themes where the two have been waging an ongoing war since the dawn of the theme system.  The battlefield between themes and plugins is littered with the deaths of good ideas.  Far too many never garnered the support they needed to land in core.  Some sort of universal design standard could stanch the flood of issues and call for a cease-fire.</p>\n\n\n\n<p>A plugin that outputs a custom front-end component has no way of knowing how the current theme handles vertical rhythm, for example. <em>Does it use top or bottom margin? What is the value and unit used?</em>  This is foundational stuff, and it is almost always broken when the plugin attempts to add custom CSS to handle it.</p>\n\n\n\n<p>WordPress needs a design framework, or language, that allows all of its moving parts to come together in harmony on the front end.  I am sure we will get there at some point.  I hope that it is more cohesive than the random components and naming schemes of the past.  We should also have a clear roadmap that fills in some of the technical details so developers and designers might be prepared.</p>\n\n\n\n<h2>Is a One-Theme Future Possible?</h2>\n\n\n\n<p>Rich Tabor makes the argument that core WordPress could provide a single parent theme in his article <a href=\"https://richtabor.com/the-future-of-wordpress-themes/\">A Look at WordPress Themes of the Future</a>.  The idea is that theme authors would be relegated to creating a child theme for this &ldquo;master&rdquo; theme.</p>\n\n\n\n<p>The gut reaction for many would be that it would not work, themes would lose their personality and we would live in a world of cookie-cutter designs.  </p>\n\n\n\n<p>The reality is that we are barreling toward a future where the idea of a single parent or master theme is a serious consideration.  </p>\n\n\n\n<p>Most themes are custom groupings of standard elements that exist in nearly all themes.  There are some decisions, aside from stylistic concerns, that make themes different from one another, such as the layout of the header.  One theme might have a site title and nav menu in one block.  Another might have a nav menu, title, and a second nav menu below.  Yet, another theme might show a search box.  In a world where full-site customization belongs to the user, those decisions become a part of the user experience rather than the developer experience.</p>\n\n\n\n<p>Themes will need to stand out with color palettes, typography, and their own brand of quirkiness &mdash; a return of the days of <a href=\"http://csszengarden.com/\">CSS Zen Garden</a> but on a much larger scale.</p>\n\n\n\n<p>I won&rsquo;t be sad about that.  It would be interesting to see the competition between the top designers in the field.  It may also bring WordPress theming back to an era when anyone could do it with a little CSS knowledge and determination.</p>\n\n\n\n<p>While we are not quite ready for a future in which one theme rules theme all, it is a place to start the conversation.  If we designed WordPress for this potential future, even if we never implement a master theme, what would the roadmap look like?  What obstacles stand in the way?  Is it feasible?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Nov 2019 21:13:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:114:\"WPTavern: Oklahoma Watch Becomes First U.S. Publication on Newspack; 34 Pilot Newsrooms Announced for Second Round\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95252\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wptavern.com/oklahoma-watch-becomes-first-u-s-publication-on-newspack-34-pilot-newsrooms-announced-for-second-round\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7869:\"<div class=\"wp-block-image\"><img />Homepage of the Oklahoma Watch website on Newspack.</div>\n\n\n\n<p><a href=\"https://oklahomawatch.org/\">Oklahoma Watch</a> is the first U.S. publication to relaunch and the second publication to go live on Newspack, a platform created this year to bring WordPress to newsrooms.  Newspack <a href=\"https://newspack.blog/2019/11/07/newspack-announces-second-set-of-pilot-newsrooms-first-u-s-site-relaunches-on-new-platform/\">announced the relaunch</a> today.  The announcement includes the list of 34 new publications that will work with the Newspack team during its second phase.</p>\n\n\n\n<p>Newspack is a project of Automattic, the parent company of WordPress.com. Its mission is to create a platform for more newsrooms to make the move to WordPress.  The team has been working alongside industry leaders and small publications during the pilot program this year to tackle issues with running online newsrooms.</p>\n\n\n\n<p>Chilean news site El Soberano was the first newsroom to go live on the new system, <a href=\"https://wptavern.com/chilean-news-publication-el-soberano-first-to-launch-on-newspack\">relaunching their site</a> on October 16.  Oklahoma Watch follows them as only the second publication to take the next step.  The remaining participants in the pilot program are expected to launch in the coming weeks.</p>\n\n\n\n<p>Oklahoma Watch is a non-partisan publication that does not publish opinion pieces.  It is a nonprofit news organization that covers stories on public-policy issues within the state of Oklahoma.  &ldquo;Those include education, criminal justice, public and mental health, state government, poverty, and human-needs issues that disproportionately affect women, children, and the disadvantaged,&rdquo; said executive editor David Fritze.  &ldquo;Our staples are in-depth stories, searchable data, interactives, public forums, live-tweeting and other social media, and, increasingly, video.&rdquo;</p>\n\n\n\n<p>The publication distributes its stories for free republication to around 100 newspapers and radio and TV news outlets throughout the state.</p>\n\n\n\n<h2>Oklahoma Watch&rsquo;s Move to Newspack</h2>\n\n\n\n<p>In 2013, the Oklahoma Watch site moved to <a href=\"https://largo.inn.org/\">Largo</a>, a WordPress theme framework for news publishers.  It is developed and maintained by the Institute for Nonprofit News.</p>\n\n\n\n<p>&ldquo;Our website was clean and bright, but was rather monotonous, with a long stack of same-sized headlines, excerpts and a right sidebar with typical fixtures, such as a newsletter sign-up ask and our Twitter feed,&rdquo; said Fritze.  After bringing on a visual journalist to bring the site up to date with media, they still felt tools were limited and needed a site refresh.</p>\n\n\n\n<p>&ldquo;We went live with Newspack more than a week ago, and we&rsquo;re still gradually digging around &mdash; spelunking in a way &mdash; to learn how to make the most of it,&rdquo; said Fritze.  &ldquo;But I would say it already has and will make a world of difference.&rdquo;</p>\n\n\n\n<p>He sent the following update to the publication&rsquo;s email subscribers.</p>\n\n\n\n<blockquote class=\"wp-block-quote\"><p>[Newspack] gives smaller organizations more tools to deliver their content in engaging, creative ways. What you will notice: a faster mobile experience; a better showcasing of visuals, stories, and informational bits, and a more vibrant, flexible home page &ndash; with new features to come. The goal is to make oklahomawatch.org a richer experience for you and to enhance the investigative reporting that is central to our mission.</p></blockquote>\n\n\n\n<p>The team switched from the classic editor and has been learning the block editor (Gutenberg) along with the Newspack tools.  Fritze said the team is happy about:</p>\n\n\n\n<ul><li>Being able to serve donation and subscription forms anywhere.</li><li>Having the ability to more easily manage their homepage content, media, and headlines.</li><li>Making changes without spending valuable time that would be better spent investigating stories.</li></ul>\n\n\n\n<p>As part of the initial pilot program, Oklahoma Watch was in a unique position to help make this an easier process for future publications on the platform.  &ldquo;We were fortunate to be a pilot site and have the full let&rsquo;s-develop-this attention of the Newspack team &mdash; on Slack, in regular video conference calls, in emails, and by phone,&rdquo; said Fritze.</p>\n\n\n\n<p>&ldquo;Early on, it became clear that some of the news sites&rsquo; reps were more well-versed in web tech and other programs than we were, so it took me a while to get my bearings,&rdquo; said Fritze of the process. &ldquo;But I requested specific features and preservation of one or two of the tools we already have and prefer.&rdquo;  One such tool was the <a href=\"https://tablepress.org/\">TablePress plugin</a>.  The Oklahoma Watch team uses it to display interactive, tabular data from CSV files.</p>\n\n\n\n<p>Fritze said he had a few requests for other features that are still pending, such as a film-strip-like homepage carousel.  However, the Newspack team was clear from the outset that not all plugins or features would be adopted for the system.</p>\n\n\n\n<p>&ldquo;Perhaps that would give some clients pause, not being able to pull any fish you wanted out of the sea of WordPress plugins, based on some mention on the web,&rdquo; said Fritze.  &ldquo;On the other hand, the quality control is reassuring, especially for smaller organizations like ours that have little time to go kicking those tires.&rdquo;</p>\n\n\n\n<p>In any controlled system, it makes sense that not every feature request will be granted.  It would increase the quality control burden.  However, without more control over tools or features, it could be a non-starter for some publications.</p>\n\n\n\n<p>Fritze does have a big feature request for the long term.  &ldquo;If there is one thing that Newspack should make sure happens going forward, it&rsquo;s to promote easy interaction among Newspack sites, including the ability to communicate one on one and find peer sites that have similar needs and challenges,&rdquo; he said.</p>\n\n\n\n<h2>Second Round of Pilot Newsrooms Announced</h2>\n\n\n\n<p>Oklahoma Watch and the 11 other newsrooms currently in the program are being followed by a larger group of publications.  The 34 new sites will have the benefit of the past seven months of work the Newspack team and pilot newsrooms put into the initial launch.  Newsrooms in the second phase are expected to relaunch their sites on the platform by the end of February 2020.</p>\n\n\n\n<p>Publications such as the <a href=\"https://www.hongkongfp.com/\">Hong Kong Free Press</a>, <a href=\"https://mlk50.com\">MLK50: Justice Through Journalism</a>, and <a href=\"https://www.dailyyonder.com/\">The Daily Yonder</a> are a part of the second group.  Most are small or medium-sized publications that focus on local news.  The full list is <a href=\"https://newspack.blog/2019/11/07/newspack-announces-second-set-of-pilot-newsrooms-first-u-s-site-relaunches-on-new-platform/\">available via the announcement post</a> on the Newspack blog.</p>\n\n\n\n<p>Like the first group, the new newsrooms will work directly with the Newspack team to identify and address technical issues faced in online journalism.  They will continue helping to design and test the platform&rsquo;s features.</p>\n\n\n\n<p>All pilot newsrooms will continue using Newspack for free until March 2020.  After that point, the price will jump to $1,000 per month.  The price includes priority access to Newspack developers, some level of premium support, quarterly benchmarking reports, and community membership with other Newspack users.</p>\n\n\n\n<p>The Newspack team plans to consider additional applications in January 2020.  Nearly 500 applicants have applied for the program thus far.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Nov 2019 18:50:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: The Power of Stories: Chris Lema and the Bridge Framework\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95240\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wptavern.com/the-power-of-stories-chris-lema-and-the-bridge-framework\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5474:\"<p>I would tell you that when Chris Lema, VP of Products at Liquid Web, is speaking, you should listen.  But, there is no need to say that.  He has an infectious quality that grabs your attention and doesn&#8217;t let go.  I found myself hanging onto every word in his session, <a href=\"https://2019.us.wordcamp.org/session/the-content-framework-that-powers-stories-landing-pages-more/\">The Content Framework that Powers Stories, Landing Pages, &amp; More</a>, via the WordCamp U.S. livestream this past weekend.</p>\n\n\n\n<p>Telling stories is a uniquely human trait.  Our ability to weave narratives together is what separates us from lower animals.  Sure, other important things such as the ability to make fire, understand advanced mathematics, and build rocket-powered ships all set us apart.  But, it is the stories we tell that are the most interesting things about us as a species.</p>\n\n\n\n<p>Any good story leaves you waiting to see what will happen next and how the people within those stories react.  How they grow.  How they change.</p>\n\n\n\n<p>This fundamental human activity was at the heart of Lema&#8217;s 15-minute presentation.  &#8220;When people believe that you&#8217;ve been where they are and can see that you&#8217;ve gotten to the other side, they will follow,&#8221; said Lema of selling products.</p>\n\n\n\n<p>Ultimately, the bridge framework is about guiding others through your journey and helping them cross the bridge you have found.  This framework can apply to your brand, your products, or any other content that you are providing to others.</p>\n\n\n\n<p>One thing product makers often fail at is providing a solution before sharing how they have encountered the same problem.  &#8220;No one feels like they need a bridge until they are facing a river,&#8221; said Lema.  The struggle must come first.</p>\n\n\n\n<h2>What Comes After the Product</h2>\n\n\n\n<p>In 2007, I built one of the most popular themes ever in WordPress&#8217; short history.  It does not matter what theme it was.  It is long retired.  What mattered was it helped users get to their destination.</p>\n\n\n\n<p>One theme user who stood out was building a Formula 1 racing website.  I was a mediocre designer at best, but this user would create some of the most beautiful customizations that I had ever seen.  It seemed like he would change the design every week.  Each time, I was in awe at his talent.  He continued using this same theme of mine for years, even after I archived it and moved onto other theme projects.</p>\n\n\n\n<p>What I should have learned during those years was, without knowing, I had the story right.  I knew the technical aspects of why this specific theme was a leap forward.  However, I didn&#8217;t understand the story I was telling users was drawing people in.</p>\n\n\n\n<p>I had been where they were.  I had struggled to get to where I was going.  I had braved the journey beyond that point and found a path for others to join me.</p>\n\n\n\n<p>As time moved on, I became a better developer.  I had one more insanely popular theme.  Again, it was about the story.  I could recognize the problems.  I had the same frustrations as others.  I had a way to fix those problems and get people from Point A to Point B.  I invited others along.  I told them I would be there every step of the way.</p>\n\n\n\n<p>I never recreated that early success with another theme, at least not on the same scale.</p>\n\n\n\n<p>I stopped focusing on what mattered.</p>\n\n\n\n<p>I marketed future themes based far too much on the technical aspects.  Essentially, I was flaunting my development skills.  After years of lucking into success by being a storyteller, I tried to follow the trends of others who were marketing their HTML5, CSS3, or whatever other keyword was popular at the time.</p>\n\n\n\n<p>Fortunately, I had loyal users who stuck with me over the years.  There was one theme user who would often switch themes whenever I released a new one.  Like the racing enthusiast, this person would put his own spin on the design.  He used the themes on his photography site.  What was interesting about some of the themes was they were not specifically built with photography in mind.  That was never my goal when creating them.</p>\n\n\n\n<p><em>What was it that made this user continue using different themes of mine?</em></p>\n\n\n\n<p>It was never about all the bells and whistles.  Many of them were unused on the site.  It was about what came after activating the theme.  It wasn&#8217;t about me.  It was about the user being able to tell his own story through photos.</p>\n\n\n\n<p>In hindsight, I could see that the projects I achieved the most success with were the projects I was the most passionate about.  I had built them to solve specific problems.  The technical details did not matter.  I had built or found a bridge to get to the place that I wanted to be.  My excitement and passion naturally transferred to how I spoke about those projects.  It changed how I sold them to users.  I told my story.</p>\n\n\n\n<p>The biggest failures I had were when I did not have a good story to tell.</p>\n\n\n\n<h2>Watch Chris Lema&#8217;s Speech</h2>\n\n\n\n<p>For those that are running any type of business, you owe it to yourselves to listen to Lema explain how to connect with customers.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p><em>Lema&#8217;s session starts at the 2:59:46 mark if the videos doesn&#8217;t start at the correct point. The embedded video should begin at his introduction.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Nov 2019 17:53:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: State of the Word 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50414\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2019/11/state-of-the-word-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2061:\"<p>In case you missed it, here&#8217;s the first-ever State of the Word&#8230; designed completely in Gutenberg: </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p><a href=\"https://2019.us.wordcamp.org/\">WordCamp US</a> was a fantastic experience, as always. Thank you again to the hundreds of organizers and volunteers who made it happen, to the thousands who attended, and to the city of St. Louis for hosting us. We&#8217;ll be back there again next year.</p>\n\n\n\n<p>And special thanks to this next generation of WordPress contributors. So exciting to see <a href=\"https://2019.us.wordcamp.org/kidscamp/\">KidsCamps</a> continue to expand and thrive:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Thank you <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> for stopping by KidsCamp today. The kids loved your visit! <a href=\"https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw\">#WordPress</a> <a href=\"https://twitter.com/hashtag/KidsCamp?src=hash&ref_src=twsrc%5Etfw\">#KidsCamp</a> <a href=\"https://twitter.com/hashtag/WCUS?src=hash&ref_src=twsrc%5Etfw\">#WCUS</a> <a href=\"https://t.co/cq65sHkjsI\">pic.twitter.com/cq65sHkjsI</a></p>&mdash; Sandy Edwards (@sunsanddesign) <a href=\"https://twitter.com/sunsanddesign/status/1191093861172559873?ref_src=twsrc%5Etfw\">November 3, 2019</a></blockquote>\n</div>\n\n\n\n<p>As you can see, my site is now featuring the new <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">WordPress Twenty Twenty theme</a>. And for more coverage from my State of the Word, check out the recaps from <a href=\"https://wptavern.com/state-of-the-word-2019-recap-all-roads-lead-to-the-block-editor\">WP Tavern</a> and <a href=\"https://poststatus.com/matt-mullenweg-state-of-the-word-2019/\">Post Status</a>. Here&#8217;s my full audience Q&amp;A below: </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>You can see my previous <a href=\"https://ma.tt/tag/sotw/\">State of the Word keynotes here</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Nov 2019 06:38:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"BuddyPress: Test BuddyPress 5.1.0-beta1 thanks to our new BP Beta Tester plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=308797\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://buddypress.org/2019/11/buddypress-5-1-0-beta1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2816:\"<p>Hi BuddyPress contributors!</p>\n\n\n\n<p>We will soon publish a maintenance release (<strong>5.1.0</strong>) to fix some issues that arose since BuddyPress 5.0.0 “Le Gusto”. A detailed changelog will be part of our official release notes, but, until then, you can check out this <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&group=resolution&milestone=5.1.0\">report on Trac</a> for the full list of fixes.</p>\n\n\n\n<p>Today we&#8217;re publishing a very specific<a href=\"https://downloads.wordpress.org/plugin/buddypress.5.1.0-beta1.zip\"> beta release</a> for version 5.1.0 as it has two goals:</p>\n\n\n\n<ul><li>Let you make sure the fixes have no side effects on your community site&#8217;s configuration.</li><li>Test in real conditions the plugin we&#8217;ve been working on and which should greatly simplify the way you betatest BuddyPress.</li></ul>\n\n\n\n<h2>Meet BP Beta Tester</h2>\n\n\n\n<img src=\"https://buddypress.org/wp-content/uploads/1/2019/11/bp-beta-tester-github-featured-image-1024x512.jpeg\" alt=\"\" class=\"wp-image-308803\" />\n\n\n\n<p>Once installed it will help you to upgrade your website to the latest Beta or Release candidate. You will also be able to downgrade to the latest stable release once you finished your Beta tests.</p>\n\n\n\n<img src=\"https://buddypress.org/wp-content/uploads/1/2019/11/bp-beta-tester-01.png\" alt=\"\" class=\"wp-image-308800\" />\n\n\n\n<p>Once activated, go to the home page of your Dashboard (Network Dashboard if your are using WordPress Multisite) to find the BP Beta Tester sub menu of the Dashboard menu. From this page, you&#8217;ll be able to install the 5.1.0-beta1 release clicking on the tab &#8220;Upgrade to 5.1.0-beta1&#8221;.</p>\n\n\n\n<img src=\"https://buddypress.org/wp-content/uploads/1/2019/11/bp-beta-tester-02.png\" alt=\"\" class=\"wp-image-308801\" />You can always downgrade to the latest stable version of BuddyPress using the corresponding tab of the page’s header.\n\n\n\n<p>The development version of this plugin is hosted on <a href=\"https://github.com/buddypress/bp-beta-tester\">GitHub</a>: you can contribute to it <a href=\"https://github.com/buddypress/bp-beta-tester/pulls\">pulling requests</a> or <a href=\"https://github.com/buddypress/bp-beta-tester/issues\">reporting issues</a>. We plan to submit this plugin on the WordPress.org Plugins directory so that it’s easier to install.</p>\n\n\n\n<p><a href=\"https://github.com/buddypress/bp-beta-tester/releases/download/1.0.0-beta1/bp-beta-tester.zip\"><strong>Download BP Beta Tester</strong></a><strong> or </strong><a href=\"https://downloads.wordpress.org/plugin/buddypress.5.1.0-beta1.zip\"><strong>Download BuddyPress 5.1.0-beta1</strong></a><strong>.</strong></p>\n\n\n\n<p>Happy testing <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f609.png\" alt=\"?\" class=\"wp-smiley\" /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Nov 2019 02:45:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"imath\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress.org blog: WordPress 5.3 RC4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7596\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/11/wordpress-5-3-rc4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3672:\"<p>The fourth release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC4.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a>, &nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a>&nbsp;and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">third</a> release candidate posts.</p>\n\n\n\n<p>Release Candidate 4 contains three bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and addresses the following:</p>\n\n\n\n<ul><li>The Twemoji library has been updated from 12.1.2 to 12.1.3 (see <a href=\"https://core.trac.wordpress.org/ticket/48293\">#48293</a>).</li><li>Two regressions in the Media component (see <a href=\"https://core.trac.wordpress.org/ticket/48451\">#48451</a> and <a href=\"https://core.trac.wordpress.org/ticket/48453\">#48453</a>).</li><li>One bug in the Upload component (see <a href=\"https://core.trac.wordpress.org/ticket/48472\">#48472</a>)</li><li>Five bugs in the Block Editor component (see <a href=\"https://core.trac.wordpress.org/ticket/48502\">#48502</a>)</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<p>A new dev note has been published since the Field Guide was released, <a href=\"https://make.wordpress.org/core/2019/11/05/use-of-the-wp_update_attachment_metadata-filter-as-upload-is-complete-hook/\">Use of the “wp_update_attachment_metadata” filter as “upload is complete” hook</a>. Plugin and theme authors are asked to please read this note and make any necessary adjustments to continue working well in WordPress 5.3 or share any difficulties encountered on&nbsp;<a href=\"https://core.trac.wordpress.org/ticket/48451\">#48451</a>.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Nov 2019 23:56:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: State of the Word 2019 Recap: All Roads Lead to the Block Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95216\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/state-of-the-word-2019-recap-all-roads-lead-to-the-block-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11947:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>If there was one common theme in Matt Mullenweg&#8217;s State of the Word address this year at WordCamp U.S., it was that all roads lead to the block editor.  His speech was primarily about blocks, blocks, more blocks, and a dash of community.  This doesn&#8217;t come as a surprise because we are closing in on the one year mark of the official merge of the Gutenberg plugin into the core WordPress code.  It has been a year about blocks, and nothing is changing that course.</p>\n\n\n\n<p><a href=\"https://2019.us.wordcamp.org\">WordCamp U.S. 2019</a> was held in St. Louis, Missouri, over this past weekend.  The event was planned and put together by 47 organizers and 122 volunteers.  There were 90 speakers who held sessions across a range of topics in multiple rooms.</p>\n\n\n\n<p>For people who were not able to attend or watch via the livestream, the sessions are <a href=\"https://www.youtube.com/channel/UCpJf6LGZ0a4n9Lj4aVt9spg\">available via YouTube</a>.  Eventually, the videos will also make their way over to <a href=\"https://wordpress.tv/event/wordcamp-us-2019/\">WordPress.tv</a></p>\n\n\n\n<h2>Open: The Community Code</h2>\n\n\n\n<p>Mullenweg opened The State of the Word by showing a documentary named <a href=\"https://open.film/\">Open: The Community Code</a>, which is a film that primarily focuses on the WordPress community.</p>\n\n\n\n<p>The film explores why people are so passionate about a project that is essentially just code.  What drives them to organize and attend events like WordCamps?  Why do they volunteer their free time contributing to an industry that sees over $10 billion in profits?  What makes the WordPress community different from other projects?  The film team interviewed 37 people to get to the bottom of these questions.</p>\n\n\n\n<p>The team behind the project is also providing the film and all of the raw footage as open source for others to use.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"embed-vimeo\"></div>\n</div>\n\n\n\n<h2>The Events of the Past Year</h2>\n\n\n\n<p>Mullenweg primarily focused on WordPress updates and changes within the community when recapping events of the past year.  Since the <a href=\"https://wptavern.com/wordpress-5-0-bebo-released-lays-a-foundation-for-the-platforms-future\">release of WordPress 5.0</a> on December 6, 2018, WordPress has had two major releases.  A third major release, WordPress 5.3, is scheduled to launch on November 12.  </p>\n\n\n\n<p>During 2019, most heavy work went into the Gutenberg plugin, which was ported back into core WordPress.  The number of contributors to Gutenberg more than doubled since WordPress 5.0 launch, an increase from 200 to 480 individuals.</p>\n\n\n\n<p>The <a href=\"https://wptavern.com/wordpress-5-1-improves-editor-performance-encourages-users-to-update-outdated-php-versions\">release of WordPress 5.1</a> introduced the first iteration of the site health page, new cron features, and a site meta table for multisite installations.</p>\n\n\n\n<p>&#8220;WordPress is all about empowering users and we wanted to put the information and the tools in the hands of users as well to keep the site running in tip-top shape as we power an ever-increasing percentage of the web,&#8221; said Mullenweg of the site health feature.  He further explained that it is WordPress&#8217; responsibility to make sure users are up to date and running the latest versions of software.</p>\n\n\n\n<p>Building on top of the site health introduction, <a href=\"https://wptavern.com/wordpress-5-2-jaco-released-includes-fatal-php-error-protection-and-a-recovery-mode\">WordPress 5.2 launched</a> with a PHP fatal error protection and recovery mode.  The release also bumped the minimum PHP version to 5.6 and ported all widgets to blocks.</p>\n\n\n\n<p>Mullenweg then outlined the work done toward getting WordPress 5.3 ready for its November 12 launch date.  The major changes include:</p>\n\n\n\n<ul><li>150+ block editor improvements</li><li>Twenty Twenty default theme</li><li>Date/Time improvements and fixes</li><li>PHP 7.4 compatibility</li></ul>\n\n\n\n<p>As of now, 83% of all users on WordPress 5.2 or newer are running at least PHP 7.  This means the WordPress project has done what it can from the user end.  It is now time to start working with hosts to get sites updated to the latest version of PHP.</p>\n\n\n\n<p>The block editor is now available on both Android and iOS devices.  Mullenweg announced they were almost done with offline post support and that a dark mode is coming in weeks.</p>\n\n\n\n<p>The community had a good year.  In 2019, there were 141 WordCamp events, 34 of which were in new cities.  There were 17 Kids Camps for younger contributors to get involved.  There were also over 5,000 meetups and 16 <a href=\"https://doaction.org/\">do_action() charity hackathons</a>.</p>\n\n\n\n<p>The <a href=\"https://wordpress.org/news\">WordPress news page</a> has been highlighting one story from <a href=\"https://heropress.com/\">HeroPress</a> every month in the past year.  HeroPress is a project that allows people to tell their stories of how they got involved with WordPress.</p>\n\n\n\n<p>Mullenweg held a moment of silence for long-time community member Alex Mills (viper007bond) who passed away earlier this year after a <a href=\"https://alex.blog/2019/02/18/leukemia-has-won/\">long-fought battle</a> with leukemia.  Automattic is planning to finance a scholarship in his honor.  The scholarship will go to a plugin developer to attend WordCamp U.S. who has not had an opportunity to attend.</p>\n\n\n\n<h2>2019: The Year of the Block Editor</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Slide with screenshots of Gutenberg criticism from users.</div>\n\n\n\n<p>Mullenweg started focusing on the block editor after recapping the events of the past year.  WordPress 5.0 was released one day before WordCamp U.S. 2018 in Nashville.</p>\n\n\n\n<p>&#8220;We had people coordinating work from airplanes,&#8221; said Mullenweg.  &#8220;There were impromptu groups of core developers, testing and packaging the release in the hallways. The polyglots, marketers, and support teams were just scrambling to get ready.&#8221;</p>\n\n\n\n<p>He explained the reason for the biggest change to WordPress in its then 16-year history.  &#8220;We came together and decided to make this big change cause we wanted to first disrupt ourselves. We wanted to empower more WordPress users to realize our mission of democratizing publishing, and wanted to make the web a more open and welcoming place.&#8221;</p>\n\n\n\n<p>Not everyone was happy with the direction of WordPress and its new block editor.  It was a rough year from a leadership perspective to have a vision and see it through, despite constant negative feedback.  Mullenweg highlighted some of the comments that were critical of the block editor and explained that they had learned a lot from the process.</p>\n\n\n\n<p>&#8220;I think that we also have a great opportunity when we make big changes in the future,&#8221; said Mullenweg.  &#8220;Sort of build that trust in the conversations around testing, using GitHub for development, things like accessibility. So, I understand why we had a lot of this feedback.  But, we did get through it together.&#8221;</p>\n\n\n\n<p>Mullenweg highlighted that, according to Jetpack plugin stats, over 50 million posts have been written in the block editor.  That amounts to around 270 thousand posts per day.  It is important to note that this stat is on the lower end because it only accounts for users of the Jetpack plugin.  Therefore, the number is likely much higher.</p>\n\n\n\n<p>He covered the performance improvements to the editor, block motion when moving blocks, typewriter mode, block previews, and the social block.  &#8220;These are like the Nascar stickers of the web,&#8221; he said of social icons.  &#8220;They&#8217;re everywhere.&#8221;</p>\n\n\n\n<h2>The Next Steps for the Block Editor</h2>\n\n\n\n<p>In his address, Mullenweg covered the four phases of the Gutenberg project.</p>\n\n\n\n<ol><li>Easier Editing</li><li>Customization</li><li>Collaboration</li><li>Multilingual</li></ol>\n\n\n\n<p>The first phase was the initial launch and iteration of the block editor for content.  The second stage, which we are in now, is about full site customization.  This includes widgets and non-content areas, and will eventually cover areas like the site header and footer.  It will be interesting to see how page-building plugins work with these upcoming changes.  Some could use WordPress as the foundational, framework-type layer.  Others may go their own way.  Themes will also have to keep pace with the changes.</p>\n\n\n\n<p>Phase three, collaboration, will introduce a feature that allows multiple authors to collaborate and co-edit posts on a site in real time.  With any luck, WordPress will also build in a proper system for attributing posts to multiple authors.</p>\n\n\n\n<p>The fourth and final phase cannot get here fast enough.  As WordPress usage continues to grow around the world, it is past time that it offered a multilingual experience.  &#8220;We&#8217;re going to tackle the Babel fish problem,&#8221; said Mullenweg.</p>\n\n\n\n<p>Also on the roadmap is the concept of block patterns.  Patterns would be a groups of blocks that follows common patterns seen across the web.  The existing Media &amp; Text block is an example of a common pattern, but new patterns would go far beyond something so basic.  By providing patterns to users, they could simply insert a pattern and fill in their details, which should make it easy to rapidly create rich content.</p>\n\n\n\n<h2>Watch the State of the Word</h2>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"embed-wrap\"></div>\n</div>\n\n\n\n<p>Mullenweg&#8217;s entire presentation was done from the block editor.  He used the <a href=\"https://wordpress.org/plugins/slide/\">Slides plugin</a> created by Ella van Durpe.</p>\n\n\n\n<h2>Community Questions and Answers</h2>\n\n\n\n<p>The Q&amp;A sessions after Mullenweg&#8217;s address was more focused on community and policy.</p>\n\n\n\n<p>Rian Kinney asked whether we would see official policies on accessibility, ethics, conflicts of interest, and diversity.  She wanted to know how the community could make this happen over the next year.</p>\n\n\n\n<p>While a privacy policy is in the footer of WordPress.org, Mullenweg expressed his desire to not make changes than lean too heavily on policy.  &#8220;That is in spite of there being a policy or not, we&#8217;ve tried to enact bigger changes in WordPress in a policy-first way in the past,&#8221; he said.  &#8220;To be honest, it felt nice but didn&#8217;t always make things actually change.&#8221;  He said we usually do better by working with people to make changes rather than starting with the policy.</p>\n\n\n\n<p>Olivia Bisset, a young WordCamp speaker behind <a href=\"http://lemonadecode.com\">Lemonade Code</a>, asked Mullenweg how we could inspire kids who are currently in school to get involved with WordPress.  The project has tough competition coming from more exciting technology sectors such as robotics and other industries that are swaying the next generation.</p>\n\n\n\n<p>&#8220;This is going to be on YouTube later, and boys and girls, maybe of your generation, will see you here asking a question and being a speaker at WordCamp in front of a thousand adults,&#8221; said Mullenweg.  &#8220;And, you know, it&#8217;s kind of beautiful.&#8221;</p>\n\n\n\n<p>Mullenweg said that we need more stories from younger people on HeroPress and that Kids Camps will help.  He said that WordPress should be easier and more accessible, which are things that the current generation is more aware of and care about.  He also mentioned Automattic&#8217;s recent acquisition of Tumblr, which has a larger user base of young users, as a way to introduce them to WordPress.</p>\n\n\n\n<p>View the Q&amp;A portion of The State of the Word in the following video.</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"embed-wrap\"></div>\n</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 04 Nov 2019 19:18:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Post Status: Matt Mullenweg’s State of the Word, 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=70832\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://poststatus.com/matt-mullenweg-state-of-the-word-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10222:\"<p><a href=\"https://2019.us.wordcamp.org/\">WordCamp US 2019</a> is taking place for the first time in St. Louis, Missouri, where more than 1,300 WordPress community members and leaders are gathered.</p>\n\n\n\n<p>It\'s been the year of Gutenberg in 2019, and in his State of the Word, Matt Mullenweg highlighted what has been accomplished and what is coming next.</p>\n\n\n\n<p>Matt kicked off the event with the premiere of <a href=\"http://open.film/\"><em>Open: The Community Code</em></a>, a film about the WordPress open source community.</p>\n\n\n\n<p><em>Open</em> was really well done and made a great introduction to Matt\'s review of the year\'s achievements. In the film, Matt says that $10 billion flows through the WordPress economy every year, but that doesn\'t define the community. WordPress is more than code, more than business. Matt says, &#8220;It\'s more than a tool.&#8221; It\'s more like a canvas that &#8220;anyone can paint on.&#8221; </p>\n\n\n\n<p><em>Open</em> is a film about WordPress and what WordPress really is — not just software, but people, a community, and a mission. <em>Open</em> is a documentary short produced by Andrew Rodriguez and directed by Sean Korbitz. ​Executive producers Mark Maunder and Kathy Zant of <a href=\"https://www.wordfence.com/\">WordFence</a> contributed to the production of <em>Open</em> as well, and they are submitting it to independent and documentary film festivals.</p>\n\n\n\n<h3>The WordPress Community</h3>\n\n\n\n<p>The community continues to evolve, thrive, and adapt to the changing environment.</p>\n\n\n\n<h4>WordCamp US 2020</h4>\n\n\n\n<p>The next WordCamp US will be hosted during the workweek and won\'t overlap with Halloween. This is something I\'m personally thankful for, as it opens up the weekend for family. Many people, including me, got to the conference late this year due to spending the holiday trick-or-treating with family.</p>\n\n\n\n<h4>Volunteers Organizers, Speakers, and Sponsors</h4>\n\n\n\n<p>WCUS was made possible by 47 organizers, 122 volunteers, and 90 speakers. Bluehost, WooCommerce, Jetpack, and Google are this year\'s lead sponsors. Thank you to everyone!</p>\n\n\n\n<h4>Meetups, People, and Community Endeavors</h4>\n\n\n\n<p>There have been more than 5,000 WordCamp events and several do_action WordPress community events as well.</p>\n\n\n\n<p>One <a href=\"https://heropress.com/\">HeroPress</a> story per month is now being featured on the WordPress blog. </p>\n\n\n\n<p>Matt honored <a href=\"https://poststatus.com/footnotes/were-sad-to-report-that-alex/\">Alex Mills</a>, a prolific early and long-time contributor to WordPress who passed away in 2015.</p>\n\n\n\n<h4>WordCamps</h4>\n\n\n\n<p>There will be a total of 141 WordCamps in 2019, including 34 in brand new cities. There are also 17 KidsCamps happening in 2019.</p>\n\n\n\n<p>This year there are at least four WordCamp US speakers under age 15, which makes them younger than WordPress itself.</p>\n\n\n\n<p>In 2020, the first WordCamp Asia is happening in February, in Bangkok, Thailand. WordCamp Europe will convene in Porto, Portugal.</p>\n\n\n\n<h4>One year ago</h4>\n\n\n\n<p>WordPress 5.0 was released just before WCUS began in Nashville last year,  a contentious decision on timing in itself. 2018 was what Matt calls a &#8220;controversial year,&#8221; where we wanted to &#8220;disrupt ourselves.&#8221; Gutenberg was included in core despite a lot of criticism in and outside of the community about this decision. Matt says we learned a lot from the process, and it was &#8220;really good practice for future changes we want to make.&#8221;</p>\n\n\n\n<p>He also added, &#8220;I understand why we had a lot of this feedback,&#8221; and he expressed excitement for WordPress\'s future.</p>\n\n\n\n<h4>Ways to Get Involved with WordPress</h4>\n\n\n\n<p>Matt highlighted several ways to get involved in the WordPress community today:</p>\n\n\n\n<ul><li>Participate in WordCamp contributor days, including one at WCUS.</li><li>Install the <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> plugin, which is now a testing ground for features. About 275,000 people are taking part in this effort.</li><li>Install <a href=\"https://wordpress.org/plugins/design-experiments/\">Design Experiments</a>, a new feature plugin to test user interface experiments.</li><li>Create blocks! Matt made a call for Gutenberg block creation to &#8220;expand the window for how people are creating WordPress sites today.&#8221; If it\'s JavaScript only it will be able to go easily into the new block directory.</li><li>Help teach others in the community.</li></ul>\n\n\n\n<p>When Matt says <em>why</em> we do all this, he says it\'s to &#8220;help the open web.&#8221; He says the open web is like a pendulum that can swing to being more closed or more open over time.</p>\n\n\n\n<h4>Five for the Future</h4>\n\n\n\n<p>There\'s now a dedicated landing page for <a href=\"https://wordpress.org/five-for-the-future/\">Five for the Future</a> to highlight people and organizations devoting 5% of their resources to WordPress development through this program.</p>\n\n\n\n<h3>Core WordPress Development</h3>\n\n\n\n<p>There have been two core releases in 2019. WordPress 5.1, &#8220;<a href=\"https://wordpress.org/support/wordpress-version/version-5-1/\">Betty</a>,&#8221; brought the &#8220;Site Health&#8221; screen, along with other feature adjustments and bug fixes. It also included the Cron API and Site Meta for Multisite.</p>\n\n\n\n<p>WordPress 5.2, &#8220;<a href=\"https://wordpress.org/support/wordpress-version/version-5-2/\">Jaco</a>,&#8221; included live block previews, better block management, and the end of the WSOD (White Screen of Death).</p>\n\n\n\n<p>WordPress 5.3 will be released on November 12th. It includes more than 150 block editor improvements. Also in 5.3 is the beautiful Twenty Twenty theme. And thanks to a new security feature, every six months or so, WordPress will send administrator email verifications to help ensure site admins are staying up to date.</p>\n\n\n\n<p>The minimum PHP version requirement for WordPress is now 5.6.20, which ended support for 5.2 and 5.3. Compatibility is now up to PHP 7.4. More than 80% of all WordPress sites are now on PHP 7 or higher. Matt highlighted the still-urgent need to improve update mechanisms and strategies with webhosts and site owners.</p>\n\n\n\n<p>We are currently at 1,122 total unique contributors to WordPress this year. WordPress 5.3 will have more than a hundred contributors than any release before.</p>\n\n\n\n<h3>Gutenberg</h3>\n\n\n\n<p>There have been more than 20 major Gutenberg releases, and the number of Gutenberg contributors is up to 480 from 200 a year ago. Matt says the number of sites using Gutenberg is up more than 2.7 times, and we just surpassed 50 million posts created in Gutenberg. Gutenberg-based posts are increasing at a rate of about 270,000 posts per day as tracked by Jetpack, so that\'s a conservative estimate.</p>\n\n\n\n<p>In last year\'s State of the Word question and answer session, someone asked what percentage of Gutenberg was complete, and Matt answered &#8220;10%.&#8221; A year later he says he thinks it\'s about 20% complete. He also highlighted how it\'s an ongoing process that he expects to take a decade to bring to fruition everything he envisions.</p>\n\n\n\n<h4>Gutenberg Feature Improvements</h4>\n\n\n\n<p>There are a lot of improvements happening:</p>\n\n\n\n<ul><li>Gutenberg is now fully mobile compatible, and many of the core blocks are fully integrated. Offline support and dark mode are also nearly complete.</li><li>The average time to load Gutenberg has been cut in half, and time to type has been reduced from 170ms to 53ms.</li><li>There is now a smoother scrolling motion in Gutenberg.</li><li>Block previews allow you to see what a block looks like before you insert it, and it also allows you to see more information about what the block does.</li></ul>\n\n\n\n<p><strong>Other Gutenberg features in the works:</strong></p>\n\n\n\n<ul><li>Social icons that can be placed anywhere.</li><li>The navigation menu is going to be an inline Gutenberg block — a likely precursor to &#8220;customize all the things.&#8221;</li><li>Gradients will be more a part of the Gutenberg experience.</li><li>Core Gutenberg is getting a button block.</li></ul>\n\n\n\n<p>Matt recognizes that we\'ll have thousands of blocks created for Gutenberg, and there will be a block directory which will load inside the Gutenberg editor. Patterns will be collections of blocks that people can install in bulk.</p>\n\n\n\n<p>Matt says he thinks people will be able to create just about any type of website layout in just a few clicks when Gutenberg is mature.</p>\n\n\n\n<p>Several use cases of Gutenberg were highlighted in Matt\'s talk, from newsletter editors to WordCamps, newsrooms, Microsoft Word converters, and more.</p>\n\n\n\n<h4>The Four Phases of Gutenberg</h4>\n\n\n\n<p>Matt continues to highlight the four phases of Gutenberg development and where we are now.</p>\n\n\n\n<ul><li><strong>Easier editing</strong>: simply making the WordPress editing experience better has been the focus of the last year.</li><li><strong>Customization</strong>: we are &#8220;in the thick&#8221; of the customization phase now, some of which is complete, and some (like full inline site editing) is still to come.</li><li><strong>Collaboration</strong>: real-time editing collaboration is coming in the third phase, something I\'m very excited about.</li><li><strong>Multilingual</strong>: core WordPress and core Gutenberg will have complete multilingual support.</li></ul>\n\n\n\n<h3>In conclusion</h3>\n\n\n\n<p>Matt\'s slides for the State of the Word were actually built with Gutenberg.</p>\n\n\n\n<p>The code for the presentation <a href=\"https://github.com/wordpress/slides\">is on Github</a> for anyone to use.</p>\n\n\n\n<p>It\'s been an interesting and challenging year for WordPress. With that observation, Matt opened up the question period.</p>\n\n\n\n<p>Here\'s the complete video:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>And the Q&A; session:</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p><em>Photo of Matt by <a href=\"https://twitter.com/rzen\">Brian Richards</a> for Post Status. Thank you to <a href=\"https://twitter.com/dimensionmedia\">David Bisset</a> for live-tweeting the event while I wrote this.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 22:30:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WordPress.org blog: 2019 Annual Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7460\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/news/2019/11/2019-annual-survey/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1735:\"<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?fit=632%2C281&ssl=1\" alt=\"\" class=\"wp-image-7472\" width=\"329\" height=\"146\" /></div>\n\n\n\n<p>It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback.</p>\n\n\n\n<p>It only takes a few minutes to <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">fill out the survey</a>, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is also available in 5 additional languages:  <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-spanish\">Spanish</a>. Many thanks to the community volunteers who helped with the translation effort!</p>\n\n\n\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-background has-vivid-cyan-blue-background-color\" href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">Take the WordPress survey!</a></div>\n\n\n\n<p>The survey will be open for 4 weeks, and results will be published on this blog. All data will be anonymized: no email addresses or IP addresses will be associated with published results. To learn more about WordPress.org’s privacy practices, check out the <a href=\"https://wordpress.org/about/privacy/\">privacy policy</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 21:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: BoldGrid Joins Forces with W3 Edge, Acquires W3 Total Cache Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95188\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/boldgrid-joins-forces-with-w3-edge-acquires-w3-total-cache-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5167:\"<p><a href=\"https://www.boldgrid.com\">BoldGrid</a>, a WordPress product and services company, announced today that it has joined forces with <a href=\"https://www.w3-edge.com/\">W3 Edge</a>, the parent company behind the popular <a href=\"https://wordpress.org/plugins/w3-total-cache/\">W3 Total Cache</a> (W3TC) plugin.  BoldGrid acquired the W3TC plugin and retained its creator, Frederick Townes, along with its development and support staff.  The two teams will operate as sister companies but jointly work on the plugin&#8217;s future roadmap.</p>\n\n\n\n<p>&#8220;There are some things a larger team can accomplish for Total Cache that we are targeting right now,&#8221; said Brad Markle, development manager at BoldGrid.  &#8220;After a few more releases of core Total Cache features, the TC team is slated to help accelerate our CRIO Theme Framework on the BoldGrid side.&#8221;</p>\n\n\n\n<p>BoldGrid has a range of plugins, themes, and services for WordPress sites.  The company offers plugins like its post and page builder, themes such as its &#8220;super theme&#8221; CRIO, and services like testing and performance coaching.</p>\n\n\n\n<p>W3 Edge&#8217;s primary product is its W3TC plugin, which serves as the caching solution for over one million WordPress installs.  It is one of the most-used caching plugins available in the official WordPress plugin directory.  </p>\n\n\n\n<p>Many competing caching plugins have been gaining considerable exposure in the past few years.  Some of those are free.  Others, such as WP Rocket, have captured large segments of the premium market.  Managed WordPress hosts also generally offer built-in caching solutions as part of their strategy to build their customer numbers.  The question is whether this move will provide growth for W3TC and any related products or services.</p>\n\n\n\n<h2>The Future of the W3TC Plugin</h2>\n\n\n\n<div class=\"wp-block-image\"><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/w3tc-stats.png?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a>Screenshot of a new Caching Statistics page for W3 Total Cache</div>\n\n\n\n<p>The BoldGrid team has plans to continue developing the W3TC plugin.  &#8220;Since joining with the awesome team at W3, we have been working to add in some slick new features like Caching Statistics and Lazy Loading,&#8221; said Harry Jackson, product manager at BoldGrid.</p>\n\n\n\n<p>&#8220;We are also looking to partner with theme and plugin developers to ensure the widest range of compatibility for the product, and the WordPress Community,&#8221; said Jackson.  It is unclear what such partnerships would entail and the type of compatibility needed from third-party developers.  The BoldGrid team did not provide further details.</p>\n\n\n\n<p>For some users, the W3TC interface and options can be overwhelming.  &#8220;User Experience is at the top of the list of things we are working on,&#8221; said Sash Ghosh, BoldGrid&#8217;s marketing manager.  &#8220;It can be challenging for some users to fully understand and utilize all the powerful features.  We will soon be adding an on-boarding and configuration guide to the plugin that will hopefully make the plugin accessible to more users.&#8221;</p>\n\n\n\n<h2>Building Trust After a Rocky Past</h2>\n\n\n\n<p>Despite setbacks in 2016, the W3TC plugin has maintained over one million active installs over the past three years.  In March of that year, there was <a href=\"https://wptavern.com/frederick-townes-confirms-w3-total-cache-is-not-abandoned\">concern that the plugin was abandoned</a> after no activity for seven months.  The plugin was not working for many users on the latest version of WordPress.</p>\n\n\n\n<p>Much of the issue seemed to stem from not yet knowing how to scale such a popular product with a small team.</p>\n\n\n\n<p>Later in September of 2016, a <a href=\"https://wptavern.com/high-risk-xss-vulnerability-discovered-in-w3-total-cache-plugin\">high-risk XSS vulnerability</a> was discovered with the plugin.  The plugin developer <a href=\"https://wptavern.com/w3-total-cache-0-9-5-packages-xss-vulnerability-patch-with-major-update\">patched the plugin</a> quickly.  However, the updated versions introduced new bugs and a poor experience for many users.</p>\n\n\n\n<p>While things seem to have been running more smoothly in recent years, there is still some level of distrust within the inner WordPress community.  When asked how they are prepared to address past issues and assure they are looking out for the best interests of users in the future, the BoldGrid team said that security is a top priority.  They also expressed their openness to community feedback for improvement.</p>\n\n\n\n<p>&#8220;As with all big plugins, there are challenges with functionality, features, and security,&#8221; said Jackson.  &#8220;With a bigger team and additional Quality Assurance resources we feel that Total Cache will continue to improve in all the major areas.  We have also introduced a public pull request process to facilitate additional feedback and bug fixes.  Though you can&#8217;t ever guarantee security, our team is very committed and respects our responsibilities to our million-plus users.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 14:01:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordPress.org blog: The Month in WordPress: October 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7449\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/11/the-month-in-wordpress-october-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6217:\"<p>October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>WordPress 5.2.4</h2>\n\n\n\n<p>On October 14, <a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\">WordPress 5.2.4 was released</a> as a security release fixing 6 security issues. The fixes were backported to earlier versions of WordPress as well, so they’re available for sites not yet upgraded to 5.2.</p>\n\n\n\n<p>This kind of release is only possible because people <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">report security issues responsibly</a> so that the Core team can address them. You can find out more specific information about the fixes on <a href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">the release documentation page</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>WordPress 5.3</h2>\n\n\n\n<p>WordPress 5.3 has seen active development over the past month, with a release date set for November 12. You can <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">download and test the release candidate</a> to get a taste of what to expect—this is largely what final release will look like.</p>\n\n\n\n<p>This is a big release with a number of exciting and important updates. Among them are <a href=\"https://make.wordpress.org/core/2019/10/18/noteworthy-admin-css-changes-in-wordpress-5-3/\">significant changes to the look of the admin interface</a>, enhancements to the block editor that will affect developers of <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">themes</a> and <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">plugins</a>, <a href=\"https://make.wordpress.org/core/2019/10/09/introducing-handling-of-big-images-in-wordpress-5-3/\">large improvements</a> to the way that Core <a href=\"https://make.wordpress.org/core/2019/10/11/updates-to-image-processing-in-wordpress-5-3/\">processes images</a>, updates to cater for some functions <a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">specific to PHP 7.4</a>, improvements to the <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">Site Health feature</a>, and many more improvements that are all documented in <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">the WordPress 5.3 Field Guide</a>.</p>\n\n\n\n<p>In addition to these Core updates, the upcoming major release will also include the new default theme, <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">Twenty Twenty</a>.</p>\n\n\n\n<p>Want to get involved in building WordPress Core? You can contribute by <a href=\"https://make.wordpress.org/core/handbook/testing/\">testing the upcoming release</a>, as well as follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>\n\n\n\n<h2>New Core Committers</h2>\n\n\n\n<p><a href=\"https://meta.trac.wordpress.org/ticket/4760\">Three new committers have been added</a> to the WordPress Core organizational structure. Core committers are individuals who have direct access to the Core development code repositories in order to publish updates to the software.</p>\n\n\n\n<p>The new committers are Ian Belanger (<a href=\"https://profiles.wordpress.org/ianbelanger/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>ianbelanger</a>), Timothy Jacobs (<a href=\"https://profiles.wordpress.org/timothyblynjacobs/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>timothyblynjacobs</a>), and Joe Dolson (<a href=\"https://profiles.wordpress.org/joedolson/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>joedolson</a>). While Ian’s commit access is specifically for Core themes, both Timothy and Joe have full access to Core. This type of access is only given to individuals who have proved themselves with high-quality contributions and a deep understanding of how the WordPress project works.</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>Further Reading:</h2>\n\n\n\n<ul><li>The Accessibility Team is <a href=\"https://make.wordpress.org/accessibility/2019/10/26/accessibility-team-representatives-election-for-2020/\">looking for new team representatives</a> for 2020.</li><li><a href=\"https://2019.us.wordcamp.org/\">WordCamp US</a> is happening on November 1-3 and is set to be the largest WordPress event in North America.</li><li>WordCamp Asia, the first flagship event in the region, <a href=\"https://twitter.com/WordCampAsia/status/1187079744409526272\">will be rolling out their next batch of ticket sales</a> on November 1.</li><li>Work continues on Gutenberg, with <a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">the latest update</a> including significant updates to the Cover block and many other areas.</li><li>The WordCamp Europe team have published <a href=\"https://make.wordpress.org/community/2019/10/27/update-contributor-orientation-tool/\">an update about the Contributor Orientation tool</a> they worked on earlier this year.</li><li>The WordCamp US team has published <a href=\"https://make.wordpress.org/community/2019/10/28/grow-your-meetup-survey-results-for-wcus/\">the results of their Grow Your Meetup survey</a> ahead of their 2019 event.</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">is making plans</a> to implement a curated page for displaying featured themes in the Theme Directory.</li></ul>\n\n\n\n<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 07:28:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.1.3 of the Akismet WordPress Plugin is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2058\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://blog.akismet.com/2019/10/31/akismet-plugin-4-1-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:640:\"<p>Version 4.1.3 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. It contains the following changes:</p>\n\n\n\n<ul>\n<li>We&#8217;ve improved the activation and setup process.</li>\n<li>We&#8217;ve fixed a bug that could have allowed an attacker to make you recheck your Pending comments for spam.</li>\n</ul>\n\n\n\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 15:59:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Christopher Finke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Jason Schuller Launches DSKO, a Discovery Network for Creators and Brands\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95158\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/jason-schuller-launches-dsko-a-discovery-network-for-creators-and-brands\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6705:\"<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>On October 23, Jason Schuller officially announced that his new side project built on WordPress was open to the public.  The idea behind <a href=\"https://dsko.app\">DSKO</a> was to solve the issue of discoverability for creators and brands across various networks and websites by consolidating everything into a single space.</p>\n\n\n\n<p>The website offers an easy signup process.  DSKO currently features 220 profiles, but that number is sure to grow.  For now, the site is purely about discovering creators and finding out how to contact or follow them through website or social media links.</p>\n\n\n\n<p>The site allows profile creators to set up a bio, image, and even video, such as the one seen on the <a href=\"https://dsko.app/artsnacks/\">ArtSnacks profile</a>.  It will be interesting to see how people use this new WordPress-based site as a branding tool.</p>\n\n\n\n<p>&#8220;I&#8217;ve been asked what the incentive is to re-visit DSKO after you&#8217;ve created a profile,&#8221; said Schuller in a <a href=\"https://twitter.com/jasonpatricksc/status/1189604540443578368\">Twitter update</a>.  &#8220;I have features (some nearly finished) in the works which will make that crystal clear.&#8221;</p>\n\n\n\n<p>Schuller has been active within the WordPress community for over a decade.  He originally launched <a href=\"https://press75.com/\">Press75</a>, a WordPress theme shop, in 2008 with a focus on video-centric themes.  Like several others in the theme business at that time, he had the fortune of good timing.  From 2008 through the next couple of years, theme companies enjoyed little competition and a wide-open market for exploration.  However, business growth plateaued after a while.</p>\n\n\n\n<p>&#8220;I quickly realized that my perception of how to properly launch and scale a project had been skewed by my experience with my WordPress theme business,&#8221; wrote Schuller in a <a href=\"https://medium.com/the-second-time-around/a-brief-history-of-a-wordpress-theme-business-3847e16fcba4\">history of his theme business</a>. &#8220;With Press75, I just built it and they came — a strategy that surprisingly doesn&#8217;t work so well the majority of the time for new ventures.&#8221;</p>\n\n\n\n<p>Unable to duplicate his early success and unhappiness with the direction of WordPress theming, he sold Press75 in 2014.  Since then, he has moved onto new ventures such as <a href=\"https://leeflets.com/\">Leeflets</a>, a single-page website creator on top of WordPress.</p>\n\n\n\n<p>&#8220;There seems to be growing interest in minimalist single-page website solutions for simple profiles (e.g. <a href=\"https://carrd.co/\">Carrd.co</a>, <a href=\"https://linktr.ee/\">Linktr.ee</a>, etc),&#8221; said Schuller.  &#8220;After building [Leeflets] last year, it occurred to me that while all of these options are great for creating an individual site/page, none of them enable the people and brands who are using them to be discovered beyond organic search via Google or sharing a URL across various other networks. My goal was to see if I could solve that by creating a discovery network for people and brands.&#8221;</p>\n\n\n\n<p>The inspiration behind DSKO came from projects like existing single-page website builders.  Schuller said the grid design and navigation were inspired by the image-sharing site <a href=\"https://unsplash.com\">Unsplash</a> while Twitter inspired the profiles.  &#8220;I wanted it to be extremely quick and easy to browse, find and consume profiles,&#8221; said Schuller.</p>\n\n\n\n<p>While borrowing concepts from popular projects already in the wild, he wanted to put his spin on them.  One interesting custom feature is the ability to connect profiles on the DSKO site to other profiles.  For example, a person (creator) can connect his or her profile to a separate brand profile.  This helps with the discoverability aspect by allowing visitors to browse connected profiles.</p>\n\n\n\n<h2>The Technology Running the Network</h2>\n\n\n\n<div class=\"wp-block-image\"><img /></div>\n\n\n\n<p>DSKO is a completely front-end interface built on top of WordPress and shows what can be done without sending users to the WordPress backend.</p>\n\n\n\n<p>&#8220;Essentially, DSKO boils down to users, profiles, categories, and tags which makes WordPress the perfect framework,&#8221; said Schuller.  &#8220;The functionality was there, I just needed to create a custom front-end experience to manage it all. Most of my recent projects have utilized WordPress this way, and every time I make something new, I borrow aspects from the previous project.&#8221;  This allows Schuller to bring a project from the concept stage to production more quickly.</p>\n\n\n\n<p>The only third-party plugin running on the site is <a href=\"https://www.admincolumns.com/\">Admin Columns Pro</a>, which makes it easier for Schuller to manage users and content based on custom fields.</p>\n\n\n\n<p>For those who create a profile on DSKO, one uncommon feature is that there is no password field.  Instead, the site provides a &#8220;magic&#8221; login link.  &#8220;Essentially, by removing the concept of a password, I&#8217;ve simplified the onboarding process and am validating a real email address (ensuring a real user) at the same time.&#8221;</p>\n\n\n\n<p>The system generates a unique login token when the user creates a new account.  The token is sent as a link to the user email address.  The link is used to log into the site.  When a session expires or a user logs out, users can get a new link by re-entering their email address.</p>\n\n\n\n<p>Currently, the code behind the site is not available to the public.  However, Schuller did say that he would consider opening up the platform in the future.  Starting from a more mature codebase could help other developers in the WordPress space build interesting projects where similar features are needed.</p>\n\n\n\n<h2>Beyond DSKO: The Present and Future for Schuller</h2>\n\n\n\n<p>Schuller is currently on contract with 10up.  He primarily works with them on the <a href=\"https://www.microsoft.com/inculture/\">Microsoft In Culture</a> project.  &#8220;[It] has been an amazing project to be a part of,&#8221; said Schuller.  Because the contract is only part-time work, it leaves him enough creative freedom to experiment with ideas like DSKO.</p>\n\n\n\n<p>Another creative pursuit is an upcoming WordPress plugin that he&#8217;s building along with Phil Kurth.  It will allow site owners to map custom domains to any post or page on a single WordPress install.  The idea was inspired by his work with Leeflets.  &#8220;It&#8217;s going to be the first WordPress product I&#8217;ve been a part of since I sold my theme business in 2014.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 30 Oct 2019 18:32:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress.org blog: WordPress 5.3 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7439\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3086:\"<p>The third release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-RC3.zip\">download the release candidate here</a> (zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a> and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a> release candidate posts.</p>\n\n\n\n<p>Release Candidate 3 contains improvements to the new About page, bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and 9 fixes for the following bugs and regressions:</p>\n\n\n\n<ul><li>Four bugs in the block editor have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48447\">#48447</a>).</li><li>Three Date/Time related bugs have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48384\">#48384</a>).</li><li>A regression in <code>date_i18n()</code> has been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/28636\">#28636</a>).</li><li>An accessibility color contrast regression for primary buttons when using alternate admin color schemes was fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48396\">#48396</a>).</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 21:16:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WordPress Businesses Should Send Out Press Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95161\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wordpress-businesses-should-send-out-press-releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7961:\"<p>I have only been on the job for less than two months. In that time, one thing has become abundantly clear. The largest companies in the WordPress ecosystem send out press releases to news organizations such as WP Tavern. Small businesses may send an email with few details.  Others send nothing at all.</p>\n\n\n\n<p>As a former business owner, I never thought about writing a statement to send to the press.  Now that I am on the other side, I see how I missed huge opportunities to potentially get more coverage and build a relationship with the publications within the WordPress arena.</p>\n\n\n\n<p>Brian Krogsgard of <a href=\"https://poststatus.com\">Post Status</a>, a competing publication of WP Tavern, agrees that companies are missing opportunities.  &#8220;There are many easy wins in PR that only a few companies take advantage of in our space,&#8221; said Krogsgard.</p>\n\n\n\n<p>As a journalist, I am here to tell the truth, regardless of who or what the story is about.  However, there will always be a part of me that wants to see every businesses within the WordPress space succeed.  Therefore, this article is a tutorial that will help businesses within our space get their news items out to the public.  Plus, the larger and more successful the WordPress community grows, the more potential WP Tavern has of growing its audience.  It is healthy for the ecosystem on the whole.</p>\n\n\n\n<p>Because of this symbiotic relationship between the media and product creators, it is important that business owners have a good working relationship with the publications that are writing about them.</p>\n\n\n\n<h2>What Is a Press Release?</h2>\n\n\n\n<p>A press release is sometimes called a &#8220;press statement&#8221; or &#8220;news release.&#8221;  It is an official statement from a company about a particular news item.  In a sense, it is a news story itself.  There are some publications in the larger world of journalism that routinely publish only the press releases sent to them.</p>\n\n\n\n<p>A press release can be in the form of an email, text file, PDF, or even video.  Its purpose is to simply let the press know about your news.</p>\n\n\n\n<h2>Why Should Companies Put Together Press Releases?</h2>\n\n\n\n<p>On occasion, I get a message that says something along the lines of, &#8220;Hey, you&#8217;re giving the big businesses too much coverage. How about throwing the smaller folks a bone?&#8221;  That is a fair question.  However, what is often the problem is that this news by a smaller company may not be on a particular publication&#8217;s radar.</p>\n\n\n\n<p>Enter the press release.</p>\n\n\n\n<p>This is where smaller companies should sneak a peek at larger companies&#8217; playbooks.  Large businesses often have entire public relations (PR) or communications departments.  Sometimes they only have one person in that role.  What those PR positions are doing is getting the word out, and they are making sure the publications within the WordPress realm know about their news.</p>\n\n\n\n<p>Individuals or small companies need not hire someone for communications with the press.  However, at least one person should serve as a representative and handle this role.</p>\n\n\n\n<p>There are many things happening in the WordPress world on any given day.  Even with a press release, there is no guarantee that WP Tavern or another publication will publish your story.  There is a guarantee that they won&#8217;t if they do not know about it.</p>\n\n\n\n<p>A press release is a way to get your foot in the door and should be a part of any company&#8217;s strategy.  </p>\n\n\n\n<p>&#8220;I definitely prefer press packets for product launches, particularly if I can see the key features ahead of time,&#8221; said Krogsgard.  &#8220;Press releases at the time of a news event is fine, but the best company PR is usually done by working with media outlets ahead of a release schedule.&#8221;</p>\n\n\n\n<p>Whether your news is covered will depend on several factors.  The important thing, particularly for smaller businesses, is that you put yourself on a publication&#8217;s radar.</p>\n\n\n\n<p>The team here at WP Tavern will certainly appreciate your company passing along a press release, but do not limit yourself.  Send it to other publications.  Give podcast creators a copy.  Most will be accepting of any news you send their way.</p>\n\n\n\n<h2>How To Write a Press Release</h2>\n\n\n\n<p>Press releases can take a few different forms, but there are some things that should be included with every statement that a business issues.  </p>\n\n\n\n<p>The following is an outline of a basic press release.  You can deviate from the formula a bit, but make sure you include the important information.</p>\n\n\n\n<h3>Contact Information</h3>\n\n\n\n<p>Journalists need to know how to get in touch with you or the appropriate representative for your company for potential follow-up questions.  In the WordPress world, this will primarily be a name and email address.  However, including something like your WordPress Slack username for text chats helps.  </p>\n\n\n\n<p>Most of all, you should provide the best way to contact you.</p>\n\n\n\n<p>This also means being prepared to answer questions if and when you are contacted.  Quotes are like gold to journalists.  It is often the human element that we are after.  The press release opens the door to a conversation.</p>\n\n\n\n<h3>Story Headline</h3>\n\n\n\n<p>Journalists get a lot of emails, notes, and so on.  A press release should contain a headline that is both factual and grabs attention.  It should be a brief summary of what news you want to share.  It is no different than writing a blog post.  In our fast-paced culture, you only have a moment to let someone know that your story is worth reading.  Avoid headlines that look like click-bait, but tell why your news is newsworthy.</p>\n\n\n\n<p>Depending on the news, a sub-headline is often an extra piece of info that helps.  A quick sentence or two that expands on the headline is sometimes necessary to fully explain why the press should continue reading.</p>\n\n\n\n<h3>Dateline</h3>\n\n\n\n<p>A press release should always include a dateline.  There are two types of datelines.  The first type is the date of the press release.  This means journalists can move forward with the story.</p>\n\n\n\n<p>However, you can also put a future date in the dateline.  This is common when you want to prepare publications for an upcoming story that you don&#8217;t want to publicly announce yet.  This is called requesting a news embargo, which means that publications should sit on the story until that particular date.</p>\n\n\n\n<h3>Introduction or Lede</h3>\n\n\n\n<p>A lede is the opening paragraph of a story that answers the five W&#8217;s: who, what, when, where, and why.  This is the moment you should let journalists know what the story is about.  Get to the point in answering those five questions. </p>\n\n\n\n<h3>Body Copy</h3>\n\n\n\n<p>After introducing the story, you should stick to relevant information about the story.  Any data or details that are important for the story should be included.</p>\n\n\n\n<p>&#8220;Another thing that&#8217;s really helpful is screenshots, or short video overviews, and other brand assets that can provide visual appeal to go alongside a story,&#8221; said Krogsgard of writing a compelling press statement.  &#8220;Do you have a revamped interface? Well nicely packaged visual materials really help sell that to convince me that it&#8217;s worth covering — and also to use in the article myself if I do write about it.&#8221;</p>\n\n\n\n<h3>Company Bio or Info</h3>\n\n\n\n<p>Last but certainly not least is including a section that provides details about your company.  Consider it a short biography.  </p>\n\n\n\n<p>One of the worst things for a journalist covering a story is spending hours trying to dig up your company&#8217;s information online instead of working on the story.  Providing that information up front is a huge help to the press.  It also ensures we are getting your information correct.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 19:49:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Not Attending WordCamp US 2019? How to Watch From Home\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/not-attending-wordcamp-us-2019-how-to-watch-from-home\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3419:\"<p>For those of you unable to attend WordCamp US at St. Louis, Missouri, this weekend, the event will be <a href=\"https://2019.us.wordcamp.org/livestream/\">available for live streaming</a>.  The conference runs from Friday, November 1, through Sunday, November 3.  Friday and Saturday&#8217;s regular sessions, which do not include workshops, will be streamed. </p>\n\n\n\n<p>While previous events like <a href=\"https://wptavern.com/wordcamp-us-2018-livestream-tickets-now-available\">WordCamp US 2018</a> have always been available to watch for free, they required you to sign up before viewing.  This year&#8217;s event is open with no such restriction.  You can simply pick a streaming video and watch.</p>\n\n\n\n<p>There will be multiple livestreams running simultaneously based on the room the parallel sessions are happening in.  The WordCamp organizers have already set up the livestream videos with YouTube. By going to the <a href=\"https://2019.us.wordcamp.org/livestream/friday/\">Friday livestream</a> or <a href=\"https://2019.us.wordcamp.org/livestream/saturday/\">Saturday livestream</a> page, you can set a reminder for any particular room you want to watch via the YouTube embed.</p>\n\n\n\n<p>There are many sessions planned for the <a href=\"https://2019.us.wordcamp.org/schedule/\">camp schedule</a>. The tough problem is going to be figuring out what to watch with overlapping streams from three rooms.  All times on the schedule are in Central Time US (CST).</p>\n\n\n\n<p>If you have a question for a particular speaker, WordCamp US will have a volunteer social media team keeping an eye on the following hashtags on Twitter.  The volunteers may ask your question if time permits for the session.</p>\n\n\n\n<ul><li><a href=\"https://twitter.com/hashtag/AskWCUS220\">#AskWCUS220</a> (Room 220)</li><li><a href=\"https://twitter.com/hashtag/AskWCUS230\">#AskWCUS230</a> (Room 230)</li><li><a href=\"https://twitter.com/hashtag/AskWCUS240\">#AskWCUS240</a> (Room 240)</li><li><a href=\"https://twitter.com/hashtag/AskSOTW\">#AskSOTW</a> (State of the Word)</li></ul>\n\n\n\n<h2>Watch Previous WordCamp US Speakers</h2>\n\n\n\n<p>If you can&#8217;t wait for this year&#8217;s sessions, you can view the <a href=\"https://wordpress.tv/event/wordcamp-us-2018/\">2018 sessions</a> from WordPress TV.  It is a good way to get yourself in the mood for this year&#8217;s event and to look at how much WordPress has changed in the past year.</p>\n\n\n\n<p>One of the most interesting WordCamp videos is always the &#8220;State of the Word&#8221; presented by Matt Mullenweg, co-founder of WordPress.  You can watch last year&#8217;s video below.  What do you expect to see in this year&#8217;s talk?</p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n<div class=\"embed-wrap\"></div>\n</div>\n\n\n\n<h2>How Will You Attend WordPress US 2019?</h2>\n\n\n\n<p>Are you planning on attending in person this year?  Or, will you be among the many who are watching from home, the office, or elsewhere?</p>\n\n\n\n<p>Unfortunately, WP Tavern will not be able to cover the event in person this year. However, we will be watching from home like many of you. Feel free to drop your recommended must-watch sessions in the comments.</p>\n\n\n\n<p>If you are unable to attend or watch via livestream, the videos will be available on <a href=\"https://wordpress.tv/\">WordPress TV</a> and <a href=\"https://www.youtube.com/channel/UCpJf6LGZ0a4n9Lj4aVt9spg\">YouTube</a> to watch at your leisure.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 Oct 2019 17:18:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: Automatic Image Alt Tags and More with Image SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95129\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/automatic-image-alt-tags-and-more-with-image-seo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8901:\"<div class=\"wp-block-image\"><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/image-seo.jpg?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a></div>\n\n\n\n<p>I had the opportunity to test the <a href=\"https://wordpress.org/plugins/imageseo/\">Image SEO plugin</a> over the past week.  Image SEO is a plugin that connects to an accompanying online service that processes images uploaded to a WordPress installation.  The plugin can automatically rename file names, create alt tags for screen readers, and optimize images for Pinterest.</p>\n\n\n\n<p>The plugin is one half of a Software as a Service (SaaS) product.  To use the image processing features, you must sign up for an account on the <a href=\"http://imageseo.io/\">Image SEO website</a>.  Currently, users are provided credits for processing 10 images for free to test out the service.  After that, image processing requires a monthly or annual fee based on a set number of images.  Pricing starts at 4.99€ per month for the lowest tier and ranges up to 59.99€ for the enterprise option.  The service also offers one-time purchases for a given number of images.</p>\n\n\n\n<p>The Image SEO team went public with their plugin and service in April and have been refining the product since.  Aurelio Volle, co-founder and chief marketing officer, said a big part of the process was removing unnecessary features in favor of developing the core product and creating new features.</p>\n\n\n\n<p>&#8220;[Thomas Deneulin] asked me in December 2018 to come and work with him on a project,&#8221; said Volle.  &#8220;They had developed an Image SEO auditing tool but they were not able to sell it. I went through the product, cut so many features, created a new narrative, asked for reviews, etc.&#8221;  Volle&#8217;s work primarily centered around identifying user needs and figuring out what they would be willing to pay for the service.</p>\n\n\n\n<p>Volle said they use all the major facial recognition APIs available on the market, but they are not willing to share their secret recipe at this time.  &#8220;We process the results with an algorithm we created to provide our users with the most relevant data possible for alts and names,&#8221; said Volle.  &#8220;We are still working on the algorithm. The results should be more and more accurate in the future.&#8221;</p>\n\n\n\n<p>When I come across a new WordPress plugin or theme with the term &#8220;SEO&#8221; in the name, I cringe.  It is used so often as a marketing term that it has lost meaning for me.  I&#8217;d like to ignore it like a bad commercial on TV, but it&#8217;s there in the name.  I know it is probably smart to use it for marketing purposes.  Despite my misgivings about the name, I gave Image SEO a serious look and found that I liked its potential.</p>\n\n\n\n<p><em>Would I use the plugin?</em>  Probably not on a personal blog where I control all of the content.  I am a stickler for controlling every aspect of my own content.  I am not within the target audience for the plugin.</p>\n\n\n\n<p>However, I would use the plugin for a large site with multiple writers.  It would work well as part of a quality control system.</p>\n\n\n\n<p>My primary interest was in how well Image SEO auto-created image alt tags.  I have little interest in what search engine benefits the plugin might provide.  I was more interested in how it could help describe images for users who use a screen reader.  A plugin that can accurately add alt tags for users on assistive technologies could be useful in an environment with multiple writers.  I have worked with clients in the past where such a plugin would have been a welcome addition to the site.</p>\n\n\n\n<p>This is not to say the plugin isn&#8217;t useful for single-person sites or those with a small group of writers.  It depends on whether the individual site could use it.  If needed, I would recommend the Image SEO plugin to anyone.</p>\n\n\n\n<p>The free service is currently only available in English.  If you need alt tags in another language, you will need to go with a premium plan.  This would be better opened up to all languages.  It is hard to vouch for the accuracy of non-English alt tags when they are not available in the free plan.</p>\n\n\n\n<h2>How Well Does the Plugin Work?</h2>\n\n\n\n<p>The plugin gives you the option of automatically renaming image file names and setting alt tags.  I would recommend using both of these options.  File names like <code>IMG_2019_345.jpg</code> do not tell search engines or users anything about an image, and the automatic alt tags are the most useful feature of the plugin.</p>\n\n\n\n<p>The plugin doesn&#8217;t make you work to get results.  I tested out 60 images (10 free plus an extra 50 provided by the Image SEO team).  On the whole, the results were fairly accurate.</p>\n\n\n\n<p>However, not every image passed the accuracy test.  Take note of the following screenshot with an image of two people standing at the end of some hallway or structure.  I&#8217;m not exactly sure what they are in, and neither was the service.  The resulting alt tag was &#8220;Archives &#8211; A very dark water &#8211; Art.&#8221;</p>\n\n\n\n<img />A rare inaccurate alt tag added by the plugin.\n\n\n\n<p>I had to throw a few curveballs at the software to see how it stood up.  Technologically, humans are not at the pinnacle of artificial intelligence and recognition software, but we are constantly improving.  The service will undoubtedly improve over time with anything thrown at it.</p>\n\n\n\n<p>My biggest gripe with the plugin is that it automatically prepended the post/page title to the front of every image&#8217;s alt tag when uploading via the post editor.  There is no reason to do this.  The post title often has nothing to do with describing the image for screen readers.  I could see this being useful for product images on an eCommerce site.  This feature should be opt-in.  It would quickly become irritating to manually remove the post title from each image.</p>\n\n\n\n<p>The plugin also allows you to add a description, ID, and other elements for use with Pinterest.  I also could not figure out how to get the attributes to show for my images on anything but attachment pages.  It was unclear how this feature worked on the front end of the site.  Admittedly, it did not bother me because I had no interest in this aspect of the plugin.</p>\n\n\n\n<h2>Bulk Optimizing Images</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Bulk optimizing cat pictures, the most useful type of images for internet usage.</div>\n\n\n\n<p>The Image SEO plugin allows users to bulk optimize images across the entire site.  The bulk optimization tool also allows you to preview the results before deciding on whether you want to make the changes.  This can be an extremely powerful tool if you are running a site with a lot of old images with missing alt tags.</p>\n\n\n\n<p>The biggest thing to watch out for is that running this tool can eat up a ton of image credits.  </p>\n\n\n\n<p>A fair word of warning:  even the optimization preview uses image credits.   I hope this limitation is addressed in some way because it is not clear up front.  Using the feature can catch you off guard and drain money if you simply want to preview the optimization prior to deciding whether you want to go through with the changes.</p>\n\n\n\n<p>The textual description on the bulk optimization page may even lull you into a false sense of security.  It reads, &#8220;No worries, you can get a preview of the results before going further.&#8221;  Fortunately, I was running this on a free account and did not lose real dollars over it.</p>\n\n\n\n<p>It will take a bit of time to run, depending on the number of images, but the bulk optimization tool works flawlessly.</p>\n\n\n\n<h2>How Does the Code Stack Up?</h2>\n\n\n\n<p>I see little reason for concern with the code.  The developers have a clear architecture and hierarchy.  It is forward-thinking and uses modern PHP practices.</p>\n\n\n\n<p>The one caveat is that the plugin does not use the core WordPress HTTP API for handling remote requests to their service.  Users without cURL enabled on their site would be unable to use the plugin, which is likely not an issue for most people.  The team said they went with a custom implementation so they could easily deploy their project on other PHP projects and not be limited by tying the code to WordPress.  They have reported no problems with customers thus far.</p>\n\n\n\n<h2>The Final Verdict</h2>\n\n\n\n<p>There is a lot to like about the plugin.  If you are in it for the SEO benefits, having a system in place to automatically rename ugly image file names and create fairly accurate alt tags, you may find this plugin useful.</p>\n\n\n\n<p>The plugin is not 100% accurate by any means, but you won&#8217;t find that level of accuracy anywhere.  With the 60 images I threw at it, it performed well.  The pricing model also looks fair for what the service offers.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 Oct 2019 19:53:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: GoDaddy Launches eCommerce Hosting Plan in Partnership with WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95119\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/godaddy-launches-ecommerce-hosting-plan-in-partnership-with-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3955:\"<p>GoDaddy launched an eCommerce tier for their <a href=\"https://www.godaddy.com/hosting/wordpress-hosting\">managed hosting plans</a> on October 22.  The new tier launched in partnership with WooCommerce and offers over $1,500 of commercial extensions and themes for setting up an online shop.</p>\n\n\n\n<p>The eCommerce plan utilizes GoDaddy&#8217;s onboarding process available with all managed hosting plans.  The system automatically sets up the user&#8217;s online shop based on answers provided during onboarding.  This process eases the burden of setting up a fully-functional eCommerce website for users who are new to working with WordPress and WooCommerce.  </p>\n\n\n\n<p>GoDaddy also sets up and maintains a free SSL certificate, a necessity for handling secure payments, as long as the site continues using their managed hosting.  This service is available with some of their other managed hosting plans but not the lower tiers.</p>\n\n\n\n<p>It makes sense that GoDaddy would try to carve out a slice of the WooCommerce pie now that the plugin is powering 30% online shops around the world.</p>\n\n\n\n<p>Neither GoDaddy nor Automattic, the parent company of WooCommerce, has released the details of what the partnership entails.  Aaron Campbell, GoDaddy&#8217;s head of WordPress Ecosystem and Community, confirmed the two companies did have an official partnership.</p>\n\n\n\n<p>The available list of bundled WooCommerce extensions includes the following, but it is unclear what other extensions are available (official extensions number in the hundreds).  Campbell said that some extensions are still rolling out on the platform.</p>\n\n\n\n<ul><li>Advanced Notifications</li><li>WooCommerce Brands</li><li>Checkout Field Editor</li><li>WooCommerce Deposits</li><li>Follow-Ups</li><li>WooCommerce Points and Rewards</li><li>WooCommerce Pre-Orders</li><li>Product Add-Ons</li><li>Product Vendors</li><li>Min/Max Quantities</li><li>Product CSV Import Suite</li><li>Memberships</li><li>Bulk Stock Management</li><li>Subscriptions</li><li>WooCommerce Bookings</li><li>UPS &amp; USPS Shipping Methods</li></ul>\n\n\n\n<p>There are a few popular add-on plugins in the mix, but many store owners could need to purchase additional extensions to build their ideal online shop.  Setup costs could be steeper than some customers anticipate.  Official WooCommerce extensions can range between free and $299 per year.</p>\n\n\n\n<p>The plan also makes several premium <a href=\"https://wordpress.org/themes/storefront/\">Storefront</a> child themes available to customers.  Like extensions, there is currently no public list of which themes are included with hosting.</p>\n\n\n\n<p>The new eCommerce tier runs on the same managed hosting system as other plans, which all allow site owners to run WooCommerce.</p>\n\n\n\n<p>&#8220;From an ease-of-setup standpoint, eCommerce site owners will definitely benefit from the simplified onboarding process that helps them through setting up their store,&#8221; said Campbell.  (Read our <a href=\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\">review of GoDaddy&#8217;s onboarding process</a>.)</p>\n\n\n\n<p>Aside from potential help from the onboarding process, the value-add for going with the eCommerce hosting tier is directly tied to the bundled WooCommerce extensions and themes.  Without an official list available, it is hard to speculate whether the upgrade from the next lowest tier, Ultimate, is worth it.  The Ultimate plan runs $5 cheaper each month ($60/year).  It is virtually the same plan minus the WooCommerce extensions.  Plus, you can run a second website on Ultimate. </p>\n\n\n\n<p>Shelling out the extra dollars for the eCommerce tier comes down to personal choice.  Whether GoDaddy is offering an extension or theme that would cost more than the $60 in savings each year should play heavily into that decision.  A single commercial extension or theme will likely exceed that cost.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Oct 2019 22:23:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Possibilities of a CMS in the Spatial Computing Future\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/possibilities-of-a-cms-in-the-spatial-computing-future\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10303:\"<p>In my role at WP Engine, I have the opportunity to travel the world serving as an ambassador for new and interesting ways of using WordPress. I was recently in Raleigh, North Carolina, at All Things Open talking about the possibilities of a CMS in the spatial computing future. This was a lofty topic for 45-minute talk, so I thought I’d share a more in-depth look at a new way to build Extended Reality (XR) experiences with WordPress using a headless approach.</p>\n\n\n\n<h2><strong>The Headless Craze</strong></h2>\n\n\n\n<p>I think many of us see headless primarily as a way to make our sites faster and decouple them from the CMS that controls our content. While true in some cases, this is probably not the most compelling lens to view this concept in when we consider what this means for native apps and Augmented, Virtual and Mixed Reality, more broadly defined as Extended Reality.</p>\n\n\n\n<p>In order to understand how WordPress can power XR experiences we must take a step back and understand what key features developers and designers desire in interactive applications.</p>\n\n\n\n<h2><strong>What is the core appeal of a CMS?</strong></h2>\n\n\n\n<p>Zooming out and looking at what a CMS is at its core highlights a few key features that make my future-looking imagination race. A CMS can be broadly defined as:</p>\n\n\n\n<ul><li>post/page data</li><li>meta associated with data like users and posts</li><li>a secure user system</li><li>a rich content editor</li><li>extendability through plugins/themes/etc.&nbsp;</li></ul>\n\n\n\n<p>WordPress shines brightly across this entire spectrum and, pairing that with open-source flexibility, you can build whatever you can dream. User systems and content are key requirements in interactive and media-rich applications such as XR. An open-source solution like WordPress gives developers greater freedom and more control over the source code and the software meaning they can tweak it to perform how they want, unrestricted by licensing. Another level of freedom was achieved when the new Gutenberg editor was merged into WordPress 5.0, further democratizing the power of the world’s most popular CMS.</p>\n\n\n\n<h2><strong>Possibilities with the New WordPress Editor</strong></h2>\n\n\n\n<p>We’ve spent a lot of time thinking through the front-end benefits in a unified way to control markup using blocks. I think one aspect of the new WordPress editor that has largely been overlooked in front-end development is the data structure of the blocks themselves.&nbsp;</p>\n\n\n\n<p>Pulling data via the REST API typically returns the final markup of a post. This makes it hard for non-html based applications to parse or use the data. You can certainly sanitize the final output, but it doesn&#8217;t provide confidence going forward and often removes important context.</p>\n\n\n\n<p>Before a post renders markup in the front end, there are valuable attributes used to determine that final markup. These options are often just as useful to a non-browser application as they would be for a browser-based experience; it’s just a matter of making sure the content is sanitized for your purposes.</p>\n\n\n\n<p>Let’s imagine we have an audio block with the attributes of <code>src</code>, <code>loop</code>, <code>autoplay</code>, etc. Those attributes are just as important to a non-browser application that expects the same decisions to be made at runtime. By querying a Gutenberg post, one can pull the audio file and also the attributes of how it should behave, leading to the application being unified with browser behavior.</p>\n\n\n\n<p>In the not too distant future, the physical and digital worlds will continue to blend together. As younger generations increasingly interact in ways other than through screens, keyboards, and mice, we should probably begin to create content with that future in mind. Do we really want all that markup saved? Is it even important? If it is, maybe that attribute should be saved, keyed, and exposed via JSON. Markup is really only useful to the front-end rendering.</p>\n\n\n\n<h2><strong>Sound-Only AR Blog Reader Concept</strong></h2>\n\n\n\n<p>Bose is pioneering an interesting approach to augmented reality. They have quickly been updating their product offerings to include 6 Degrees of Freedom (6DoF) sensors inside their headphones and sunglasses to power sound-only AR experiences. This gives us three important mechanics for XR; 6DoF head tracking, private sound experiences, and gesture recognition. I decided to use this technology to illustrate the potential in the data structure of Gutenberg blocks.&nbsp;</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/bose_ar_glasses.jpg?w=627&ssl=1\" alt=\"photo of Bose AR sunglasses\" /></div>\n\n\n\n<p>Using the <a href=\"https://github.com/royboy789/gutenberg-object-plugin\">Gutenberg Object Plugin</a> open-sourced and built by Roy Sivan and contributors, I was able to expose the attribute data in a REST friendly way. I was then able to shift my focus on building mechanics and an MVP application to read a blog without sight. The application puts buttons in 3D space around the visitor. To the right, a “Next Post” button. Directly in front of them, a post body button that plays back a reading of the post data. The voice-to-text technology was made possible by using the <a href=\"https://wordpress.org/plugins/amazon-polly/\">Amazon AI Plugin for WordPress</a>.&nbsp;</p>\n\n\n\n<p>When double-tapping on the frame of the glasses while facing the post body, a voice prompts the visitor to use a nod gesture to playback the post audio. Within 24 hours of sketching the idea, I had a working proof of concept and I attribute that largely to not having to figure out how to prepare my data. Blocks and JSON did it all for me!</p>\n\n\n\n<p>The following image is a sketch of the concept along with the final product.&nbsp;</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/sketch_of_AR_reader_idea.jpg?w=627&ssl=1\" alt=\"sketch of Bose AR blog reader.\" /></div>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/bose_ar_blog_reader.jpg?w=627&ssl=1\" alt=\"final design of Bose AR blog reader prototype.\" /></div>\n\n\n\n<h2><strong>Blocks in Traditional Augmented Reality</strong></h2>\n\n\n\n<p>Spatializing blocks was interesting to me, so I built another proof of concept that demonstrates how 3D prefab objects in a game engine can be associated with 2D blocks on a webpage. Below is a screenshot of a Gutenberg post rendered around my hotel room.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/gutenberg_shared_properties.jpg?w=627&ssl=1\" alt=\"Example showing relation of website and AR experience.\" /></div>\n\n\n\n<p>While a literal 1:1 representation of a webpage in AR illustrates that we can couple our design decisions in and out of a browser, I think we can go a step further. A block can represent many things; so why not use custom blocks to abstract 3D ideas?</p>\n\n\n\n<h2><strong>Non-Standard File Types and Abstracting 3D Objects</strong></h2>\n\n\n\n<p>HTML has a finite list of file types allowed out of the box. That is not to say we are limited to only those options. WordPress is flexible enough to extend to others by simply adding allowed types.&nbsp;</p>\n\n\n\n<p>I’ve been building a music game called <a href=\"https://broken.place\">Broken Place</a> that allows players to interact with real-time music in AR. The sound engine is running an open-source programming language called Pure Data (PD) that has a very specific file type that only it can read. In WordPress, I am managing post content in a custom post type called “songs” where players can upload their PD patch. Players simply log into the website as a contributor user role and upload their patch. The song post is queried from the native app and the patch is loaded.&nbsp;</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/broken_place_ar_screenshot.jpg?w=627&ssl=1\" alt=\"An Augmented reality synthesizer on a beach\" /></div>\n\n\n\n<p>The content submission options open the potential of allowing users to design their own layouts for music interfaces. Imagine in the graphic below, that each of the 3D knobs pictured were associated with a Gutenberg block called “Knob” and each of those knobs have an attribute associated with the sound message being sent to the audio engine. Content creators could determine how the sound messages are mapped in a grid using the column block. When you nest blocks within a column block, the REST response also nests the objects as children of the block and logic can be applied using the JSON structure.</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/broken_place_vr.jpg?w=627&ssl=1\" alt=\"A synthesizer interface in VR\" /></div>\n\n\n\n<h2><strong>Narrative Design Potential</strong></h2>\n\n\n\n<p>In post data, we are telling stories; some informational, some personal, but they serve as thought capsules. I dream of a future where posts are much more than just text and images on a screen. Spatializing content provides amazing opportunities for narrative design. I’ve seen this potential represented in the <a href=\"https://wptavern.com/wordpress-amp-plugin-version-1-2-introduces-gutenberg-powered-amp-stories-editor\">AMP Stories</a> and hope that structure could help inspire stories told within 3D physical spaces.&nbsp;</p>\n\n\n\n<div class=\"wp-block-image\"><img src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/06/AMP-stories-editor.png?ssl=1\" alt=\"image of AMP Stories block\" /></div>\n\n\n\n<p>Imagine the same post structure of AMP stories, but for 3D spaces that you can drop in your home or office. <a href=\"https://hubs.mozilla.com/\">Mozilla Hubs</a> is leading the charge in collaborative XR spaces open to all devices and I see interesting potential in combining a WordPress narrative design for Mozilla Hubs to allow shared storytelling experiences.&nbsp;</p>\n\n\n\n<p>I’m excited to continue exploring new ways of using headless WordPress to power XR experiences and help usher in an entirely new era in how we interact with and create digital content.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Oct 2019 13:00:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Anthony Burchell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Curated List of Featured Themes Coming to the Theme Directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94278\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/curated-list-of-featured-themes-coming-to-the-theme-directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6712:\"<p>Themes are the face of WordPress.</p>\n\n\n\n<p>Like it or not, the average user is more interested in what their site looks like when they first begin using the platform than what the thousands upon thousands of plugins can do for them.  Perhaps that&#8217;s unfair to plugin developers &#8212; there are more exciting things happening in the plugin world right now &#8212; but it is what it is.  Themes are visual, and they are what sell the platform to people who just want a site that looks good.</p>\n\n\n\n<p>While WordPress is massive, I can&#8217;t help but think that it is losing out on more users because such users are not always presented with solid options for their site&#8217;s design out of the gate.</p>\n\n\n\n<p>Most of the default Twenty* themes are good introduction themes for first-time users, but they are not to everyone&#8217;s tastes.</p>\n\n\n\n<p>I&#8217;ve worked with numerous users who were setting up their first WordPress site over the years.  Today, many similar people use a pre-installed script to launch WordPress from their web host.  Much of the initial work is done for them.  Often, they are unfamiliar with the WordPress community and what is available out there.  They don&#8217;t know how to find, buy, and install a theme from a reputable commercial theme business.</p>\n\n\n\n<p>What they do is head over to the add-new theme page in their WordPress admin, and they are presented with the <a href=\"https://wordpress.org/themes/browse/featured/\">&#8220;Featured&#8221; themes list</a>.</p>\n\n\n\n<div class=\"wp-block-image\"><img />Featured themes list in the WordPress admin.</div>\n\n\n\n<p>Sometimes a user gets lucky.  Other times it is a crapshoot.</p>\n\n\n\n<p>For several years now, the official WordPress theme directory has shown a random list of themes from the 7,000 or so themes available.</p>\n\n\n\n<p>While themes in the directory undergo a strict code review, there is no quality control on design.  That is a good thing because it allows designers at any level to contribute to the platform.  Open source communities should always have an open contribution process, and themes are one area that many developers get started with WordPress.</p>\n\n\n\n<p>However, the term &#8220;featured&#8221; implies that there is something particularly special about those themes.  They should be distinctive in some way.  They should be a cut above the rest.  That&#8217;s not what we have today, and it&#8217;s not what has been presented to users for the last half decade.</p>\n\n\n\n<p>This is a huge missed opportunity.</p>\n\n\n\n<p>Today, web hosts have started taking over this role.  Whether it is <a href=\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\">GoDaddy&#8217;s onboarding process</a> with their custom Go theme or WP Engine with the Genesis framework, hosts are doing the job that WordPress.org couldn&#8217;t manage to get together.</p>\n\n\n\n<h2>How Featured Themes Became Random</h2>\n\n\n\n<p>In the 2013-2014 era, the WordPress theme review team (TRT) was trying to find a way to get more people to contribute to the review process.  By that time, themes had become big business and more theme authors were submitting themes to the directory.  The team implemented a program that allowed the top reviewers each month an opportunity to pick the featured themes.</p>\n\n\n\n<p>The program&#8217;s original intention was for reviewers to select a theme they liked during reviews.  <em>The best-laid plans…</em></p>\n\n\n\n<p>The problem was that nearly all of the top reviewers were theme authors.  Their incentive for doing reviews was to get their themes featured.  Big theme businesses stood the most to gain.  They could put multiple reviewers to work who would knock out review after review.</p>\n\n\n\n<p>It wasn&#8217;t a level playing field.  Even if it had been, the featured themes list was being taken over by business interests via a pay-to-play system.  Those with the most resources would always come out on top.</p>\n\n\n\n<p>Theme companies featured on WordPress.org were already raking in cash at that point.  Zerif Lite, a theme in the popular list just two years later in 2016, <a href=\"https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue\">reported north of $100 thousand per month</a> from upsells.  Even at one-tenth of that number, it is enough incentive for any businesses to play the system to their advantage.</p>\n\n\n\n<p>In April 2014, the <a href=\"https://make.wordpress.org/themes/2014/04/18/theme-review-incentive-program/\">program was shut down</a> because reviewers were choosing their own themes and repeatedly featuring the same themes.  The featured list then began showcasing a new set of random themes every day.</p>\n\n\n\n<p>Randomly-chosen featured themes levels the playing field for every theme author.  However, it doesn&#8217;t showcase the best that WordPress has to offer.</p>\n\n\n\n<h2>A Curated List of Themes Coming Soon</h2>\n\n\n\n<p>The TRT decided in their team meeting yesterday on a change in how featured themes are handled.  Denis Žoljom wrote in the <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">meeting notes</a> that the team would try a curated list for a few months to see how the WordPress community responds.</p>\n\n\n\n<p>The current plan is to hold a meeting every two or three weeks where people can recommend themes to be featured based on their design, code quality, and potentially other merits.  The team reps would pick from the recommendations.</p>\n\n\n\n<p>The reps are still deciding how to best handle any foreseeable issues before the new program begins.  The team was divided over whether there should be a curated list and what the criteria might be for such a list.  The biggest concern is over the potential for abuse and conflicts of interest.  These and other problems will be something the reps will need to figure out.</p>\n\n\n\n<p>The general consensus seems to be that featured themes would not have any upsells or other commercial aspects.  That could limit the pool of potential themes considerably because many theme authors have some sort of commercial interest in having their themes hosted in the official directory.</p>\n\n\n\n<p>I welcome the change from seeing random themes every day.  I want to see the diamonds in the rough that get buried beneath big business and themes that dominate the landscape in the separate <a href=\"https://wordpress.org/themes/browse/popular/\">popular list</a>.  I want to see theme authors who are building unique themes front and center.</p>\n\n\n\n<p>The big question is whether this change will help users find that perfect theme for their sites.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Oct 2019 18:30:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress.org blog: WordPress 5.3 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7425\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3740:\"<p>The second release candidate for WordPress 5.3 is now available!</p>\n\n\n\n<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>\n\n\n\n<p>There are two ways to test the WordPress 5.3 release candidate:</p>\n\n\n\n<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>\n\n\n\n<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first release candidate post</a>.</p>\n\n\n\n<p>Release Candidate 2 contains improvements to the new About page, and <a href=\"https://core.trac.wordpress.org/query?id=48381%2C48363%2C48022%2C48304%2C48379%2C48087%2C47699&milestone=5.3&group=component&col=id&col=summary&col=status&col=owner&col=type&col=priority&col=milestone&order=priority\">10 fixes</a> for the following bugs and regressions:</p>\n\n\n\n<ul><li>Three bugs contained in RC1 within the block editor have been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48381\">48381</a>).</li><li>A bug has been fixed where links within comments did not get the correct <code>rel</code> attribute (see #<a href=\"https://core.trac.wordpress.org/ticket/48022\">48022</a>).</li><li>The <code>scaled-</code> string has been added to file names when images are downsized if determined &#8220;BIG&#8221; (see #<a href=\"https://core.trac.wordpress.org/ticket/48304\">48304</a>).</li><li>The buttons group layout has been fixed in IE11 (see #<a href=\"https://core.trac.wordpress.org/ticket/48087\">48087</a>).</li><li>A bug with <code>boolean</code> <code>false</code> meta values in the REST API has been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48363\">48363</a>).</li><li>The error code encountered when the native PHP JSON extension is missing has been adjusted to be unique (see #<a href=\"https://core.trac.wordpress.org/ticket/47699\">47699</a>).</li><li>When uploading files, HTTP error code support has been expanded to include all 5xx errors (see #<a href=\"https://core.trac.wordpress.org/ticket/48379\">48379</a>).</li></ul>\n\n\n\n<h2>Plugin and Theme Developers</h2>\n\n\n\n<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>\n\n\n\n<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>\n\n\n\n<h2>How to Help</h2>\n\n\n\n<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n\n\n\n<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 20:08:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Gutenberg 6.7 Introduces Storybook and Gradient Backgrounds\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95081\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/gutenberg-6-7-introduces-storybook-and-gradient-backgrounds\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4533:\"<p>The Gutenberg team released version 6.7 of the Gutenberg plugin last week.  The <a href=\"https://make.wordpress.org/core/2019/10/16/whats-new-in-gutenberg-16-october/\">announcement post</a> listed a little over three dozen bug fixes and several enhancements to existing features.  The most notable features included in the update are Storybook support and gradient backgrounds for the button block.</p>\n\n\n\n<p>All of the bug fixes included in Gutenberg 6.7 were ported to the first <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">WordPress 5.3 release candidate</a>.  WordPress 5.3 is expected to be released on or around November 12.</p>\n\n\n\n<p>This release also includes updates for experimental features, which can be enabled via the &#8220;Experiments&#8221; screen under the &#8220;Gutenberg&#8221; admin menu. The experimental nav menu block received alignment fixes and now only shows nested menu items when the parent item is selected.</p>\n\n\n\n<h2>First Implementation of Gradient Backgrounds</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Adding a gradient to a button block.</div>\n\n\n\n<p>Version 6.7 introduces a new gradient background feature for the button block.  The long-term plan is to make gradient backgrounds available to other blocks.  The button block is a good testbed for the feature before moving forward with other blocks.</p>\n\n\n\n<p>The problem with introducing gradients is that the team didn&#8217;t go far enough with theme support early in the process.  This is par for the course with Gutenberg development.  New features are implemented without knowing exactly how themes fit into the picture.  It is only after the feature is implemented that theme support is patched on.  Often, this leads to theme authors scrambling to keep up.  It would be better for the feature and the theme support to be developed in tandem with feedback from more theme authors in the process.</p>\n\n\n\n<p>At this stage, gradients are useless in most theme designs, which have custom color schemes that are unlikely to match Gutenberg&#8217;s gradient colors.  At best, the gradients look OK with stock WordPress.  At worst, they&#8217;re garish and an assault on the eyeballs.  Starting with theme support would have at least offered theme authors a chance to make this a better experience for users.</p>\n\n\n\n<p>There is an open <a href=\"https://github.com/WordPress/gutenberg/pull/17841\">pull request on GitHub</a> to introduce theme support.  Theme authors may be able to add custom gradients by version 6.8.</p>\n\n\n\n<p>In the future, this should be a powerful feature that allows users via custom theme gradients to create some unique designs for their posts and pages.  For now, it is only in the &#8220;fun experiment&#8221; stage.</p>\n\n\n\n<h2>Storybook for Developers</h2>\n\n\n\n<div class=\"wp-block-image\"><img />Gutenberg button component stories.</div>\n\n\n\n<p>The Gutenberg development team introduced <a href=\"https://storybook.js.org\">Storybook</a> support for Gutenberg.  Developers can test Storybook support via the <a href=\"https://wordpress.github.io/gutenberg/design-system/components/\">Gutenberg Storybook page</a>.</p>\n\n\n\n<p>Storybook is a development and testing environment for user interfaces.  It allows developers to create, test, and showcase components in an isolated environment apart from the primary platform or application.  This essentially allows developers to build components without the dependencies of the platform before porting them over.  A story within the Storybook system represents the visual state of a component.  Storybooks are collections of stories.</p>\n\n\n\n<p>The Storybook support uses the <a href=\"https://github.com/storybookjs/storybook/tree/next/addons/knobs\">Knobs add-on</a>, which allows developers to edit props dynamically via the Storybook UI.  The <a href=\"https://wordpress.github.io/gutenberg/design-system/components/?path=/story/dashicon--default\">dashicons component</a> is a good place to test this out.  Currently, it accepts values for the icon name, color, and size.</p>\n\n\n\n<p>Marcus Kazmierczak, a principal engineer working on special projects at Automattic, wrote a tutorial and shared a YouTube video on how to <a href=\"https://mkaz.blog/code/coding-a-storybook-story/\">create a story for Gutenberg components</a>.  </p>\n\n\n\n<div class=\"wp-block-embed__wrapper\">\n\n</div>\n\n\n\n<p>For developers wanting to be involved, there are many <a href=\"https://github.com/WordPress/gutenberg/issues/17973\">components that still need a story</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 17:17:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Coming in WordPress 5.3: What is the PHP Spread Operator?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95062\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/coming-in-wordpress-5-3-what-is-the-php-spread-operator\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6962:\"<p>On October 9, Juliette Reinders Folmer announced on the core WordPress blog that <a href=\"https://make.wordpress.org/core/2019/10/09/wp-5-3-introducing-the-spread-operator/\">WordPress 5.3 will use the spread operator</a>.  The spread operator was one of the <a href=\"https://www.php.net/manual/en/migration56.new-features.php\">new features</a> made available in PHP 5.6, a version released in 2014.</p>\n\n\n\n<p>WordPress <a href=\"https://wptavern.com/wordpress-ends-support-for-php-5-2-5-5-bumps-minimum-required-php-version-to-5-6\">abandoned PHP 5.2 &#8211; 5.5</a> with the release of WordPress 5.2.  This means the core team can start taking advantage of relatively new features, or at least 5-year-old features.  For plugin and theme developers who maintain the same minimum version support as WordPress, they can also start exploring this feature.</p>\n\n\n\n<p>PHP 5.6 introduced two new methods of using the spread operator:</p>\n\n\n\n<ul><li>A Parameter in variadic functions.</li><li>Function argument unpacking of arrays and traversable objects.</li></ul>\n\n\n\n<p>This feature shouldn&#8217;t be confused with unpacking inside of arrays, which is only <a href=\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\">available in PHP 7.4</a>.</p>\n\n\n\n<p>The change in WordPress 5.3 is not expected to affect themes and plugins except in the rare case that a developer is overloading the <code>wpdb::prepare()</code> method.  Developers should <a href=\"https://make.wordpress.org/core/2019/10/09/wp-5-3-introducing-the-spread-operator/\">read the announcement post</a> to dive into what code has changed in core WordPress.</p>\n\n\n\n<p>Developers should check their plugins and themes with debugging enabled in a test environment to check for any notices.  There may be cases where the function signature doesn&#8217;t match.</p>\n\n\n\n<p>The spread operator is a tool, and like any tool, it should be used when it makes sense.  Because it is a language construct, it does offer speed improvements over traditional methods of using a PHP function.</p>\n\n\n\n<p>The remainder of this post will dive into the using the spread operator to help teach WordPress developers how it works.</p>\n\n\n\n<h2>Creating a Variadic Function with the Spread Operator</h2>\n\n\n\n<p>Variadic functions are PHP functions that accept a variable number of arguments passed in.  They have existed for years.  However, they can be confusing without solid inline documentation from the developer who wrote the code.  </p>\n\n\n\n<p>In the past, developers would need to use the <code>func_get_args()</code>, <code>func_get_arg()</code>, or <code>func_num_args()</code> functions to work with variadic functions.  In PHP 5.6, developers can use a parameter such as <code>...$var_name</code> to represent a variable number of parameters.</p>\n\n\n\n<p>Take a look at the following multiplication function. It will accept one, two, three, or even more numbers and multiply each.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\nfunction tavern_multiply( ...$numbers ) {\n\n    $total = 1;\n\n    foreach ( $numbers as $number ) {\n        $total = $total * intval( $number );\n    }\n\n    return $total;\n}\n</pre>\n\n\n<p>If we use that function as shown below, it will display <code>1024</code>:</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\necho tavern_multiply( 2, 4, 8, 16 );\n</pre>\n\n\n<p>This is simple to do with the spread operator.</p>\n\n\n\n<h2>Unpacking Arrays as Function Arguments</h2>\n\n\n\n<p>PHP 5.6 allows developers to unpack arrays and traversable objects as function arguments.  To explain how this works, look at the following multiplication function for multiplying three numbers together.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\nfunction tavern_multiply_three( $x, $y, $z ) {\n        return $x * $y * $z;\n}\n</pre>\n\n\n<p>Generally, you would need to manually pass the <code>$x</code>, <code>$y</code>, and <code>$z</code> parameters directly.  However, there are cases in real-world projects where the data (numbers in this case) would already exist within an array such as:</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\n$numbers = [ 3, 6, 9 ];\n</pre>\n\n\n<p>Prior to PHP 5.6, you would need to split that array and pass each value to the function as shown in the following snippet.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\necho tavern_multiply_three( $numbers[0], $numbers[1], $numbers[2] );\n</pre>\n\n\n<p>With PHP 5.6, you can simply pass in <code>...$numbers</code> like so:</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\necho tavern_multiply_three( ...$numbers );\n</pre>\n\n\n<p>Both methods work and will output <code>162</code>.  However, the second method is easier to read and is less prone to typos because it uses fewer characters.</p>\n\n\n\n<h2>Comparing Code Changes in WordPress</h2>\n\n\n\n<p>For a more practical example, let&#8217;s compare a real-world code change in WordPress and how using the spread operator improves the code over other methods.  We can do this by looking at the core <code>current_user_can()</code> function.</p>\n\n\n\n<p>First, see how the code is written in WordPress 5.2 and earlier. </p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\nfunction current_user_can( $capability ) {\n    $current_user = wp_get_current_user();\n\n    if ( empty( $current_user ) ) {\n        return false;\n    }\n\n    $args = array_slice( func_get_args(), 1 );\n    $args = array_merge( array( $capability ), $args );\n\n    return call_user_func_array( array( $current_user, \'has_cap\' ), $args );\n}\n</pre>\n\n\n<p>Without looking at the full function, most developers would assume that <code>$capability</code> is the only accepted parameter for this function.  However, the function accepts a variable number of parameters.  Previously, WordPress had to use <code>func_get_args()</code> to get all the parameters, slice the array, and merge everything back together.</p>\n\n\n\n<p>It is inelegant coding, but it got the job done for old versions of PHP.</p>\n\n\n\n<p>Now compare what the same function looks like in WordPress 5.3.  First, you can see the <code>...$args</code> parameter clearly in the function statement.  You can also see there is no need for the clever coding to pass along a variable number of arguments.</p>\n\n\n<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">\nfunction current_user_can( $capability, ...$args ) {\n    $current_user = wp_get_current_user();\n\n    if ( empty( $current_user ) ) {\n        return false;\n    }\n\n    return $current_user-&gt;has_cap( $capability, ...$args );\n}\n</pre>\n\n\n<p>The change in WordPress 5.3 is a massive improvement in readability in comparison to earlier versions.  It is nice to see these types of improvements to the core code.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 Oct 2019 16:43:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Product Reviews in the WordPress Ecosystem: Honesty and Genuine Experiences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94992\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/product-reviews-in-the-wordpress-ecosystem-honesty-and-genuine-experiences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8398:\"<p><em>I don&#8217;t write fluff pieces. I call &#8217;em like I see &#8217;em. If your project is a dumpster fire, I&#8217;m going to say it&#8217;s a dumpster fire.</em></p>\n\n\n\n<p>Whenever someone comes to me in hopes that I review their product, I give them some form of the preceding paragraph.  It doesn&#8217;t matter if it is a plugin, theme, web host, or some other product.  What matters is that I write my review with honesty and offer my genuine opinion about the thing they built.</p>\n\n\n\n<p>I rarely read most product reviews in the WordPress community anymore.  Far too often the reviewers are not offering their genuine experience with a product.  You get something like &#8220;XYZ is a multi-purpose theme that is built for…yadda, yadda, yadda…&#8221;  <em>Yawn</em>.  It reads as if publishers are trying to sell a product.  If you dig deep enough, you realize that is what many are doing (<em>hello, affiliate links</em>).</p>\n\n\n\n<p>I also have it on good authority (I&#8217;ve seen some of the email exchanges) that a lot of money exchanges hands behinds the scenes for reviews.  Most of the time, publishers are not writing a review of the product.  They are selling you their dreams of a continued working relationship with the product maker.</p>\n\n\n\n<p>There&#8217;s nothing wrong with affiliate links if a publisher loves a product.  There&#8217;s no issue with paid reviews if such reviews are honest experiences with the product.  There&#8217;s also no problem with writing a love letter to your favorite plugin and theme with no financial incentive.</p>\n\n\n\n<p>However, what I generally see are shallow reviews at best.  Many, dare I say most, reviews are not genuine.  They are certainly not real journalism.</p>\n\n\n\n<p>The best place to find genuine reviews are from the user ratings on WordPress.org, assuming the plugin or theme is available there.  Users tend to not hold back, particularly if their review is negative.</p>\n\n\n\n<p>It is tough as an artist (yes, I consider all programmers artists).  I&#8217;ve been on the receiving end of negative reviews of things I&#8217;ve built.  You learn to grow thick skin after a decade of putting your art out into the world.  </p>\n\n\n\n<p>When I was younger, I tended to be a bit hot-headed whenever I got a bad review for something I had built.  After pouring my heart and soul into a project, it cut deep to read a negative review.  I wasn&#8217;t always the most gracious receiver of such reviews.  There are responses I wish I could take back.  Looking at those times now, I wish I would have been more open to hearing what the reviewer was saying.  Even if I disagreed with every word, it did not mean that the person wasn&#8217;t providing me something of value with their review.  </p>\n\n\n\n<p>With age and I hope a little more wisdom, I usually give myself time to think about what someone is saying before I respond.  I allow my thoughts time to develop and mature.  Often, it turns out, critical reviews are far more helpful in making better art than all the five-star ratings in the world.</p>\n\n\n\n<p>When I took the writing position at WP Tavern, I wanted to bring a review format to the website that is missing within our community.  I wanted to do reviews based on my experience as both a user and a developer.  I admit that I was not prepared for a negative reaction to what was in part a negative review.  As always, I gave myself time to read and think over what some commenters were saying.  This article is my response.</p>\n\n\n\n<h2>Reviews Are About Personal Experience</h2>\n\n\n\n<p>One of the things I learned early on as a writer is to not second guess myself, especially when writing an opinion piece.  It is not good for one&#8217;s mental health.</p>\n\n\n\n<p>An opinion piece is about the moment.  It is raw.  It is passionate.</p>\n\n\n\n<p>Writers&#8217; opinions may change over time.  They are human and have the freedom to change their minds later.  However, an opinion-based story should reflect that single moment in time and what the author&#8217;s feelings are at that moment.</p>\n\n\n\n<p>There&#8217;s a common (and wholly incorrect) notion that journalism should be nothing more than facts, that subjectivity is not allowed.  Throughout the several hundred years that some form of journalism has existed, there has never existed a point where the whole of the field was objective.  Even in the early days of U.S. journalism, my country&#8217;s founders published articles in newspapers to sway public opinion on ratifying the U.S. Constitution.  </p>\n\n\n\n<p>Reporting, which is one form of journalism, does not represent the whole.  It is the most objective form of journalism in which the reporter simply tells the news to readers.  We certainly do plenty of that at the Tavern.  However, other forms like editorials, features, and reviews are as important.  These forms take a different approach.</p>\n\n\n\n<p>Reviews are the unwieldy beasts of journalism.  They are hard to tame.  They&#8217;re not always pretty.  However, they should always be true to their nature.  They can bring out angry hoards of fanboys down on the critic (ever read the comments of a critical review of an Apple product?).</p>\n\n\n\n<p>Honest reviews are about personal experience.  If a film critic dislikes the latest movie in the Marvel Cinematic Universe, it is that critic&#8217;s duty to write about their experience watching it.  The reviewer has an obligation to not huddle in fear of Iron Man fanatics who will inevitably send <em>ad hominem</em> attacks his way.  Holding back one&#8217;s opinion within a review is the ultimate sin of a critic.</p>\n\n\n\n<p>Like with any products or forms of art, WordPress plugins and themes are not immune to this same criticism.  Such criticism is even more important when the software costs money and potential buyers may be looking for genuine reviews.</p>\n\n\n\n<p>Disagreement with a review is OK.  Disagreements are more interesting than everyone nodding their heads in unison.  What a boring world it would be if we were all in agreement.</p>\n\n\n\n<p>However, I did want to address comments on my previous review about it being <em>unfair</em>, specifically the unfairness of my personal experience.  It&#8217;s that personal experience that makes a review genuine.  Not everyone&#8217;s experience will be the same.  One person&#8217;s one-star rating does not discount another&#8217;s five stars.  They are equally valid because they represent different experiences.</p>\n\n\n\n<h2>Developers Are Users Too</h2>\n\n\n\n<p>There&#8217;s a common idea in the WordPress community that developers are not users, that our experiences don&#8217;t count because our knowledge and skillsets are more advanced than the average.  At first glance, the argument makes some sense.  However, after giving it some serious thought, I reject the notion.</p>\n\n\n\n<p><em>Martin Scorsese can&#8217;t criticize films because he makes films.  There&#8217;s no way he can feel what the average person does at the cinema.</em></p>\n\n\n\n<p><em>Beyoncé can&#8217;t judge a music competition because she&#8217;s a singer.  She&#8217;s not listening with the ears of a normal human.</em></p>\n\n\n\n<p>Wait; that&#8217;s not right, is it?</p>\n\n\n\n<p>Why is it that developers&#8217; opinions are so easily discounted when they are critical of user experience?  I use WordPress, different themes, and various plugins every day.  I use those that make me happy or serve essential functions.  I don&#8217;t necessarily pick plugins out because I like their code.  I use them because I too am a user in every way that a non-developer is a user.  Having the ability to articulate the problems from a different viewpoint doesn&#8217;t change that.</p>\n\n\n\n<p>In many ways, developers can provide more useful software reviews than &#8220;average&#8221; users because we have some past experience solving the same problems.</p>\n\n\n\n<h2>Offering a Genuine Review</h2>\n\n\n\n<p>One thing you will always get from me is honesty.  When I review a WordPress-related product, you will always read about my personal experience.</p>\n\n\n\n<p>I was fully prepared to say that <em>the gloves are coming off</em>, but the gloves have always been off.  I will never hold back criticism.  I&#8217;m always ready to pile on the praise too.</p>\n\n\n\n<p>But, I won&#8217;t lie to you.</p>\n\n\n\n<p>Who&#8217;s ready to have their theme or plugin reviewed next?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 Oct 2019 16:42:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sat, 30 Nov 2019 12:15:08 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Sat, 30 Nov 2019 12:00:08 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911040210\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    266,
    '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1575159310',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    267,
    '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9',
    '1575116110',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    268,
    '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653',
    '1575159310',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    269,
    '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653',
    '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2019/11/wordpress-5-2-4-update/\'>WordPress 5.2.4 Update</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpup-to-hold-dosummitgood-online-event-for-giving-tuesday\'>WPTavern: WP&amp;UP to Hold #DoSummitGood Online Event for Giving Tuesday</a></li><li><a class=\'rsswidget\' href=\'https://ma.tt/2019/11/distributed-podcast-updates/\'>Matt: Distributed Podcast: Clark Valberg, Lydia X. Z. Brown, Stephen Wolfram, and the Grand Meetup</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-black-friday-sales-roundup\'>WPTavern: WordPress Black Friday Sales Roundup</a></li></ul></div>',
    'no'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (2, 3, '_wp_page_template', 'default');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (4, 5, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (5, 5, '_edit_lock', '1535222942:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (6, 7, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (7, 7, '_edit_lock', '1535222964:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (8, 3, '_edit_lock', '1535223067:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (12, 10, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (13, 10, '_edit_lock', '1535223087:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (18, 13, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (19, 13, '_edit_lock', '1575051523:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (22, 15, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (23, 15, '_edit_lock', '1575051562:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (26, 17, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (27, 17, '_edit_lock', '1575051596:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (30, 19, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (31, 19, '_edit_lock', '1575051874:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (32, 7, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (33, 7, '_wp_trash_meta_time', '1575051401');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (34, 7, '_wp_desired_post_slug', 'blog');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (35, 10, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (36, 10, '_wp_trash_meta_time', '1575051403');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (37, 10, '_wp_desired_post_slug', 'home');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (38, 5, '_wp_trash_meta_status', 'publish');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (39, 5, '_wp_trash_meta_time', '1575051406');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (40, 5, '_wp_desired_post_slug', 'kontakt');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (41, 3, '_wp_trash_meta_status', 'draft');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (42, 3, '_wp_trash_meta_time', '1575051407');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (
    43,
    3,
    '_wp_desired_post_slug',
    'polityka-prywatnosci'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    3,
    1,
    '2018-08-25 20:50:25',
    '2018-08-25 18:50:25',
    '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://localhost.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analiza statystyk</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>',
    'Polityka prywatności',
    '',
    'trash',
    'closed',
    'open',
    '',
    'polityka-prywatnosci__trashed',
    '',
    '',
    '2019-11-29 19:16:47',
    '2019-11-29 18:16:47',
    '',
    0,
    'http://localhost/?page_id=3',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    5,
    1,
    '2018-08-25 20:51:22',
    '2018-08-25 18:51:22',
    'Kontakt',
    'Kontakt',
    '',
    'trash',
    'closed',
    'closed',
    '',
    'kontakt__trashed',
    '',
    '',
    '2019-11-29 19:16:46',
    '2019-11-29 18:16:46',
    '',
    0,
    'http://localhost/?page_id=5',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    6,
    1,
    '2018-08-25 20:51:22',
    '2018-08-25 18:51:22',
    'Kontakt',
    'Kontakt',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '5-revision-v1',
    '',
    '',
    '2018-08-25 20:51:22',
    '2018-08-25 18:51:22',
    '',
    5,
    'http://localhost/2018/08/25/5-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    7,
    1,
    '2018-08-25 20:51:32',
    '2018-08-25 18:51:32',
    'Blog',
    'Blog',
    '',
    'trash',
    'closed',
    'closed',
    '',
    'blog__trashed',
    '',
    '',
    '2019-11-29 19:16:41',
    '2019-11-29 18:16:41',
    '',
    0,
    'http://localhost/?page_id=7',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    8,
    1,
    '2018-08-25 20:51:32',
    '2018-08-25 18:51:32',
    'Blog',
    'Blog',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '7-revision-v1',
    '',
    '',
    '2018-08-25 20:51:32',
    '2018-08-25 18:51:32',
    '',
    7,
    'http://localhost/2018/08/25/7-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    10,
    1,
    '2018-08-25 20:53:48',
    '2018-08-25 18:53:48',
    'Home Page',
    'Home',
    '',
    'trash',
    'closed',
    'closed',
    '',
    'home__trashed',
    '',
    '',
    '2019-11-29 19:16:43',
    '2019-11-29 18:16:43',
    '',
    0,
    'http://localhost/?page_id=10',
    0,
    'page',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    11,
    1,
    '2018-08-25 20:53:48',
    '2018-08-25 18:53:48',
    'Home Page',
    'Home',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '10-revision-v1',
    '',
    '',
    '2018-08-25 20:53:48',
    '2018-08-25 18:53:48',
    '',
    10,
    'http://localhost/2018/08/25/10-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    13,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'publish',
    'open',
    'open',
    '',
    'pierwszy',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    0,
    'http://localhost/?p=13',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    14,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    'Pierwszy',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '',
    13,
    'http://localhost/2018/08/26/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    15,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'publish',
    'open',
    'open',
    '',
    'drugi',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    0,
    'http://localhost/?p=15',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    16,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    'Drugi',
    'Drugi',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '',
    15,
    'http://localhost/2018/08/26/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    17,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'publish',
    'open',
    'open',
    '',
    'trzecie',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    0,
    'http://localhost/?p=17',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    18,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    'Trzecie',
    'Trzecie',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '',
    17,
    'http://localhost/2018/08/26/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    19,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'publish',
    'open',
    'open',
    '',
    'czwarte',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    0,
    'http://localhost/?p=19',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    20,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    'Czwarte',
    'Czwarte',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '',
    19,
    'http://localhost/2018/08/26/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    22,
    1,
    '2019-11-29 19:14:44',
    '0000-00-00 00:00:00',
    '',
    'Auto Draft',
    '',
    'auto-draft',
    'open',
    'open',
    '',
    '',
    '',
    '',
    '2019-11-29 19:14:44',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://localhost/?p=22',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    23,
    1,
    '2019-11-29 19:16:47',
    '2019-11-29 18:16:47',
    '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://localhost.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analiza statystyk</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>',
    'Polityka prywatności',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '3-revision-v1',
    '',
    '',
    '2019-11-29 19:16:47',
    '2019-11-29 18:16:47',
    '',
    3,
    'http://localhost/2019/11/29/3-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    24,
    1,
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '<p>first</p>\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    25,
    1,
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    26,
    1,
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    15,
    'http://localhost/bez-kategorii/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    27,
    1,
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    17,
    'http://localhost/bez-kategorii/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    28,
    1,
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\n\n</p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    29,
    1,
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-autosave-v1',
    '',
    '',
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '',
    19,
    'http://localhost/bez-kategorii/19-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    30,
    1,
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'Untitled Reusable Block',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'untitled-reusable-block',
    '',
    '',
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '',
    0,
    'http://localhost/bez-kategorii/untitled-reusable-block/',
    0,
    'wp_block',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    31,
    1,
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (13, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (15, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (17, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (19, 1, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (1, 1, 'category', '', 0, 4);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (1, 'Bez kategorii', 'bez-kategorii', 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (1, 1, 'nickname', 'test');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (2, 1, 'first_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (3, 1, 'last_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (4, 1, 'description', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (5, 1, 'rich_editing', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (6, 1, 'syntax_highlighting', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (7, 1, 'comment_shortcuts', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (8, 1, 'admin_color', 'fresh');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (9, 1, 'use_ssl', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (10, 1, 'show_admin_bar_front', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (11, 1, 'locale', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    12,
    1,
    'wp_capabilities',
    'a:1:{s:13:\"administrator\";b:1;}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (13, 1, 'wp_user_level', '10');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (14, 1, 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (15, 1, 'show_welcome_panel', '1');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    16,
    1,
    'session_tokens',
    'a:2:{s:64:\"3b3bab83b146bff2a3690c6dbcfe96ed52099c0fc6ee35d0cb2706fbd2a8a42f\";a:4:{s:10:\"expiration\";i:1575224083;s:2:\"ip\";s:12:\"192.168.96.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575051283;}s:64:\"040a106589c0351e4e4aa353ecf33087809488fdb4ab49c6525c83fbc94beffd\";a:4:{s:10:\"expiration\";i:1575288904;s:2:\"ip\";s:10:\"172.21.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575116104;}}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    17,
    1,
    'wp_dashboard_quick_press_last_post_id',
    '22'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    1,
    'community-events-location',
    'a:1:{s:2:\"ip\";s:10:\"172.21.0.0\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    19,
    1,
    'wp_user-settings',
    'unfold=1&mfold=o&libraryContent=browse&editor_expand=on&editor=html&imgsize=full'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (20, 1, 'wp_user-settings-time', '1575051279');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

INSERT INTO
  `wp_users` (
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
  )
VALUES
  (
    1,
    'test',
    '$P$B/nIptzjky0uL8dAEoktZY/GRIvkPc.',
    'test',
    'test@test.pl',
    '',
    '2018-08-25 18:50:25',
    '',
    0,
    'test'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

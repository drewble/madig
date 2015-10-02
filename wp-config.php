<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'madimcw');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', '127.0.0.1');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '>tJp>M@PV9I_#J`Gh:sRo2V@.7R&^NeWhIT-X?:QmS5bWiofjN!v$h|cSkam[9^B');
define('SECURE_AUTH_KEY',  '&NZ;m)_mx`kB[grx$K;.R /_/o54)8B/{{C.@kI#,ow0Acl1IMAw6xh9>lhfsJM)');
define('LOGGED_IN_KEY',    '`d4[HcNj_ *lD{xcs#RWkwLpwFyr[+UDy6~$X{+_E)L.&R#JIl}cnBU7%F@;mxaF');
define('NONCE_KEY',        'K<rD&b|/o14wDehQe<K89r|BOL^peENm4G(~gtq+sTCFheB{dXXbA,h8UAJPwtRo');
define('AUTH_SALT',        'ogEa;5Eo V{>o{gzpU Yu?v^#x,?:v/LWKGOvPEskqY~cS)VM$=&5!^(gc!LZ;mz');
define('SECURE_AUTH_SALT', '9NW|mV%wN[D}sUIL,)C|#gt%@K.-lGjg~2S<e$c<l+}=&DN[?91b4nex {mF)fZ_');
define('LOGGED_IN_SALT',   'BC`[+^yvd7nSHO%fTm7&.j4<2d3m8 E)B)CA1k[UNQi;A$4K0;}-Y368n=lnWt^e');
define('NONCE_SALT',       'T@q.y/=4rYpty}G{2}W3;emEmh>{E!Am,$#?Z3_0FmCLA>!v(CrbjtfTw9_Wvx|Q');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

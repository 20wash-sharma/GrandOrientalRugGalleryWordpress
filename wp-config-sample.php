<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'gorg' );

/** MySQL database username */
define( 'DB_USER', 'gorg' );

/** MySQL database password */
define( 'DB_PASSWORD', 'gorg' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '#t-7aC|T0r LdODhhNVM:wx=N+X- 0lR=VqQ$L#i>]8u<~P|U#EIRLgehvKqc?Je');
define('SECURE_AUTH_KEY',  'K7}21<B_l&A~DkPX |+lLVo+02<@E3x{6 Y/0l?hz_~3w6oxb4QlnkTd6ejF3C|t');
define('LOGGED_IN_KEY',    'EfWx$)|R BTvmS_@Rl+44>?Y5/:xtC%2kKxU-*oR;I%Ta/9xOIcX^zg_;mp|+^[!');
define('NONCE_KEY',        '|+C`/~b@+qo/qjNfsu}Nx{%gK*+6C4-5I8l2opD#_j{ux24W(oA^-ip 7f;q4i+N');
define('AUTH_SALT',        'jsEG|u-E)CFa)KCT~^}pVyJ5cfna.kAz<I]--wa:[Kl8~4ZU7=RiwXa:i^dW*0vW');
define('SECURE_AUTH_SALT', '^E#si7+ns4xWLSk2_WXv!aZdTx^x`f1XsbcH?AWu;Bru&/Mj-!S>HH$,l2j3$Gbu');
define('LOGGED_IN_SALT',   'J`U r?a(EqaFY= 1y+V)=-E_~X`q7fdX0pw+=!}8mlN4Obep}Y{lfkJ-0{Yy5m.B');
define('NONCE_SALT',       '2l9Ytv!S*QYay_=!s*`)<wJXy`VoU|.Ik u&8 v[,1~CS}b/NrtyV5L9JcT%=-fo');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'gorg_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG',false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

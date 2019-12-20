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
define( 'DB_NAME', 'gorg_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         ',cLZ&irtYcbA+q*W=_dY}+0`<vAT..P/bYhA8uH?k<#+1<m6` #I,.1ag[Cd@X9V' );
define( 'SECURE_AUTH_KEY',  ';]y|?i76M;=Z3H^E[h3_}f8aZV]N*p>SYW|s)SVVN@$at1+?ffcS?3Am+j+(yqYd' );
define( 'LOGGED_IN_KEY',    '<cPGq!_,6;uzgKJAV}y5!yN3yrq.)tQjx+w#gn&Fr h*0<z](>,z<U1|RZ10:AW7' );
define( 'NONCE_KEY',        '4*N=Vk`pbXZQ`/%GWi?)d%7f- [(dMkE%@f[am[+SZSVph~iDvk|d53bnA[~3#%.' );
define( 'AUTH_SALT',        'Lzz^:8vP_iq.M=Qm9a<IgHyH$p&ak_+7OKXr_{}DZE;~ 3<dQKzD1fL ^Ya*J?/D' );
define( 'SECURE_AUTH_SALT', '4h8q rwyciqlzkl)wCd)`d790t@`CBY(Q6-N@e@GV.ph~`]%IRcL1sxpv/?thJ[%' );
define( 'LOGGED_IN_SALT',   ';Wb{2Zyg 8t8,43aya-0;V/gA,J%2(|2`XfSDAlQB.~|#B_r7*,I75oV4$upN-ot' );
define( 'NONCE_SALT',       'pT}hdD6Wgf<H1S]7v]#<NtE7lPlG`R{+hh*F,RzlIpCv1b#L.d0$Mh*JX:y%lyh,' );

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

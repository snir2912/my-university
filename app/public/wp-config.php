<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'tg/2`/tn~h,{&fyJ_Ne99)@cxDA.S^Ea+g,|S&osNjRv^]:@[(+Y>b-fm#,w z6_' );
define( 'SECURE_AUTH_KEY',   '3vz,AB5<EGAs_v,]VR7UH21n*f5Ex+=Ncal##{~a7LIh$fq/Mzo?pSDTg8sfb{>(' );
define( 'LOGGED_IN_KEY',     'Olz+21]>]}U`5RYq1rR`F&@e19[ah&M8TG^zGb-|.D%[%&=bD+9G*z$-tx=*iZ!<' );
define( 'NONCE_KEY',         '48uR0c<hgA1Sg2oiSmgTzqN:xZN%BN0t]6JlCfe0qbYnXLKz+Sf44REO<KHhT<$ ' );
define( 'AUTH_SALT',         'n<+f<T/:;B.Eyvncd1R;}AQw|j<g0_$J_*Gvm_xC{-QtbSeE#b.`#hq#4RIZ))#^' );
define( 'SECURE_AUTH_SALT',  '3m.9w~k$EB9ACBcuyu6B..1:ET`)zVsF,K&2j1$Q{LC(4]u/v}le?cNZZ#gW]J-z' );
define( 'LOGGED_IN_SALT',    'TWpD(3r$ E7-(QBfn.G!V.|7M#dj,3h;uZPsbYUrh>8|ar^s^=3Qdg]QiG6l0;zr' );
define( 'NONCE_SALT',        'V~~{&mRJ5c7l4d%q#UXi)E7mA^kmhv;3loPF0B#OR3h/l9vcI#xXj5PtsUsE1*;.' );
define( 'WP_CACHE_KEY_SALT', '3pkr9I362OClS8l7^^f#+/C90Oa-+1wrO$X;([JOLpB]^]u~!]!v,,-#mea)(s$r' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

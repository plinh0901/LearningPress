<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'namlt' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'SN-zCXZ*@49:hso$Z.DOaw6.)RL,-Z@JcWY7-tpq(1+Q[FdvCm|aohZ%pC=]&>YP' );
define( 'SECURE_AUTH_KEY',  '(RJd<OgrYrZ|>G Vl^r&}^4+ =wXl8W<CI^@#om}Yq +i YQI<N-2CQBl^|8(&.3' );
define( 'LOGGED_IN_KEY',    'ZM#!/^?yDno:K]yv5h(,H5}ln7LuqScao^Ugly+k!k7Wk;idnV+g>^F29!w(XDp#' );
define( 'NONCE_KEY',        'VBT5i >*/D4y3c]? `E @7Jt^Y)LZ$ Y@VC(%<Wi%j$TKis}}[fit0;Cb*)Xg#Av' );
define( 'AUTH_SALT',        'YnNfsxI{`em$L]~prIDe(={yP5dr6WwREj}X;L$_-lW,[?2=Be2 h0CE!vGvxGC`' );
define( 'SECURE_AUTH_SALT', 'ut;5OxvC]@d6RLDvup)~rTnjR8cwtD8nFq5n6R,,55~9[8e~W:Ly+?T&F40[a3$n' );
define( 'LOGGED_IN_SALT',   'P6(Z4-CJQ@Ec;f|h}>cBw}EzukNOi*&{5 bDj-~4*sf4BoKsTsA>R]ICN4Pn:;~F' );
define( 'NONCE_SALT',       '{L0-V]Q9UJRqK]Y[&xV-|lG3dWS!{Lm(j;Q4C[(2)6yg6R=V6TFW;eh|J9te|SA}' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

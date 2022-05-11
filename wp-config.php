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
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dergolem' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

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
define( 'AUTH_KEY',         '(Ku;VyYYfHb3+2&R!~vpzgbk!_a$u[);hg;sk@2XPXx}uylUGk-RI5Ha4s2DAY}I' );
define( 'SECURE_AUTH_KEY',  '=M?nybMkNO_V,l$[AeRx!QoCQ}qi`/=O|2{4>9|TVYvAc(!79A6d/S{T#,UX#&JL' );
define( 'LOGGED_IN_KEY',    '4(D3B%9xX1=]Z8AJhl.l&lG[K%$8B=3})zIK`OLQ6)[ru%/PVI})Ol#r3WA=$~{`' );
define( 'NONCE_KEY',        '$Pit~j[]mc&Pd(6:?!IV0Amj9HoO]KPz_pd%ruMuOe1v9/X<N@R^gIFY$WJ%},0<' );
define( 'AUTH_SALT',        'nt^V>vvzZS/=|LhAX}f0dRZ[uw=k9FLdmv8.QPxz}}@gunL|k3>pXM.@jzcUGTEB' );
define( 'SECURE_AUTH_SALT', '.R>$>J5^)v?,Ab|pRTw]bp?%O gfY+n=MHel5g7>XzYEI:$5=i]vwh.?sX,#M,7j' );
define( 'LOGGED_IN_SALT',   'jl@7 v~iCI-x `0. GIDkI*+&k6yZ4i#4cR~+7A/*SSN4~>0_f,>.]qg;yg>sbpD' );
define( 'NONCE_SALT',       ')(6*$!#&^Ij#fZxbwzOsq^QM J8-o]wfN^5$ VZ`b%._f.XT29KaSze)*,Z-=[L%' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
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

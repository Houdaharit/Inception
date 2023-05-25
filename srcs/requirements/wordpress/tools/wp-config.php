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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'houdaharit' );

/** Database password */
define( 'DB_PASSWORD', 'secret' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

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
define('AUTH_KEY',         '8L?:p9hKSFfBgzBp#xIU;veo^<TgnK,$s`d7n#C?}-b1|+/C(iuNMYVIetA+/9fC');
define('SECURE_AUTH_KEY',  'kgM+{d&F tY@IP>o CjpRbZN&p)$KDV*2Fq9r_Se(u27)9~8#eWg^D~|%;-0XOzm');
define('LOGGED_IN_KEY',    '=]kjDy0uXyVAR1cz(wWxC&s|tlU7;6,g[o3+N*e8g>CtIC3u-q7Ils~/p$x,iv~}');
define('NONCE_KEY',        '@#2!|# qno(H!u0:RM9/JC4QI&ZwksV;-c+126O P`c^+T|)b4CW|Ib||s1C&-sf');
define('AUTH_SALT',        'Z]-=#5_;7r`y+5 xBOtjH9$P{,GjE10/,uC[JBS-pKY{6TB-|P,:#9{Z:qt(:F2?');
define('SECURE_AUTH_SALT', 'Z_(t`#|t(Y.2n` Llz^)PD!cerDqbN*fT66D+W ^!_!_IIB2bR_ambi-HqRx/qtl');
define('LOGGED_IN_SALT',   'j13|q)y!}HMorh5h81=Tk9}-$0U:Enn=L+;K2m&4<h_Xcs?BY0t),@Fjq-<6@H $');
define('NONCE_SALT',       '%Nus@?CvOi*T58fmY?{)r=nx-?`%O7=+:~(?+vQ;:ND*QGSn_ne%r=^r_S[N|8KM');

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */

define('WP_ALLOW_REPAIR', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

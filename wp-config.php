<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clefs secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur 
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C'est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d'installation. Vous n'avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'labuller');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données. 
  * N'y touchez que si vous savez ce que vous faites. 
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant 
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'QUP oA!hxl]Tb`<ekxz9.}E$t(|8.m#aDegbr^0=xkM.b4#@W/gm8k(EWZ+3IU^;');
define('SECURE_AUTH_KEY',  '?IfkNma/oR.8g=T*Vmn).[%,<c*4|`pmvIT-,:4SxMk,fw:J{@c9gjiBLuC/X(9F');
define('LOGGED_IN_KEY',    'MS|?IbdQ4o>:s_m1P5{hC](Epo-X* zhLg,SvEy 1f[a$4k7^9paQUI0pA_vGu6J');
define('NONCE_KEY',        'qH2T<T};$)?mmN[#75:71*.Q0`J@+r2!IJ8Nr&u#iqR(rPk%ez@3s5w]r{J(RiGs');
define('AUTH_SALT',        '|b{d~_#?t39Ii{M-u-p?3n#V)iLF[zZMC1/yp||?an97psdQ)[*RCf43RTsm.po1');
define('SECURE_AUTH_SALT', 'XbYrR7Jf;RiF652ca<R?$bu`w+zjTs>;2$_>L-zw#ahIli4:;qE[7Xs{)V|J1Tyo');
define('LOGGED_IN_SALT',   'w4ZQ%m%%Ve9}Y,a&+@#^VV3qG0-G`tybHUbs|^d~P8*X<vVNJ1m?+|spV*]+d23I');
define('NONCE_SALT',       ';Rh#AIEKyVQlmdbFji=q2M h?2qq!A~:*=RUi`;IW-I3W~iIf)lqYO#f,4ka`r8@');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique. 
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'wp_';

/**
 * Langue de localisation de WordPress, par défaut en Anglais.
 *
 * Modifiez cette valeur pour localiser WordPress. Un fichier MO correspondant
 * au langage choisi doit être installé dans le dossier wp-content/languages.
 * Par exemple, pour mettre en place une traduction française, mettez le fichier
 * fr_FR.mo dans wp-content/languages, et réglez l'option ci-dessous à "fr_FR".
 */
define('WPLANG', 'fr_FR');

/** 
 * Pour les développeurs : le mode deboguage de WordPress.
 * 
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de 
 * développement.
 */ 
define('WP_DEBUG', false); 

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
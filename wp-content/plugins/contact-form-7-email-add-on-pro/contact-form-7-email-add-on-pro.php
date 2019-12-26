<?php
/**
 * Plugin Name: Contact Form 7 Email Add On Pro
 * Plugin URI: https://wordpress.org/plugins/cf7-email-add-on/
 * Description: Contact Form 7 Email Add on plugin provides the responsive Email templates to admin and users.
 * Version: 1.4
 * Author: KrishaWeb
 * Author URI: https://www.krishaweb.com
 * Text Domain: cf7-pro-email-addon
 * Domain Path: /languages
 */

// If check abspath exists or not.
if ( ! defined( 'ABSPATH' ) ) exit;

define( 'CF7_PRO_PLUGIN_URL', plugin_dir_url( __FILE__ ) );

// Require plugin files.
require_once 'includes/class-shortcode-enabler.php';
require_once 'includes/class-cf7-email.php';

/**
 * Plugin activate hook.
 */
function cf7_email_add_on_activate() {
	// If check contact form 7 activate or not.
	if( ! has_action( 'wpcf7_init' ) ) {
		// Deactivate contact form 7 plguin.
		deactivate_plugins( plugin_basename( __FILE__ ) );
		// Display error message.
		wp_die( __( 'Please activate Contact Form 7.', 'cf7-pro-email-addon' ), 'Plugin dependency check',
			array(
				'back_link' => true
			)
		);
	}
}		
register_activation_hook( __FILE__, 'cf7_email_add_on_activate' );

/**
 * Plugin deactivate hook.
 */
function cf7_email_add_on_deactivate() {
	// Code here
	$cf7_pro = cf7_pro();
	$cf7_pro->__clear_history();
}
register_deactivation_hook( __FILE__, 'cf7_email_add_on_deactivate' );

function cf7_email_add_on_uninstall() {
	// Code here
	$cf7_pro = cf7_pro();
	$cf7_pro->__clear_history();
}
register_uninstall_hook( __FILE__, 'cf7_email_add_on_uninstall' );

/**
 * Loads a cf 7 email add on textdomain.
 */
function cf7_pro() {
	load_plugin_textdomain( 'cf7-pro-email-addon', false, basename( dirname( __FILE__ ) ) . '/languages' );
	// Load core class
	$CF7_PRO = CF7_PRO_Email_Add_on::_instance();
	return $CF7_PRO;
}
add_action( 'plugins_loaded', 'cf7_pro' );

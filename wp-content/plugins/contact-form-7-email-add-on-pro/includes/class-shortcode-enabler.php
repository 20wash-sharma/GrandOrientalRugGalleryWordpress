<?php
/**
 * Contact form 7 email addon shortcode enabler.
 *
 * @package WordPress | Contact Form 7
 * @subpackage Contact form 7 email add on.
 */

// If check class exists or not.
if ( ! class_exists( 'CF7_PRO_Email_Shortcode_Enabler' ) ) {
	/**
	 * Declare `CF7_PRO_Email_Shortcode_Enabler` class.
	 */
	class CF7_PRO_Email_Shortcode_Enabler {

		/**
		 * Additional shortcode.
		 *
		 * @var string
		 */
		private $cf7_additional_shortcode = array();

		/**
		 * Class construct.
		 */
		public function cf7_pro_email_shortcode_enable() {
			if ( isset( $this->options['cf7_additional_shortcode'] ) && ! empty( $this->options['cf7_additional_shortcode'] ) ) {
				$this->cf7_additional_shortcode = array_map( array( $this, 'cf7_pro_email_string_filter' ), explode( ', ', $this->options['cf7_additional_shortcode'] ) );
			}
			// Add do shortcode support.
			add_filter( 'wpcf7_form_elements', 'do_shortcode' );
			add_filter( 'wpcf7_collect_mail_tags', array( $this, 'cf7_pro_email_collect_mail_tags' ), 10, 3 );
		}

		/**
		 * CF7 collect tags.
		 *
		 * @param  array  $mailtags Form shortcodes.
		 * @param  array  $args     Tag arguments.
		 * @param  object $form     Form object.
		 * @return array            All shortcode.
		 */
		public function cf7_pro_email_collect_mail_tags( $mailtags, $args, $form ) {
			// If check doing wp_ajax request.
			if ( wp_doing_ajax() ) {
				if ( isset( $_REQUEST['action'] ) && 'cf7_pro_email_add_on_add_admin_template' === $_REQUEST['action'] ) {
					return $mailtags;
				}
			}
			// If check additional shortcode empty OR not.
			if ( ! empty( $this->cf7_additional_shortcode ) ) {
				$mailtags = array_merge( $mailtags, $this->cf7_additional_shortcode );
			}
			return $mailtags;
		}

		/**
		 * String filter.
		 *
		 * @param  string $string Array value.
		 * @return string Array value.
		 */
		public function cf7_pro_email_string_filter( $string ) {
			$string = str_replace( array( ',' ), array( '' ), $string );
			return $string;
		}
	}
}

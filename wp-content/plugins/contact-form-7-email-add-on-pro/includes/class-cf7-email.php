<?php
require_once 'class-setting-option.php';

// If check class_exists or not.
if ( ! class_exists( 'CF7_PRO_Email_Add_on' )  ) {

	class CF7_PRO_Email_Add_on extends CF7_PRO_Email_Setting_Option {

		/**
		 * Option
		 * 
		 * @var $option
		 */
		private $option;

		/**
		 * instance
		 *
		 * @var $instance
		 */
		private static $_instance = null;

		/**
		 * Default option
		 *
		 * @var $default_option array
		 */
		private $default_option = array(
			'cf7_logo' 				=>	'[plugin_url]admin/assets/images/default-logo.png',
			'cf7_phone' 			=>	'',
			'cf7_email'  			=>	'',
			'cf7_facebook' 		=>	'',
			'cf7_twitter' 		=>	'',
			'cf7_linkdin' 		=>  '',
			'cf7_instagram' 	=>  '',
			'cf7_pinterest' 	=>  ''
		);

		/**
		 * Class construct.
		 */
		public function __construct() {
			// Setting init
			$this->init();
			// Get setting options
			$options = get_option( '__cf7_email_add_on' );
			$this->option = wp_parse_args( $options, $this->default_option );
			$this->option['cf7_logo'] = ! empty( $this->option['cf7_logo'] ) ? $this->option['cf7_logo'] : '[plugin_url]admin/assets/images/default-logo.png';
			// End

			// If check current page.
			if ( ( ! isset( $_REQUEST['page'] ) ) || ( $_REQUEST['page'] != 'wpcf7' && $_REQUEST['page'] != 'wpcf7-new' ) ) return;
			// Add template using AJAX
			add_action('wp_ajax_cf7_pro_email_add_on_add_admin_template', array( $this, 'cf7_pro_email_add_on_add_admin_template' ) );
			add_action('wp_ajax_nopriv_cf7_pro_email_add_on_add_admin_template', array( $this, 'cf7_pro_email_add_on_add_admin_template' ) );
			// Contact form 7 editor filter
			add_filter( 'wpcf7_editor_panels', array( $this, 'cf7_pro_email_add_on_editor_panels' ) );
			// Admin enqueue script
			add_action('admin_enqueue_scripts', array($this,'cf7_pro_email_add_on_scripts_admin'));
			// Save contact form
			add_action( 'wpcf7_save_contact_form', array( $this, 'cf7_pro_email_add_on_save_contact_form' ) );
		}

		/**
		 * Standard singleton pattern.
		 * @return Returns the current plugin instance.
		 */
		public static function _instance() {
			if ( is_null( self::$_instance ) || ! ( self::$_instance instanceof self ) ) {
				self::$_instance = new self;
			}
			return self::$_instance;
		}

		/**
		 * Enqueue scripts.
		 */
		public function cf7_pro_email_add_on_scripts_admin() {
			// CSS
			wp_enqueue_style( 'cf7-email', plugin_dir_url( __FILE__ ) . '../admin/assets/css/style.css' );
			// JS
			wp_enqueue_script( 'jquery-ui-dialog' );
			wp_enqueue_style( 'wp-jquery-ui-dialog' );
			wp_enqueue_script( 'custom-js', plugin_dir_url( __FILE__ ) . '../admin/assets/js/custom.js' , array( 'jquery' ), '', true );
			// localize data using wp_localize_script
			wp_localize_script( 'custom-js', 'cf7ea_ajax_object',
				array( 
					'ajax_url' 	=> admin_url( 'admin-ajax.php' ),
					'nonce'			=> wp_create_nonce( 'cf7-email-add-on' )
				) 
			);
		}

		/**
		 * Contact form 7 editor panels.
		 *
		 * @param      array  $panels  The panels
		 *
		 * @return     array
		 */
		public function cf7_pro_email_add_on_editor_panels( $panels ) {
			$panels['cf7-email-add-on-html-template-panel'] = array(
				'title'		=> __( 'Email Template', 'cf7-pro-email-addon' ),
				'callback'	=> array( $this, 'cf7_pro_email_add_on_template_panel' ),
			);
			return $panels;
		}

		/**
		 * Template panel
		 *
		 * @param      WPCF7_ContactForm  $contactform  The contactform
		 */
		public function cf7_pro_email_add_on_template_panel( WPCF7_ContactForm $contactform ) {
			require plugin_dir_path( __FILE__ ) . '../admin/contact-form-7-email-add-on-templates.php';
		}

		/**
		 * Save contact form 7 
		 *
		 */
		public function cf7_pro_email_add_on_save_contact_form() {
			if ( isset( $_POST['post_ID'] ) && ( $_POST['cf7ea_admin_email'] || $_POST['cf7ea_thank_you_email'] ) ) {
				$contact_form_id = ( int ) $_POST['post_ID'];
				$cf7ea_admin_template_name = sanitize_text_field( $_POST['cf7ea_admin_email'] );
				$cf7ea_thank_you_template_name = sanitize_text_field( $_POST['cf7ea_thank_you_email'] );
				// Update contact form post meta
				update_post_meta( $contact_form_id, 'cf7ea_admin_template', $cf7ea_admin_template_name );
				update_post_meta( $contact_form_id, 'cf7ea_thank_you_template', $cf7ea_thank_you_template_name );
			}
		}

		/**
		 * Add email template using AJAX
		 */
		public function cf7_pro_email_add_on_add_admin_template() {
			// WP ajax check security nonce.
			check_ajax_referer( 'cf7-email-add-on', 'nonce' );
			$template_name = $_POST['template_name'];
			$template_type = $_POST['template_type'];
			$error_code = 404;
			if ( isset( $template_name ) && ! empty( $template_name ) ) {
				if ( $template_type == 'admin' ) {
					// Add dynamic fields
					$fields = $this->cf7_pro_email_add_on_create_dynamic_fields( $template_name );
					ob_start();
					include_once plugin_dir_path( __FILE__ ) . '../admin/email-templates/admin/' . $template_name . '.php';
					$template_data = str_replace( array( '[fields]', '[date_year]' ), array( $fields, date_i18n( 'Y' ) ), html_entity_decode( esc_html( ob_get_clean() ) ) );
				} else {
					ob_start();
					include_once plugin_dir_path( __FILE__ ) . '../admin/email-templates/user/' . $template_name . '.php';
					$user_name = $this->cf7_pro_get_name();
					$template_data = str_replace(
						array(
							'[date_year]',
							'[user-name]',
							'[blog_page]'
						),
						array(
							date_i18n( 'Y' ),
							$user_name,
							get_permalink( get_option( 'page_for_posts' ) )
						),
						html_entity_decode( esc_html( ob_get_clean() ) )
					);
				}

				if ( ! empty( $template_data ) ) {
					$msg = array(
						'result' 					=> 1,
						'template_type' 	=> $template_type,
						'message' 				=> str_replace( '[plugin_url]', CF7_PRO_PLUGIN_URL, $template_data )
					);
					$error_code = 200;
				} else {
					$msg = array(
						'result' 	=> 0,
						'message' => __( 'File Not Found', 'cf7-pro-email-addon' )
					);	
				}
			} else {
				$msg = array(
					'result' 	=> 0,
					'message' => __( 'error', 'cf7-pro-email-addon' )
				);
			}
			wp_send_json( $msg, $error_code );
			wp_die();
		}

		/**
		 * Get name
		 *
		 * @return     string
		 */
		private function cf7_pro_get_name() {
			$post = WPCF7_ContactForm::get_instance( $_REQUEST['post'] );
			$fields = ( array ) $post->scan_form_tags();
			$name = array();
			$count = 0;
			foreach ( $fields as $data ) {
				if ( $data->basetype == 'text' ) {
					$name[$count] = "[" . $data->name . "]";
				}
				$count++;
			}
			return isset( $name[0] ) ? $name[0] : '';
		}

		/**
		 * Create template fields
		 *
		 * @param      string  $template_name  Template Name
		 *
		 * @return     string  ( fields )
		 */
		private function cf7_pro_email_add_on_create_dynamic_fields( $template_name = '' ) {
			// Get template json file
			$prefix_html_json = file_get_contents( plugin_dir_path( __FILE__ ) . '../admin/email-templates/admin/prefix-html.json' );
			$prefix = json_decode( $prefix_html_json, true );

			$template_fields = '';
			$post = WPCF7_ContactForm::get_instance( $_REQUEST['post'] );
			$fields = $post->collect_mail_tags();
			// Get fields
			$count = 0;
			foreach ( $fields as $field ) {
				// scan form tags
				$scan_form_tags = $post->scan_form_tags();
				if ( isset( $scan_form_tags[$count] ) ) {
					$field_type = $scan_form_tags[$count];
					if ( $field_type->basetype == 'email' ) { // Email field.
						// Create label
						$label = ! empty( $field_type->raw_values[0] ) ? $field_type->raw_values[0] :  str_replace( array( '-', '_' ), array( ' ', ' ' ), $field );
						// Contact form 7 field
						$prefix_field = "[" . $field . "]";
						// Store template @$template_fields
						$template_fields .= str_replace( array( '[label]', '[value]' ), array( $label, $prefix_field ), $prefix[$template_name]['email'] );
					} else if ( $field_type->basetype == 'textarea' ) { // Textarea field.

						// Create label
						$label = ! empty( $field_type->raw_values[0] ) ? $field_type->raw_values[0] :  str_replace( array( '-', '_' ), array( ' ', ' ' ), $field );
						// Contact form 7 field
						$prefix_field = "[" . $field . "]";
						// Store template @$template_fields
						$template_fields .= str_replace( array( '[label]', '[value]' ), array( $label, $prefix_field ), $prefix[$template_name]['textarea'] );
					} else if ( $field_type->basetype == 'tel' ) { // Tel field.
						// Create label
						$label = ! empty( $field_type->raw_values[0] ) ? $field_type->raw_values[0] :  str_replace( array( '-', '_' ), array( ' ', ' ' ), $field );
						// Contact form 7 field
						$prefix_field = "[" . $field . "]";
						// Store template @$template_fields
						$template_fields .= str_replace( array( '[label]', '[value]' ), array( $label, $prefix_field ), $prefix[$template_name]['tel'] );
					} else { // Extra field.
						// Create label
						$label = ! empty( $field_type->raw_values[0] ) ? $field_type->raw_values[0] :  str_replace( array( '-', '_' ), array( ' ', ' ' ), $field );
						// Contact form 7 field
						$prefix_field = "[" . $field . "]";
						// Store template @$template_fields
						$template_fields .= str_replace( array( '[label]', '[value]' ), array( $label, $prefix_field ), $prefix[$template_name]['default'] );
					}
					$count++;
				}
			}
			// Return html
			return $template_fields;
		}

		/**
		 * Clear mail template
		 */
		public static function __clear_history() {
			$cf7_form = new WP_Query(
				array(
					'post_type' => 'wpcf7_contact_form',
					'posts_per_page' => -1,
					'meta_query' => array(
						'relation' => 'OR',
						array(
							'key' => 'cf7ea_admin_template',
							'compare' => '=',
						),
						array(
							'key' => 'cf7ea_thank_you_template',
							'compare' => '=',
						)
					)
				)
			);
			
			if ( $cf7_form->have_posts() ) {
				while ( $cf7_form->have_posts() ) {
					$cf7_form->the_post();
					$post_id = get_the_id();
					// Get post meta
					$mail_1 = get_post_meta( $post_id, '_mail', true );
					$mail_2 = get_post_meta( $post_id, '_mail_2', true );
					
					// Admin template
					if ( get_post_meta( $post_id, 'cf7ea_admin_template', true ) != '' ) {
						$mail_1['body'] = '';
						// Update post meta
						update_post_meta( $post_id, '_mail', $mail_1 );
					}
					// User template
					if ( get_post_meta( $post_id, 'cf7ea_thank_you_template', true ) != '' ) {
						$mail_2['body'] = '';
						// Update post meta
						update_post_meta( $post_id, '_mail_2', $mail_2 );
					}
					// Delete post meta
					delete_post_meta( $post_id, 'cf7ea_admin_template' );
					delete_post_meta( $post_id, 'cf7ea_thank_you_template' );
				}
			}
			wp_reset_postdata();
		}
	}
}

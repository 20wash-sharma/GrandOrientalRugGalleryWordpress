<?php
/**
 * Contact form 7 email addon shortcode enabler.
 *
 * @package WordPress | Contact Form 7
 * @subpackage Contact form 7 email add on.
 */

// If check class exists or not.
if ( ! class_exists( 'CF7_PRO_Email_Setting_Option' ) ) {
	
	// Class extend to CF7_PRO_Email_Add_on
	class CF7_PRO_Email_Setting_Option extends CF7_PRO_Email_Shortcode_Enabler {
		
		/**
		 * instance
		 *
		 * @var $instance
		 */
		private static $_instance = null;

		/**
		 * Global options.
		 *
		 * @var $options
		 */
		public $options;

		/**
		 * Setting group
		 *
		 * @var $option_group  string
		 */
		private $option_group = '__cf7_email_add_on';

		/**
		 * Option section
		 *
		 * @var $option_section string
		 */
		private $option_section = '__cf7_email_section';

		/**
		 * Option name
		 *
		 * @var $option_name string
		 */
		private $option_name = '__cf7_email_add_on';

		/**
		 * Setting fields
		 *
		 * @var $fields array
		 */
		private $fields = array(
			'cf7_logo'  => array(
				'title' => 'Logo URL',
				'desc'  => '',
				'type'  => 'url',
			),
			'cf7_phone' => array(
				'title' => 'Phone',
				'desc'  => 'Ex: +123456789 / +123 1234 123',
				'type'  => 'text',
			),
			'cf7_email' => array(
				'title' => 'Email',
				'desc'  => '',
				'type'  => 'email',
			),
			'cf7_facebook' => array(
				'title' => 'Facebook',
				'desc'  => '',
				'type'  => 'url',
			),
			'cf7_twitter' => array(
				'title'   => 'Twitter',
				'desc'    => '',
				'type'    => 'url',
			),
			'cf7_linkdin' => array(
				'title'   => 'Linkdin',
				'desc'    => '',
				'type'    => 'url',
			),
			'cf7_instagram' => array(
				'title' => 'Instagram',
				'desc'  => '',
				'type'  => 'url',
			),
			'cf7_pinterest' => array(
				'title' => 'Pinterest',
				'desc'  => '',
				'type'  => 'url',
			),
			'cf7_additional_shortcode' => array(
				'title' => 'Additional Shortcode',
				'desc'  => 'You can add multiple shortcodes using comma-separated.',
				'type'	=> 'text',
			),
		);
		
		/**
		 * Init function.
		 */
		public function init() {
			// Get options
			$this->options 	= array_filter( get_option( $this->option_name ) ? get_option( $this->option_name ) : array() );
			// Add admin menu.
			add_action( 'admin_menu', array( $this, 'register_settings' ) );
			// Add custom action.
			add_action( 'save_cf7_data', array( $this, '__save_cf7_data' ), 10, 3 );
			if ( isset( $_REQUEST['page'] ) && $_REQUEST['page'] == 'cf7-email-add-on' ) {
				// Admin enqueue script
				add_action( 'admin_enqueue_scripts', array( $this, 'cf7_option_enqueue_scripts' ) );
			}
			// Shortcode enabler.
			add_action( 'init', array( $this, 'cf7_pro_email_shortcode_enable' ) );
		}

		/**
		 * Enqueue option page scripts.
		 */
		public function cf7_option_enqueue_scripts() {
			global $shortcode_tags;
			// Jquery autocomplete.
			wp_enqueue_script( 'jquery-ui-autocomplete' );
			wp_enqueue_style( 'cf7-setting', plugin_dir_url( __FILE__ ) . '../admin/assets/css/options.css' );
			wp_enqueue_script( 'cf7-autocomplete', plugin_dir_url( __FILE__ ) . '../admin/assets/js/autocomplete.js', array( 'jquery', 'jquery-ui-autocomplete' ), '', true );
			// Localize data.
			wp_localize_script( 'cf7-autocomplete', 'CF7_Option', array(
				'source' => wp_json_encode( array_keys( $shortcode_tags ) ),
			) );
		}

		/**
		 * Option Page.
		 */
		public function register_settings() {
			$setting_name = __( 'Email Add on options', 'cf7-email-add-on' );
			// Add option page.
			add_submenu_page( 'wpcf7', $setting_name, $setting_name, 'edit_themes', 'cf7-email-add-on', array( $this, 'view_admin_settings' ) );
			// Register setting.
			register_setting( $this->option_group, $this->option_name, array( $this, 'sanitize_settings' ) );
			// Add setting section.
			add_settings_section( $this->option_section, '', '__return_false', $this->option_group );
			// Add field
			foreach ( $this->fields as $key => $field ) {
				add_settings_field(
					$key,
					__( $field['title'], 'cf7-pro-email-addon' ),
					array( $this, 'settings_field_input' ),
					$this->option_group,
					$this->option_section,
					array(
						'id' 	=> $key,
						'label_for' => $key,
						'desc' => $field['desc'],
						'type' => $field['type']
					)
				);
			}
		}

		/**
		 * escape value using sanitize_text_field
		 *
		 * @param      array  $args   The arguments
		 *
		 * @return     array  ( return post data )
		 */
		public function sanitize_settings( $args ) {
			return array_map( 'sanitize_text_field', $args );
		}

		/**
		 * Setting option input fields.
		 *
		 * @param array $args The arguments
		 */
		public function settings_field_input( $args ) {
			global $doing_option;
			$id 	= isset( $args['id'] ) ? $args['id'] : '';
			$type 	= isset( $args['type'] ) ? $args['type'] : '';
			$desc 	= isset( $args['desc'] ) ? $args['desc'] : '';
			$options = $this->options;
			$value = isset( $options[$id] ) && $doing_option == false ? $options[$id] : '';
			echo "<input id='$id' name='{$this->option_name}[{$id}]' size='40' type='{$type}' value='{$value}' />";
			if ( $desc ) {
				echo "<p class='description'>" . __( $desc, 'cf7-pro-email-addon' ) . "</div>";
			}
		}

		/**
		 * Main Settings panel
		 *
		 * @since 	1.0
		 */
		public function view_admin_settings() {
			global $doing_option; ?>
			<div class="wrap cf7-settings">
				<div id="icon-options-general" class="icon32"></div>
				<h2><?php echo esc_html( 'Email Add on options' ); ?></h2>
				<form action="options.php" method="post">
					<?php
					settings_errors();
					settings_fields( $this->option_group );
					do_settings_sections( $this->option_group );
					submit_button( __( 'Save', 'cf7-pro-email-addon' ) );
					?>
				</form>
			</div>
			<?php
		}
	}
}

<?php 
	if( isset( $_REQUEST['post'] ) ) {
		$contact_form_id = ( int ) $_REQUEST['post'];
		$chk_cf7ea_admin_template = get_post_meta( $contact_form_id, 'cf7ea_admin_template', true );
		$chk_cf7ea_thank_you_template =	get_post_meta( $contact_form_id, 'cf7ea_thank_you_template', true );
	}
?>
<div class="cf7ea-wrap">
	<div class="cf7ea-title">
		<h2><?php _e( 'Templates For User', 'cf7-pro-email-addon' ); ?></h2>
		<div class="collapse-template">
			<a href="<?php echo esc_url( 'https://www.krishaweb.com/email-templates/' ); ?>" target="blank" class="export"><?php _e( 'Export', 'cf7-pro-email-addon' ); ?></a>
			<a href="javascript:;"><?php _e( 'Expand', 'cf7-pro-email-addon' ); ?></a>
		</div>
	</div>
	<!-- template list start -->
	<div class="cf7ea-template-list thank_you_templates">
		<ul>
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'space' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/space-preview-user.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/space-preview-user.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="tyradio1" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="space" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'space' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="tyradio1"><?php _e( 'Space', 'cf7-pro-email-addon'); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon'); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'default' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/default-preview-user.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/default-preview-user.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="tyradio2" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="default" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'default' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="tyradio2"><?php _e( 'Default', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'typewriter' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/typewriter-preview-user.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/typewriter-preview-user.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="tyradio3" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="typewriter" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'typewriter' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="tyradio3"><?php _e( 'Typewriter', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->
		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'gradient' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="gradient" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="gradient" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'gradient' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="gradient"><?php _e( 'Gradient', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'subscribe-image' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/subscribe-image/user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/subscribe-image/user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="subscribe-image" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="subscribe-image" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'subscribe-image' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="subscribe-image"><?php _e( 'Subscribe Image', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'donate-image' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/donate/user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/donate/user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="donate-image" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="donate-image" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'donate-image' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="donate-image"><?php _e( 'Donate Image', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'meeting-with-action' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/meeting-with-action/user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/meeting-with-action/user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="meeting-with-action" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="meeting-with-action" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'meeting-with-action' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="meeting-with-action"><?php _e( 'Meeting With Action', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'donate-text' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/donate/donate-user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/donate/donate-user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="donate-text" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="donate-text" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'donate-text' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="donate-text"><?php _e( 'Donate Text', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'subscribe-icon' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/subscribe-icon/user-perview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/subscribe-icon/user-perview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="subscribe-icon" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="subscribe-icon" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'subscribe-icon' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="subscribe-icon"><?php _e( 'Subscribe Icon', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'meeting' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/meeting/user-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/meeting/user-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="meeting" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="meeting" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'meeting' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="meeting"><?php _e( 'Meeting', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'simple-interview' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/simple-interview.png">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/simple-interview.png">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="simple-interview" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="simple-interview" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'simple-interview' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="simple-interview"><?php _e( 'Simple Interview', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'interview-box' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/interview-box.png">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/interview-box.png">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="interview-box" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="interview-box" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'interview-box' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="interview-box"><?php _e( 'Interview Box', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'interview-icon' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/interview-icon.png">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/interview/interview-icon.png">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="interview-icon" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="interview-icon" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'interview-icon' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="interview-icon"><?php _e( 'Interview Icon', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'gradient-user' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient-user.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient-user.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="gradient-user" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="gradient-user" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'gradient-user' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="gradient-user"><?php _e( 'Gradient User', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		 	<!-- Template Start -->
			<li <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'purple-moon' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/purple-moon/purple-moon-user.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/purple-moon/purple-moon-user.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="purple-moon" name="cf7ea_thank_you_email" class="cf7ea_email_template custom-control-input" value="purple-moon" <?php if ( ! empty( $chk_cf7ea_thank_you_template ) && ( $chk_cf7ea_thank_you_template == 'purple-moon' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="purple-moon"><?php _e( 'Purple Moon', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
		 	<!-- Template End -->

		</ul>
	</div>
	<!-- template list end -->
	<div class="cf7ea-title">
		 <h2><?php _e( 'Templates For Admin', 'cf7-pro-email-addon' ); ?></h2>
		 <div class="collapse-template">
		 		<a href="<?php echo esc_url( 'https://www.krishaweb.com/email-templates/' ); ?>" target="blank" class="export"><?php _e( 'Export', 'cf7-pro-email-addon' ); ?></a>
		 	</div>
	</div>
	<!-- template list start -->
	<div class="cf7ea-template-list admin_templates">
		<ul>
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'space' ) ) : ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/space-preview-admin.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/space-preview-admin.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" name="cf7ea_admin_email" id="customRadio1"  class="cf7ea_email_template custom-control-input" value="space" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'space' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="customRadio1"><?php _e( 'Space', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#ffffff" data-color="#f18f4e"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'default' ) ) : ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/default-preview-admin.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/default-preview-admin.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio2" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="default" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'default' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="customRadio2"><?php _e( 'Default', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#000000" data-color="#000000"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'typewriter' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/typewriter-preview-admin.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/typewriter-preview-admin.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="customRadio3" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="typewriter" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'typewriter' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="customRadio3"><?php _e( 'Typewriter', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#000000" data-color="#000000"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'gradient' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/admin-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/admin-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="gradient01" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="gradient" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'gradient' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="gradient01"><?php _e( 'Gradient', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#444444" data-color="#444444" data-background="#efefef"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'icons' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/icons/admin-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/icons/admin-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="icons01" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="icons" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'icons' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="icons01"><?php _e( 'Icons', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#444444" data-color="#444444" data-background="#efefef"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'box-layout' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/box-layout-admin-preview.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/gradient/box-layout-admin-preview.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="box-layout" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="box-layout" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'box-layout' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="box-layout"><?php _e( 'Box Layout', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#444444" data-color="#444444" data-background="#efefef"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
			<!-- template start -->
			<li <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'purple-moon' ) ): ?> class="cf7ea-template-active" <?php endif; ?>>
				<div class="cf7ea-template-box">
					<div class="lightbox-gallery">
						<a href="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/purple-moon/purple-moon-admin.jpg">
							<img src="<?php echo plugin_dir_url( __FILE__ ); ?>assets/images/purple-moon/purple-moon-admin.jpg">
						</a>
					</div>
					<div class="cf7ea-template-name">
						<div class="custom-control custom-radio">
							<input type="radio" id="purple-moon-admin" name="cf7ea_admin_email" class="cf7ea_email_template custom-control-input" value="purple-moon" <?php if ( ! empty( $chk_cf7ea_admin_template ) && ( $chk_cf7ea_admin_template == 'purple-moon' ) ): ?> checked <?php endif; ?>>
							<label class="custom-control-label" for="purple-moon-admin"><?php _e( 'Purple Moon', 'cf7-pro-email-addon' ); ?></label>
						</div>
					</div>
					<div class="cf7ea-template-overlay">
						<a href="javascript:;" class="selecte_template" data-label="#444444" data-color="#444444" data-background="#efefef"><?php _e( 'Select Template', 'cf7-pro-email-addon' ); ?></a>
					</div>
				</div>
			</li>
			<!-- template end -->
		</ul>
	</div>
	<!-- template list end -->
	<div id="cf7-email-preview" style="display: none;">
		<img src="" alt="preview" width="auto" height="500px">
	</div>
	<?php require_once 'shortcode-list.php'; ?>
</div>

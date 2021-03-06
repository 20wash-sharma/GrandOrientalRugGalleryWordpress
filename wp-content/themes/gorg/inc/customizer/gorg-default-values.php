<?php
if(!function_exists('gorg_get_option_defaults_values')):
	/********************GORG DEFAULT OPTION VALUES ******************************************/
	function gorg_get_option_defaults_values() {
		global $gorg_default_values;
        $gorg_default_values = array(

            'gorg_reset_all' 				=> 0,
            /*header*/
            'white_logo' =>'',
            
            /* Slider Settings */
            'show_custom_pagination' =>0,
            'slider_posts'   =>5,
           //welcome
           'welcome_text_limit' =>600,
            //services
            'service_title' =>'',
            'service_count' =>6,
            'service_view_all' =>'',
            //homepage featured catlogue
            'catalogue_description_character' =>150,
            //member Section
            'members_title' => '',
            'show_member_section' => 1,
            'members_count' => 9,
            //featured business partners
            'show_business_partners'=>1,
            'featured_bp_title' =>'',
            'featured_bp_title_second' =>'',

            //slider Section
            'banner_picker' => 'banner-image',
            'slider_posts' => '',
            'slider_image_title' => '',
            'slider_image_description' => '',
            'upload_banner_image' => '',
            'single_btn1' => '',
            'single_link1' => '',
            //social icons
            'gorg_social_show'				=> 0,
            'gorg_social_facebook'			=> '',
            'gorg_social_twitter'				=> '',
            'gorg_social_linkedin'				=> '',
            'gorg_social_googleplus'			=> '',
            'gorg_social_instagram'			=> '',
            'gorg_social_youtube'				=> '',
            /*cta options*/
            'cta_title'                 =>'CTA Title Here',
            'cta_content'               =>'CTA Content Here',
            'cta_btn_text'              =>'Contact Us',
            'cta_btn_link'              =>'#',
            /*Contact Us */
			'gorg_contact_address' 		=> '',
			'gorg_contact_phone' 			=> '',
			'gorg_contact_skype' 			=> '',
            'gorg_contact_email' 			=> '',
            
			

            //footer options
            'show_developer_footer'                 =>1,
            'footer_text'                           =>'',
			'footer_copyright'						=> esc_html__('Copyright','gorg'),
			'developed_by_text'						=> esc_html__('Roshan Banstola','gorg'),
			'developed_by_link'						=> esc_url('https://rpbanstola.com.np'),


            //contact section
            'contact_title' => '',
            'contact_address' => '',
            'contact_fphone' => '',
            'contact_work' => '',
            'contact_email' => '',
            'contact_map_iframe' =>'',
            //product page
            'products_per_page' =>12,

			);
		return apply_filters( 'gorg_get_option_defaults_values', $gorg_default_values );
	}
endif;
?>
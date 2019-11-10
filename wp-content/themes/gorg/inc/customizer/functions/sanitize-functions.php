<?php
/**
 * Theme Customizer Functions
 *
 * @package Roshan Banstola
 * @subpackage Gorg
 * @since Gorg 1.0
 */
/********************* Gorg CUSTOMIZER SANITIZE FUNCTIONS *******************************/
function gorg_checkbox_integer( $input ) {
	return ( ( isset( $input ) && true == $input ) ? true : false );
}

function gorg_sanitize_select( $input, $setting ) {

	// Ensure input is a slug.
	$input = sanitize_key( $input );

	// Get list of choices from the control associated with the setting.
	$choices = $setting->manager->get_control( $setting->id )->choices;

	// If the input is a valid key, return it; otherwise, return the default.
	return ( array_key_exists( $input, $choices ) ? $input : $setting->default );

}
function gorg_numeric_value( $input ) {
	if(is_numeric($input)){
	return $input;
	}
}
function gorg_sanitize_url( $url ) {
    return esc_url_raw( $url );

}
function gorg_sanitize_custom_css( $input ) {
	if ( $input != '' ) {
		$input = str_replace( '<=', '&lt;=', $input );
		$input = wp_kses_split( $input, array(), array() );
		$input = str_replace( '&gt;', '>', $input );
		$input = strip_tags( $input );
		return $input;
	}
	else {
		return '';
	}
}
function gorg_sanitize_page( $input ) {
	if(  get_post( $input ) ){
		return $input;
	}
	else {
		return '';
	}
}
function gorg_reset_alls( $input ) {
	if ( $input == 1 ) {
		delete_option( 'gorg_theme_options');
        $input=0;
        return $input;
	}
	else {
		return '';
	}
}

if(!function_exists('gorg_sanitize_checkbox')):
    function gorg_sanitize_checkbox( $input ) {
        return $input;
    }
endif;

if(!function_exists('gorg_sanitize_rgba')):
    function gorg_sanitize_rgba( $color ) {
        if ( empty( $color ) || is_array( $color ) )
            return 'rgba(0,0,0,0)';

        // If string does not start with 'rgba', then treat as hex
        // sanitize the hex color and finally convert hex to rgba
        if ( false === strpos( $color, 'rgba' ) ) {
            return sanitize_hex_color( $color );
        }

        // By now we know the string is formatted as an rgba color so we need to further sanitize it.
        $color = str_replace( ' ', '', $color );
        sscanf( $color, 'rgba(%d,%d,%d,%f)', $red, $green, $blue, $alpha );
        return 'rgba('.$red.','.$green.','.$blue.','.$alpha.')';
    }
endif;

if(!function_exists('gorg_sanitize_choices')):
    function gorg_sanitize_choices( $input, $setting ) {
        global $wp_customize;

        $control = $wp_customize->get_control( $setting->id );

        if ( array_key_exists( $input, $control->choices ) ) {
            return $input;
        } else {
            return $setting->default;
        }
    }
endif;
if(!function_exists('gorg_sanitize_image')):
    /**
     * Sanitize image URL
     *
     * @copyright Copyright (c) 2015, WordPress Theme Review Team
     */
    function gorg_sanitize_image( $image, $setting ) {
        /*
         * Array of valid image file types.
         *
         * The array includes image mime types that are included in wp_get_mime_types()
         */
        $mimes = array(
            'jpg|jpeg|jpe' => 'image/jpeg',
            'gif'          => 'image/gif',
            'png'          => 'image/png',
            'bmp'          => 'image/bmp',
            'tif|tiff'     => 'image/tiff',
            'ico'          => 'image/x-icon',
        );
        // Return an array with file extension and mime_type.
        $file = wp_check_filetype( $image, $mimes );
        // If $image has a valid mime_type, return it; otherwise, return the default.
        return ( $file['ext'] ? $image : $setting->default );
    }
endif;

<?php

/**
 * Registers the `home_slider` post type.
 */
function home_slider_init() {
	register_post_type( 'home_slider', array(
		'labels'                => array(
			'name'                  => __( 'Sliders', 'gorg' ),
			'singular_name'         => __( 'Slider', 'gorg' ),
			'all_items'             => __( 'All Sliders', 'gorg' ),
			'archives'              => __( 'Slider Archives', 'gorg' ),
			'attributes'            => __( 'Slider Attributes', 'gorg' ),
			'insert_into_item'      => __( 'Insert into Slider', 'gorg' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Slider', 'gorg' ),
			'featured_image'        => _x( 'Featured Image', 'home_slider', 'gorg' ),
			'set_featured_image'    => _x( 'Set featured image', 'home_slider', 'gorg' ),
			'remove_featured_image' => _x( 'Remove featured image', 'home_slider', 'gorg' ),
			'use_featured_image'    => _x( 'Use as featured image', 'home_slider', 'gorg' ),
			'filter_items_list'     => __( 'Filter Sliders list', 'gorg' ),
			'items_list_navigation' => __( 'Sliders list navigation', 'gorg' ),
			'items_list'            => __( 'Sliders list', 'gorg' ),
			'new_item'              => __( 'New Slider', 'gorg' ),
			'add_new'               => __( 'Add New', 'gorg' ),
			'add_new_item'          => __( 'Add New Slider', 'gorg' ),
			'edit_item'             => __( 'Edit Slider', 'gorg' ),
			'view_item'             => __( 'View Slider', 'gorg' ),
			'view_items'            => __( 'View Sliders', 'gorg' ),
			'search_items'          => __( 'Search Sliders', 'gorg' ),
			'not_found'             => __( 'No Sliders found', 'gorg' ),
			'not_found_in_trash'    => __( 'No Sliders found in trash', 'gorg' ),
			'parent_item_colon'     => __( 'Parent Slider:', 'gorg' ),
			'menu_name'             => __( 'Sliders', 'gorg' ),
		),
		'public'                => true,
		'publicly_queryable' => true,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => false,
		'supports'              => array( 'title','thumbnail' ),
		'has_archive'           => false,
		'rewrite'               => false,
		'query_var'             => true,
		'exclude_from_search'	=> true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-slides',
		'show_in_rest'          => true,
		'rest_base'             => 'home_slider',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'home_slider_init' );

/**
 * Sets the post updated messages for the `home_slider` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `home_slider` post type.
 */
function home_slider_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['home_slider'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Slider updated. <a target="_blank" href="%s">View Slider</a>', 'gorg' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'gorg' ),
		3  => __( 'Custom field deleted.', 'gorg' ),
		4  => __( 'Slider updated.', 'gorg' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Slider restored to revision from %s', 'gorg' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Slider published. <a href="%s">View Slider</a>', 'gorg' ), esc_url( $permalink ) ),
		7  => __( 'Slider saved.', 'gorg' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Slider submitted. <a target="_blank" href="%s">Preview Slider</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Slider scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Slider</a>', 'gorg' ),
		date_i18n( __( 'M j, Y @ G:i', 'gorg' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Slider draft updated. <a target="_blank" href="%s">Preview Slider</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'home_slider_updated_messages' );

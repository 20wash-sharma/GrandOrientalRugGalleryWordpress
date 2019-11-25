<?php

/**
 * Registers the `location` post type.
 */
function location_init() {
	register_post_type( 'location', array(
		'labels'                => array(
			'name'                  => __( 'Locations', 'gorg' ),
			'singular_name'         => __( 'Location', 'gorg' ),
			'all_items'             => __( 'All Locations', 'gorg' ),
			'archives'              => __( 'Location Archives', 'gorg' ),
			'attributes'            => __( 'Location Attributes', 'gorg' ),
			'insert_into_item'      => __( 'Insert into Location', 'gorg' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Location', 'gorg' ),
			'featured_image'        => _x( 'Featured Image', 'location', 'gorg' ),
			'set_featured_image'    => _x( 'Set featured image', 'location', 'gorg' ),
			'remove_featured_image' => _x( 'Remove featured image', 'location', 'gorg' ),
			'use_featured_image'    => _x( 'Use as featured image', 'location', 'gorg' ),
			'filter_items_list'     => __( 'Filter Locations list', 'gorg' ),
			'items_list_navigation' => __( 'Locations list navigation', 'gorg' ),
			'items_list'            => __( 'Locations list', 'gorg' ),
			'new_item'              => __( 'New Location', 'gorg' ),
			'add_new'               => __( 'Add New', 'gorg' ),
			'add_new_item'          => __( 'Add New Location', 'gorg' ),
			'edit_item'             => __( 'Edit Location', 'gorg' ),
			'view_item'             => __( 'View Location', 'gorg' ),
			'view_items'            => __( 'View Locations', 'gorg' ),
			'search_items'          => __( 'Search Locations', 'gorg' ),
			'not_found'             => __( 'No Locations found', 'gorg' ),
			'not_found_in_trash'    => __( 'No Locations found in trash', 'gorg' ),
			'parent_item_colon'     => __( 'Parent Location:', 'gorg' ),
			'menu_name'             => __( 'Locations', 'gorg' ),
		),
		'public'                => true,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		'supports'              => array( 'title', 'editor' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-location-alt',
		'show_in_rest'          => true,
		'rest_base'             => 'location',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'location_init' );

/**
 * Sets the post updated messages for the `location` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `location` post type.
 */
function location_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['location'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Location updated. <a target="_blank" href="%s">View Location</a>', 'gorg' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'gorg' ),
		3  => __( 'Custom field deleted.', 'gorg' ),
		4  => __( 'Location updated.', 'gorg' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Location restored to revision from %s', 'gorg' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Location published. <a href="%s">View Location</a>', 'gorg' ), esc_url( $permalink ) ),
		7  => __( 'Location saved.', 'gorg' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Location submitted. <a target="_blank" href="%s">Preview Location</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Location scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Location</a>', 'gorg' ),
		date_i18n( __( 'M j, Y @ G:i', 'gorg' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Location draft updated. <a target="_blank" href="%s">Preview Location</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'location_updated_messages' );

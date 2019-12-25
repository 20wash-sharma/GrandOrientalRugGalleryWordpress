<?php

/**
 * Registers the `service_areas` post type.
 */
function service_areas_init() {
	register_post_type( 'service-areas', array(
		'labels'                => array(
			'name'                  => pll__( 'Service Areas', 'gorg' ),
			'singular_name'         => __( 'Service Area', 'gorg' ),
			'all_items'             => __( 'All Service Areas', 'gorg' ),
			'archives'              => __( 'Service Area Archives', 'gorg' ),
			'attributes'            => __( 'Service Area Attributes', 'gorg' ),
			'insert_into_item'      => __( 'Insert into Service Area', 'gorg' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Service Area', 'gorg' ),
			'featured_image'        => _x( 'Featured Image', 'service-areas', 'gorg' ),
			'set_featured_image'    => _x( 'Set featured image', 'service-areas', 'gorg' ),
			'remove_featured_image' => _x( 'Remove featured image', 'service-areas', 'gorg' ),
			'use_featured_image'    => _x( 'Use as featured image', 'service-areas', 'gorg' ),
			'filter_items_list'     => __( 'Filter Service Areas list', 'gorg' ),
			'items_list_navigation' => __( 'Service Areas list navigation', 'gorg' ),
			'items_list'            => __( 'Service Areas list', 'gorg' ),
			'new_item'              => __( 'New Service Area', 'gorg' ),
			'add_new'               => __( 'Add New', 'gorg' ),
			'add_new_item'          => __( 'Add New Service Area', 'gorg' ),
			'edit_item'             => __( 'Edit Service Area', 'gorg' ),
			'view_item'             => __( 'View Service Area', 'gorg' ),
			'view_items'            => __( 'View Service Areas', 'gorg' ),
			'search_items'          => __( 'Search Service Areas', 'gorg' ),
			'not_found'             => __( 'No Service Areas found', 'gorg' ),
			'not_found_in_trash'    => __( 'No Service Areas found in trash', 'gorg' ),
			'parent_item_colon'     => __( 'Parent Service Area:', 'gorg' ),
			'menu_name'             => __( 'Service Areas', 'gorg' ),
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
		'rest_base'             => 'service-areas',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'service_areas_init' );

/**
 * Sets the post updated messages for the `service_areas` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `service_areas` post type.
 */
function service_areas_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['service-areas'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Service Area updated. <a target="_blank" href="%s">View Service Area</a>', 'gorg' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'gorg' ),
		3  => __( 'Custom field deleted.', 'gorg' ),
		4  => __( 'Service Area updated.', 'gorg' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Service Area restored to revision from %s', 'gorg' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Service Area published. <a href="%s">View Service Area</a>', 'gorg' ), esc_url( $permalink ) ),
		7  => __( 'Service Area saved.', 'gorg' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Service Area submitted. <a target="_blank" href="%s">Preview Service Area</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Service Area scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Service Area</a>', 'gorg' ),
		date_i18n( __( 'M j, Y @ G:i', 'gorg' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Service Area draft updated. <a target="_blank" href="%s">Preview Service Area</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'service_areas_updated_messages' );

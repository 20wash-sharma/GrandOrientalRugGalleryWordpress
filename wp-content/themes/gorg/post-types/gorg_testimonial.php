<?php

/**
 * Registers the `gorg_testimonial` post type.
 */
function gorg_testimonial_init() {
	register_post_type( 'gorg_testimonial', array(
		'labels'                => array(
			'name'                  => __( 'Testimonials', 'gorg' ),
			'singular_name'         => __( 'Testimonial', 'gorg' ),
			'all_items'             => __( 'All Testimonials', 'gorg' ),
			'archives'              => __( 'Testimonial Archives', 'gorg' ),
			'attributes'            => __( 'Testimonial Attributes', 'gorg' ),
			'insert_into_item'      => __( 'Insert into Testimonial', 'gorg' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Testimonial', 'gorg' ),
			'featured_image'        => _x( 'Testimonial Image', 'gorg_testimonial', 'gorg' ),
			'set_featured_image'    => _x( 'Set Testimonial image', 'gorg_testimonial', 'gorg' ),
			'remove_featured_image' => _x( 'Remove Testimonial image', 'gorg_testimonial', 'gorg' ),
			'use_featured_image'    => _x( 'Use as Testimonial image', 'gorg_testimonial', 'gorg' ),
			'filter_items_list'     => __( 'Filter Testimonials list', 'gorg' ),
			'items_list_navigation' => __( 'Testimonials list navigation', 'gorg' ),
			'items_list'            => __( 'Testimonials list', 'gorg' ),
			'new_item'              => __( 'New Testimonial', 'gorg' ),
			'add_new'               => __( 'Add New', 'gorg' ),
			'add_new_item'          => __( 'Add New Testimonial', 'gorg' ),
			'edit_item'             => __( 'Edit Testimonial', 'gorg' ),
			'view_item'             => __( 'View Testimonial', 'gorg' ),
			'view_items'            => __( 'View Testimonials', 'gorg' ),
			'search_items'          => __( 'Search Testimonials', 'gorg' ),
			'not_found'             => __( 'No Testimonials found', 'gorg' ),
			'not_found_in_trash'    => __( 'No Testimonials found in trash', 'gorg' ),
			'parent_item_colon'     => __( 'Parent Testimonial:', 'gorg' ),
			'menu_name'             => __( 'Testimonials', 'gorg' ),
		),
		'public'                => true,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		'supports'              => array( 'title', 'editor','thumbnail' ),
		'has_archive'           => true,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-testimonial',
		'show_in_rest'          => true,
		'rest_base'             => 'gorg_testimonial',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'gorg_testimonial_init' );

/**
 * Sets the post updated messages for the `gorg_testimonial` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `gorg_testimonial` post type.
 */
function gorg_testimonial_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['gorg_testimonial'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Testimonial updated. <a target="_blank" href="%s">View Testimonial</a>', 'gorg' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'gorg' ),
		3  => __( 'Custom field deleted.', 'gorg' ),
		4  => __( 'Testimonial updated.', 'gorg' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Testimonial restored to revision from %s', 'gorg' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Testimonial published. <a href="%s">View Testimonial</a>', 'gorg' ), esc_url( $permalink ) ),
		7  => __( 'Testimonial saved.', 'gorg' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Testimonial submitted. <a target="_blank" href="%s">Preview Testimonial</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Testimonial scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Testimonial</a>', 'gorg' ),
		date_i18n( __( 'M j, Y @ G:i', 'gorg' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Testimonial draft updated. <a target="_blank" href="%s">Preview Testimonial</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'gorg_testimonial_updated_messages' );

<?php

/**
 * Registers the `gorg_gallery` post type.
 */
function gorg_gallery_init() {
	register_post_type( 'gorg-gallery', array(
		'labels'                => array(
			'name'                  => __( 'Galleries', 'gorg' ),
			'singular_name'         => __( 'Gallery', 'gorg' ),
			'all_items'             => __( 'All Galleries', 'gorg' ),
			'archives'              => __( 'Gallery Archives', 'gorg' ),
			'attributes'            => __( 'Gallery Attributes', 'gorg' ),
			'insert_into_item'      => __( 'Insert into Gallery', 'gorg' ),
			'uploaded_to_this_item' => __( 'Uploaded to this Gallery', 'gorg' ),
			'featured_image'        => _x( 'Featured Image', 'gorg_gallery', 'gorg' ),
			'set_featured_image'    => _x( 'Set featured image', 'gorg_gallery', 'gorg' ),
			'remove_featured_image' => _x( 'Remove featured image', 'gorg_gallery', 'gorg' ),
			'use_featured_image'    => _x( 'Use as featured image', 'gorg_gallery', 'gorg' ),
			'filter_items_list'     => __( 'Filter Galleries list', 'gorg' ),
			'items_list_navigation' => __( 'Galleries list navigation', 'gorg' ),
			'items_list'            => __( 'Galleries list', 'gorg' ),
			'new_item'              => __( 'New Gallery', 'gorg' ),
			'add_new'               => __( 'Add New', 'gorg' ),
			'add_new_item'          => __( 'Add New Gallery', 'gorg' ),
			'edit_item'             => __( 'Edit Gallery', 'gorg' ),
			'view_item'             => __( 'View Gallery', 'gorg' ),
			'view_items'            => __( 'View Galleries', 'gorg' ),
			'search_items'          => __( 'Search Galleries', 'gorg' ),
			'not_found'             => __( 'No Galleries found', 'gorg' ),
			'not_found_in_trash'    => __( 'No Galleries found in trash', 'gorg' ),
			'parent_item_colon'     => __( 'Parent Gallery:', 'gorg' ),
			'menu_name'             => __( 'Galleries', 'gorg' ),
		),
		'public'                => true,
		'exclude_from_search'	=> true,
		'hierarchical'          => false,
		'show_ui'               => true,
		'show_in_nav_menus'     => true,
		'supports'              => array( 'title'),
		'has_archive'           => false,
		'rewrite'               => true,
		'query_var'             => true,
		'menu_position'         => null,
		'menu_icon'             => 'dashicons-format-gallery',
		'show_in_rest'          => true,
		'rest_base'             => 'gorg_gallery',
		'rest_controller_class' => 'WP_REST_Posts_Controller',
	) );

}
add_action( 'init', 'gorg_gallery_init' );

/**
 * Sets the post updated messages for the `gorg_gallery` post type.
 *
 * @param  array $messages Post updated messages.
 * @return array Messages for the `gorg_gallery` post type.
 */
function gorg_gallery_updated_messages( $messages ) {
	global $post;

	$permalink = get_permalink( $post );

	$messages['gorg_gallery'] = array(
		0  => '', // Unused. Messages start at index 1.
		/* translators: %s: post permalink */
		1  => sprintf( __( 'Gallery updated. <a target="_blank" href="%s">View Gallery</a>', 'gorg' ), esc_url( $permalink ) ),
		2  => __( 'Custom field updated.', 'gorg' ),
		3  => __( 'Custom field deleted.', 'gorg' ),
		4  => __( 'Gallery updated.', 'gorg' ),
		/* translators: %s: date and time of the revision */
		5  => isset( $_GET['revision'] ) ? sprintf( __( 'Gallery restored to revision from %s', 'gorg' ), wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
		/* translators: %s: post permalink */
		6  => sprintf( __( 'Gallery published. <a href="%s">View Gallery</a>', 'gorg' ), esc_url( $permalink ) ),
		7  => __( 'Gallery saved.', 'gorg' ),
		/* translators: %s: post permalink */
		8  => sprintf( __( 'Gallery submitted. <a target="_blank" href="%s">Preview Gallery</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
		/* translators: 1: Publish box date format, see https://secure.php.net/date 2: Post permalink */
		9  => sprintf( __( 'Gallery scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview Gallery</a>', 'gorg' ),
		date_i18n( __( 'M j, Y @ G:i', 'gorg' ), strtotime( $post->post_date ) ), esc_url( $permalink ) ),
		/* translators: %s: post permalink */
		10 => sprintf( __( 'Gallery draft updated. <a target="_blank" href="%s">Preview Gallery</a>', 'gorg' ), esc_url( add_query_arg( 'preview', 'true', $permalink ) ) ),
	);

	return $messages;
}
add_filter( 'post_updated_messages', 'gorg_gallery_updated_messages' );

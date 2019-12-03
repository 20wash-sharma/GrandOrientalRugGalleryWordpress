<?php 
$gorg_setting = gorg_get_theme_options();
//shop page sidebar
$wp_customize->add_setting( 'gorg_theme_options[gorg_shop_page_sidebar]', array(
    'type' => 'option',
    'capability' => 'edit_theme_options',
    'default' => 'default',
  ) );
  
  $wp_customize->add_control( 'gorg_theme_options[gorg_shop_page_sidebar]', array(
    'type' => 'select',
    'section' => 'woo_section',
    'label' => __( 'Shop Page Sidebar' ),
    'description' => __( '' ),
    'choices' => array(
        'default'       => __( 'Default', 'gorg' ),
        'no-sidebar'    => __( 'No Sidebar', 'gorg' ),
        'left-sidebar'  => __( 'Left Sidebar', 'gorg' ),
        'right-sidebar' => __( 'Right Sidebar', 'gorg' ),
    ),
  ) );
//single product page sidebar
$wp_customize->add_setting( 'gorg_theme_options[gorg_single_product_page_sidebar]', array(
  'type' => 'option',
  'capability' => 'edit_theme_options',
  'default' => 'default',
) );

$wp_customize->add_control( 'gorg_theme_options[gorg_single_product_page_sidebar]', array(
  'type' => 'select',
  'section' => 'woo_section',
  'label' => __( 'Single Product Page Sidebar' ),
  'description' => __( '' ),
  'choices' => array(
      'default'       => __( 'Default', 'gorg' ),
      'no-sidebar'    => __( 'No Sidebar', 'gorg' ),
      'left-sidebar'  => __( 'Left Sidebar', 'gorg' ),
      'right-sidebar' => __( 'Right Sidebar', 'gorg' ),
  ),
) );
  $wp_customize->add_setting( 'gorg_theme_options[gorg_shop_column]', array(
    'type' => 'option',
    'capability' => 'edit_theme_options',
    'default' => 4,
  ) );
  $wp_customize->add_control( new Customizer_Range_Value_Control( $wp_customize, 'gorg_theme_options[gorg_shop_column]', array(
	'type'     => 'range-value',
	'section'  => 'woo_section',
	'settings' => 'gorg_theme_options[gorg_shop_column]',
	'label'    => __( 'Product Columns' ),
	'input_attrs' => array(
		'min'    => 1,
		'max'    => 6,
		'step'   => 1,
		'suffix' => '', //optional suffix
  	),
) ) );
 
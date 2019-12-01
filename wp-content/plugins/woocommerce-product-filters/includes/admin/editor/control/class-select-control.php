<?php

namespace WooCommerce_Product_Filter_Plugin\Admin\Editor\Control;

class Select_Control extends Abstract_Control implements Preparing_For_Reload_Interface {
    protected $options = [];

    protected $options_handler = null;

    protected $options_depends = [];

    protected $load_options_from_handler = false;

    public function __construct( array $params = [] ) {
        parent::__construct( $params );

        if ( isset( $this->control_params['options'] ) && is_array( $this->control_params['options'] ) ) {
            $this->set_options( $this->control_params['options'] );
        }

        if ( isset( $this->control_params['options_handler'] ) && is_callable( $this->control_params['options_handler'] ) ) {
            $this->set_options_handler( $this->control_params['options_handler'] );

            if ( ! count( $this->options ) ) {
                $this->set_load_options_from_handler( true );
            }
        }

        if ( isset( $this->control_params['options_depends'] ) ) {
            $this->set_options_depends( $this->control_params['options_depends'] );
        }

        if ( isset( $this->control_params['load_options_from_handler'] ) ) {
            $this->set_load_options_from_handler( $this->control_params['loadOptionsFromHandler'] );
        }
    }

    public function get_load_options_from_handler() {
        return $this->load_options_from_handler;
    }

    public function set_load_options_from_handler( $is_active ) {
        $this->load_options_from_handler = $is_active;
    }

    public function get_options_depends() {
        return $this->options_depends;
    }

    public function set_options_depends( $depends ) {
        $this->options_depends = $depends;
    }

    public function add_option( $key, $value ) {
        $this->options[ $key ] = $value;
    }

    public function remove_option( $key ) {
        unset( $this->options[ $key ] );
    }

    public function get_options() {
        return $this->options;
    }

    public function set_options( array $options ) {
        $this->options = $options;
    }

    public function get_options_handler() {
        return $this->options_handler;
    }

    public function set_options_handler( $handler ) {
        $this->options_handler = $handler;
    }

    public function prepare_for_reload( array $options, array $context, array $control_props = [] ) {
        if ( is_callable( $this->options_handler ) ) {
            $new_options = call_user_func( $this->options_handler, $options, $context, $this );

            $this->set_options( $new_options );
        }
    }

    public function get_structure() {
        return array_merge( parent::get_structure(), [
            'options' => $this->get_options(),
            'reloadAfterInit' => $this->get_load_options_from_handler(),
            'optionsDepends' => $this->get_options_depends()
        ] );
    }

    public function get_control_type() {
        return 'Select';
    }

    public function render_control() {
        $this->render( 'control/select.php', [
            'options' => $this->get_options(),
            'reload_after_init' => $this->get_load_options_from_handler()
        ] );
    }
}
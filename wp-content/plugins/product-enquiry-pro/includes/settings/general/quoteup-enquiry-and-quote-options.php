<?php

namespace Includes\Settings;

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

/**
 * This function is used to display Enable disable quote field
 * @param array $form_data QuoteUp Settings
 */
function enableDisableQuoteUpSection($form_data)
{
    ?>
    <fieldset>
        <?php
        echo '<legend>'.__('Enquiry & Quote Options', QUOTEUP_TEXT_DOMAIN).'</legend>';
        quotemoduleEnableDisable($form_data);
        enquiryOutofStock($form_data);
        enquiryButtonShopPage($form_data);
        enquiryButtonOnlyLoggedinUser($form_data);
        quoteupShowEnqBtnForSelProductsHelpLink();
        ?>
    </fieldset>
    <?php
}
/**
 * This function is used to display Quote Module enable disable checkbox
 * @param array $form_data QuoteUp Settings
 */
function quotemoduleEnableDisable($form_data)
{
    ?>
    <div class="fd">
        <div class='left_div'>
            <label for="quote-enable-disable"> <?php _e('Disable Quotation System', QUOTEUP_TEXT_DOMAIN) ?> </label>
        </div>
        <div class='right_div'>
        <?php
        $helptip = __('Disable quote management system', QUOTEUP_TEXT_DOMAIN);
        echo \quoteupHelpTip($helptip, true);
        ?>
            <input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" value="1" <?php checked(1, isset($form_data[ 'enable_disable_quote' ]) ? $form_data[ 'enable_disable_quote' ] : 0);
            ?> id="quote-enable-disable" /> 
            <input type="hidden" name="wdm_form_data[enable_disable_quote]" value="<?php echo isset($form_data[ 'enable_disable_quote' ]) && $form_data[ 'enable_disable_quote' ] == 1 ? $form_data[ 'enable_disable_quote' ] : 0?>" /> 
    
        </div>
        <div class='clear'></div>
    </div >
    <?php
}

/**
 * This function is used to display Out Of Stock checkbox
 * @param array $form_data QuoteUp Settings
 */
function enquiryOutofStock($form_data)
{
    ?>

    <!--enambe only when out of stock -->
    <div class="fd">
        <div class='left_div'>
            <label for="only_if_out_of_stock">
    <?php _e('Display Enquiry or Quote button only when \'Out of Stock\'', QUOTEUP_TEXT_DOMAIN) ?>
            </label>
        </div>
        <div class='right_div'>
        <?php
        $helptip = __('Display enquiry and quote button only after the product runs out of stock', QUOTEUP_TEXT_DOMAIN);
        echo \quoteupHelpTip($helptip, true);
        ?>
            <input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" value="1" <?php checked(1, isset($form_data[ 'only_if_out_of_stock' ]) ? $form_data[ 'only_if_out_of_stock' ] : 0);
            ?> id="only_if_out_of_stock" /> 
            <input type="hidden" name="wdm_form_data[only_if_out_of_stock]" value="<?php echo isset($form_data[ 'only_if_out_of_stock' ]) && $form_data[ 'only_if_out_of_stock' ] == 1 ? $form_data[ 'only_if_out_of_stock' ] : 0?>" />
        </div>
        <div class="clear"></div>
    </div>
    <!--end-->

    <?php
}

/**
 * This function is used to display Enquiry Button on Shop/Archive Page checkbox
  * @param array $form_data QuoteUp Settings
 */
function enquiryButtonShopPage($form_data)
{
    ?>
    <div class="fd">
        <div class='left_div'>
            <label for="show_enquiry_on_shop">
    <?php _e('Display Enquiry or Quote button on Archive Page ', QUOTEUP_TEXT_DOMAIN) ?>
            </label>
        </div>
        <div class='right_div'>
        <?php
        $helptip = __('Display enquiry and quote button on Archive (Shop, Categories) Page', QUOTEUP_TEXT_DOMAIN);
        echo \quoteupHelpTip($helptip, true);
        ?>
            <input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" value="1" <?php checked(1, isset($form_data[ 'show_enquiry_on_shop' ]) ? $form_data[ 'show_enquiry_on_shop' ] : 0);
            ?> id="show_enquiry_on_shop" />
            <input type="hidden" name="wdm_form_data[show_enquiry_on_shop]" value="<?php echo isset($form_data[ 'show_enquiry_on_shop' ]) && $form_data[ 'show_enquiry_on_shop' ] == 1 ? $form_data[ 'show_enquiry_on_shop' ] : 0;
            ?>" />

        </div>
        <div class="clear"></div>
    </div>

    <?php
}

/**
 * This function is used to display Enquiry Button on Shop/Archive Page checkbox
  * @param array $form_data QuoteUp Settings
 */
function enquiryButtonOnlyLoggedinUser($form_data)
{
    ?>
    <div class="fd">
        <div class='left_div'>
            <label for="show_enquiry_only_loggedin">
    <?php _e('Display Enquiry or Quote button only to Loggedin user ', QUOTEUP_TEXT_DOMAIN) ?>
            </label>
        </div>
        <div class='right_div'>
        <?php
        $helptip = __('Display enquiry and quote button only to users who are logged in', QUOTEUP_TEXT_DOMAIN);
        echo \quoteupHelpTip($helptip, true);
        ?>
            <input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" value="1" <?php checked(1, isset($form_data[ 'show_enquiry_only_loggedin' ]) ? $form_data[ 'show_enquiry_only_loggedin' ] : 0);
            ?> id="show_enquiry_only_loggedin" />
            <input type="hidden" name="wdm_form_data[show_enquiry_only_loggedin]" value="<?php echo isset($form_data[ 'show_enquiry_only_loggedin' ]) && $form_data[ 'show_enquiry_only_loggedin' ] == 1 ? $form_data[ 'show_enquiry_only_loggedin' ] : 0;
            ?>" />

        </div>
        <div class="clear"></div>
    </div>

    <?php
}

/**
 * Display the help link 'Learn how to: Show/ hide Enquiry or Quote button
 * for selective products' under the 'Enquiry & Quote Options' section.
 *
 * @since 6.4.4
 *
 * @return void
 */
function quoteupShowEnqBtnForSelProductsHelpLink()
{
    ?>
    <div class="help-doc-link enq-btn-for-sel-products-link">
        <a href="<?php echo esc_url('https://wisdmlabs.com/docs/article/wisdm-product-enquiry-pro/pep-features/enable-disable-price-add-to-cart-button-enquiry-button-for-a-particular-product/'); ?>" target="_blank"><i><?php echo esc_html(__('Learn how to: Show/ hide Enquiry or Quote button for selective products', QUOTEUP_TEXT_DOMAIN)); ?></i></a>
    </div>
    <?php
}

enableDisableQuoteUpSection($form_data);

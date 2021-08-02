<?php

namespace Includes\Settings;

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

/**
 * This function is used to display 'Other Options' fields
 * @param   array   $form_data  Settings stored previously in database.
 */
function quoteupOtherOptionsSection($form_data)
{
    ?>
    <fieldset>

        <?php
        echo '<legend>'.__('Other Options', QUOTEUP_TEXT_DOMAIN).'</legend>';

        enableQuantityField($form_data);
        ?>
    </fieldset>
    <?php
}

/**
 * This is used to show quantity field setting.
 *
 * @param   array   $form_data  Settings stored previously in database.
 */
function enableQuantityField($form_data)
{
    ?>
    <div class="fd">
        <div class='left_div'>
            <label for="enable_qty_field">
                <?php _e('Enable Quantity Field ', QUOTEUP_TEXT_DOMAIN) ?>
            </label>
        </div>
        <div class='right_div'>
            <?php
            $helptip = __('Enable quantity field on single product page when \'Add to Cart\' button is disabled for a particular product.', QUOTEUP_TEXT_DOMAIN);
            echo \quoteupHelpTip($helptip, true);
            ?>
            <input type="checkbox" class="wdm_wpi_input wdm_wpi_checkbox" value="1" <?php checked(1, isset($form_data['enable_qty_field']) ? $form_data['enable_qty_field'] : 0); ?> id="enable_qty_field" /> 
            <input type="hidden" name="wdm_form_data[enable_qty_field]" value="<?php echo isset($form_data['enable_qty_field']) && $form_data['enable_qty_field'] == 1 ? $form_data['enable_qty_field'] : 0 ?>" />
        </div>
    </div>
    <?php
}

quoteupOtherOptionsSection($form_data);

<?php
/**
 * Captcha
 *
 * This template can be overridden by copying it to yourtheme/quoteup/public/enquiry-modal/default-form/captcha.php.
 *
 * HOWEVER, on occasion QuoteUp will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @author  WisdmLabs
 * @version 6.1.0
 */

if (isset($form_data['enable_google_captcha']) && $form_data['enable_google_captcha'] == 1 && !quoteupIsCaptchaVersion3($form_data)) {
    $siteKey = $form_data[ 'google_site_key' ]; ?>
    <!-- <div class="g-recaptcha" data-sitekey="<?php echo $siteKey; ?>"></div> -->
    <div id="test<?php echo $prod_id ?>" class="g-recaptcha" data-sitekey="<?php echo $siteKey; ?>" data-widgetid="">
    </div>
    <?php
}

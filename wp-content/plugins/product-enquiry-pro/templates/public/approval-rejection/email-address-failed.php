<?php
/**
 * Email Address Failed
 *
 * This template can be overridden by copying it to yourtheme/quoteup/public/approval-rejection/email-address-failed.php.
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
?>
<div style="color: red;">
<?php
    echo sprintf(__('%s is not a valid email address or Quotation has been updated. Please contact site admin for new Quotation mail %s', QUOTEUP_TEXT_DOMAIN), "<strong> <code>$emailAddressFailed</code>", '</strong>');
?>
</div>
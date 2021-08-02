<?php
$promotionImageDirUrl = QUOTEUP_PLUGIN_URL . '/images/promotion/';
?>

<div class="main-content">
    <div class="feature-section-wrapper">
        <div class="heading-subheading">
            <h1 class="pep-wn-head mini-enquiry-cart">
                <?php
                esc_html_e('Alternate Variable Product Search', QUOTEUP_TEXT_DOMAIN);
                ?>
            </h1>
        </div>
        <div class="content">
            <div class="pep-wn-img-section">
                <a href="<?php echo esc_url($promotionImageDirUrl . 'variable-product-search.png'); ?>" target="_blank" rel="noopener noreferrer">
                    <img  src="<?php echo esc_url($promotionImageDirUrl . 'variable-product-search.png'); ?>" class="feature-image">
                </a>
            </div>
        </div>
    </div>
    <hr class="feature-seperator">
    <div class="pep-wn-section-other"> 
        <div class="content">
            <h3><?php esc_html_e('Features', QUOTEUP_TEXT_DOMAIN); ?></h3>
            <ul>
                <li>
                    <?php
                    esc_html_e('Added ability to change the search functionality for variable products on the enquiry edit page.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                    <div class="help-doc-link">
                        <a href="<?php echo esc_url('https://wisdmlabs.com/docs/article/wisdm-product-enquiry-pro/pep-tips-and-tricks/searching-variable-products-on-the-enquiry-edit-page-is-too-slow/'); ?>" target="_blank"><i><?php echo esc_html(__('See Documentation', QUOTEUP_TEXT_DOMAIN)); ?></i></a>
                    </div>
                </li>
                <li>
                    <?php
                    esc_html_e('Added the ability to search enquiries using enquiry Id, product name on the enquiry list page.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                     <div class="help-doc-link">
                        <a href="<?php echo esc_url('https://wisdmlabs.com/docs/article/wisdm-product-enquiry-pro/pep-features/search-a-specific-enquiry/'); ?>" target="_blank"><i><?php echo esc_html(__('See Documentation', QUOTEUP_TEXT_DOMAIN)); ?></i></a>
                    </div>
                </li>
                <li>
                    <?php
                    esc_html_e('Added \'Help\' section on the backend to quickly access tips/tricks, troubleshooting guides.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
            </ul>

            <h3><?php esc_html_e('Bug Fixes', QUOTEUP_TEXT_DOMAIN); ?></h3>
            <ul>
                <li>
                    <?php
                    esc_html_e('Fatal error on activation without WooCommerce.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('JS error with Custom Form on IE11.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Enquiry cart table structure.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Licensing error.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Changes in price and quantity columns are not reflecting in Amount column on the enquiry edit page.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Variations are not pre-selected on the enquiry edit page for which customer has made an enquiry.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Manual CSS not getting applied on the variable product page.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('jQuery Migration issues after WordPress 5.5 update.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('colspan property issue for enquiry cart total price.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Duplicate logo issue in an enquiry email.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
            </ul>

            <h3><?php esc_html_e('Tweaks', QUOTEUP_TEXT_DOMAIN); ?></h3>
            <ul>
                <li>
                    <?php
                    esc_html_e('Added a filter to show or hide the form fields label.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Added a filter to change manual CSS.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
                <li>
                    <?php
                    esc_html_e('Changed \'After Single Product Summary\' to \'After Add to Cart\'.', QUOTEUP_TEXT_DOMAIN);
                    ?>
                </li>
            </ul>
        </div>
    </div>
    <div class="pep-cta">
        <a href="https://wisdmlabs.com/contact-us/#support" class="button" target="_blank"><?php esc_html_e('Support', QUOTEUP_TEXT_DOMAIN); ?></a>
        <a href="https://wisdmlabs.com/docs/product/wisdm-product-enquiry-pro/" class="button" target="_blank"><?php esc_html_e('Docs', QUOTEUP_TEXT_DOMAIN); ?></a>
        <a href="https://wisdmlabs.com/docs/article/wisdm-product-enquiry-pro/pep-changelog/changelog-pep/" class="button" target="_blank"><?php esc_html_e('Changelog', QUOTEUP_TEXT_DOMAIN); ?></a>
    </div>
</div>

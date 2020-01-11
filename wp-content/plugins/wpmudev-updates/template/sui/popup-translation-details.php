<?php
/**
 * Dashboard popup template: Ask for FTP credentials before updating/installing.
 *
 * This is only loaded if direct FS access is not possible.
 *
 */

?>

<div class="sui-dialog sui-dialog-alt sui-dialog-sm" aria-hidden="true" tabindex="-1" id="translation-details">

	<div class="sui-dialog-overlay" data-a11y-dialog-hide></div>

	<div class="sui-dialog-content" aria-labelledby="dialogTitle" aria-describedby="ftpdialogDescription" role="dialog">

		<div class="sui-box" role="document">

			<div class="sui-box-header sui-block-content-center">
				<h3 class="sui-box-title" id="dialogTitle"><?php esc_html_e( 'Update Translations', 'wpmudev' ); ?></h3>
				<div class="sui-actions-right">
					<button data-a11y-dialog-hide="sample-dialog--alt-basic-sm" class="sui-dialog-close" aria-label="Close this dialog window"></button>
				</div>
			</div>

			<div class="sui-box-body sui-box-body-slim sui-block-content-center">
				<p id="dialogDescription" class="sui-description">
					<?php esc_html_e( 'Choose which translations you want to update today.', 'wpmudev' ); ?>
				</p>
				<?php foreach ( $available_translations as $key => $value ) { ?>

					<div class="sui-form-field" style="margin-bottom:5px;">
						<label for="translation-bulk-action-<?php echo esc_attr( $key ); ?>" class="sui-checkbox" style="width: 200px">
							<input type="checkbox" name="pids[]" value="<?php echo esc_attr( $key ); ?>" id="translation-bulk-action-<?php echo esc_attr( $key ); ?>" class="js-plugin-check">
							<span aria-hidden="true"></span>
							<span style="font-size:13px;"> <?php echo esc_html( $value['label'] ); ?></span>
						</label>
					</div>
				<?php } ?>

			</div>

			<div class="sui-box-footer sui-space-between" style="border-top: 1px solid #e6e6e6; padding:30px">

				<button class="sui-button sui-button-ghost" data-a11y-dialog-hide="sample-dialog--alt-basic-sm"><?php esc_html_e( 'Cancel', 'wpmudev' ); ?></button>

				<button class="sui-modal-close sui-button sui-button-blue">
					<i class="sui-icon-update" aria-hidden="true"></i>
					<?php esc_html_e( 'Update', 'wpmudev' ); ?>
				</button>

			</div>

		</div>

	</div>

</div>

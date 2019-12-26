<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>[_site_title]</title>
	</head>
	<body style="margin: 0; width: 100%;">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#f2f3f5" style="background: #f2f3f5; margin: 0 auto; padding-left: 30px; padding-right: 30px;">
			<tbody>
				<tr>
					<td style="padding-bottom: 20px;">
						<table width="100%" cellspacing="0" cellpadding="0" border="0" style="max-width: 600px; margin: 0 auto; box-shadow: 5px 6px 7px rgba(0, 0, 0, 0.09);">
								<tbody>
									<!-- logo start -->
									<tr>
										<td style="text-align: center; padding-top: 30px; padding-bottom: 30px; background-color: #e5e5e5;">
											<a href="[_site_url]" target="_blank" style="display: inline-block;">
												<img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt="logo" style="display: block;"/>
											</a>
										</td>
									</tr>
									<!-- logo end -->

									<!-- congratulations section start -->
									<tr>
										<td width="100%" cellspacing="0" cellpadding="0" border="0" style="max-width: 600px; margin: 0 auto; background-color: #16b5b1; text-align: center; padding-top: 40px; padding-bottom: 40px;">
											<table width="100%" cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td>
														<img src="[plugin_url]admin/assets/images/icons/mail-icon.png" alt=" " style="display: block; margin:  0 auto;">
													</td>
												</tr>
												<tr>
													<td style="text-align: center; font-family: Verdana,Geneva,sans-serif; font-size: 35px; line-height: 45px; color: #fffcfb; font-weight: bold; padding-top: 10px;">
														<?php _e( 'Congratulations', 'cf7-pro-email-addon' ); ?>
													</td>
												</tr>
												<tr>
													<td style="text-align: center; font-family: Verdana,Geneva,sans-serif; font-size: 20px; line-height: 26px; color: #fffcfb; font-weight: bold; padding-top: 10px;">
														<?php _e( 'You have a new inquiry from your website', 'cf7-pro-email-addon' ); ?>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- congratulations section end -->

									<!-- inquiry table start -->
									<tr>
										<td width="100%" cellspacing="0" cellpadding="0" border="0" style="max-width: 600px; margin: 0 auto; background-color: #ffffff; text-align: center; padding-top: 45px; padding-bottom: 45px; padding-left: 35px; padding-right: 35px;">
											<table width="100%" cellspacing="0" cellpadding="0" border="0">
												<tr>
													<td style="text-align: center; font-family: Verdana,Geneva,sans-serif; font-size: 16px; line-height: 26px; color: #a6a6a6; font-weight: normal; padding-top: 10px; padding-bottom: 25px; ">
														<?php _e( 'Here is the inquiry that you have received from the', 'cf7-pro-email-addon' ); ?> <br><a href="[_url]" style="text-decoration: none; color: #16b5b1; display: inline-block; ">[_post_title]</a> <?php echo esc_html( 'page' ); ?>.
													</td>
												</tr>
												<tr>
													<td width="100%" cellspacing="0" cellpadding="0" border="0" style="max-width: 600px; margin: 0 auto; background-color: #ffffff; padding-top: 20px; padding-bottom: 0;">
														<table width="100%" cellspacing="0" cellpadding="0" border="0">
															[fields]
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- inquiry table end -->
									<!-- footer start -->
									<tr>
										<td >
											<table width="100%" cellpadding="0" cellspacing="0" border="0" >
												<tr>
													<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 14px; line-height: 20px; color: #ffffff; text-align: left;  text-align: center; padding-top: 15px; padding-bottom: 15px; background-color: #16b5b1;">
														[date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; color: #ffffff">[_site_title]</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<!-- footer end -->
								</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</body>
</html>
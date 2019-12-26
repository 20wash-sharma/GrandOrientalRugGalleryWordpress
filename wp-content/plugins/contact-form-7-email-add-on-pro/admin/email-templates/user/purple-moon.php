<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<title>[_site_title]</title>
</head>
<body style="margin: 0; padding: 0">
	<table width="800" align="center" cellpadding="0" cellspacing="0" border="0" bgcolor="#f1eef8">
		<tbody>
			<tr>
				<td align="center">
					<table width="600" cellpadding="0" cellspacing="0" border="0">
						<tbody>
							<tr>
								<td style="height: 20px;"></td>
							</tr>
							<!-- logo start -->
							<tr>
								<td>
									<table width="600" cellpadding="0" cellspacing="0" border="0" bgcolor="#fff">
										<tbody>
											<tr>
												<td style="height: 17px;"></td>
											</tr>
											<tr>
												<td align="center">
													<a href="[_site_url]">
														<img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt="" style="display: block;">
													</a>
												</td>
											</tr>
											<tr>
												<td style="height: 17px;"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- logo end -->
							<!-- banner start -->
							<tr>
								<td>
									<table width="600" cellpadding="0" cellspacing="0" border="0" >
										<tbody>
											<tr>
												<td>
													<img src="[plugin_url]admin/assets/images/purple-moon/banner.jpg" alt="" style="display: block;">
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- banner end -->
							<!-- table content start -->
							<tr>
								<td align="center" style="background-color: #fff;">
									<table width="490" cellpadding="0" cellspacing="0" border="0">
										<tbody>
											<tr>
												<td style="height: 35px;"></td>
											</tr>
											<tr>
												<td style="font-family: Verdana,Geneva,sans-serif; font-size: 28px; line-height: 38px; color: #130b39; font-weight: bold; text-align: center;">Thank you</td>
											</tr>
											<tr>
												<td style="height: 20px;"></td>
											</tr>
											<tr>
												<td style="font-family: Verdana,Geneva,sans-serif; font-size: 16px; line-height: 26px; color: #3a304e; font-weight: normal; text-align: center;">We have received your message and would like to thank you for writing to us. If your inquiry is urgent, please call us on to talk to one of our staff members. Otherwise, we will reply by email as soon as possible.</td>
											</tr>
											<tr>
												<td style="height: 27px;"></td>
											</tr>
											<tr>
												<td align="center">
													<a href="mailto:[_site_admin_email]" style="text-decoration: none; display: inline-block; font-family: Verdana,Geneva,sans-serif; font-size: 14px; line-height: 50px; color: #fff; font-weight: bold; text-transform: uppercase; height: 50px; width: 160px; background-color: #5d36b1; border-radius: 100px;">Call us</a>
												</td>
											</tr>

											<tr>
												<td style="height: 40px;"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- table content end-->
							<!-- copyright start -->
							<tr>
								<td>
									<table width="600" cellpadding="0" cellspacing="0" border="0" bgcolor="#f1eef8">
										<tbody>
											<tr>
												<td style="height: 20px;"></td>
											</tr>
											<tr>
												<td style="font-family: Verdana,Geneva,sans-serif; font-size: 11px; line-height: 22px; color: #68617a; text-transform: uppercase; font-weight: normal;">
													&copy; 2019 <a href="[_url]" target="_blank" style="text-decoration: none; color: #68617a; text-transform: uppercase;">Powered by</a>. Contact Form 7 Email Addon.
												</td>
												<?php if ( $this->option ) : ?>
													<td style="text-align: center;">
														<?php if ( $this->option['cf7_facebook'] ) : ?>
														<a href="<?php echo esc_url( $this->option['cf7_facebook'] ); ?>" style="display: inline-block; margin-right: 3px;">
															<img src="[plugin_url]admin/assets/images/purple-moon/facebook-icon.png">
														</a>
														<?php endif; ?>
														<?php if ( $this->option['cf7_instagram'] ) : ?>
														<a href="<?php echo esc_url( $this->option['cf7_instagram'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
															<img src="[plugin_url]admin/assets/images/purple-moon/instagram-icon.png">
														</a>
														<?php endif; ?>
														<?php if ( $this->option['cf7_linkdin'] ) : ?>
														<a href="<?php echo esc_url( $this->option['cf7_linkdin'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
															<img src="[plugin_url]admin/assets/images/purple-moon/linkedin-icon.png">
														</a>
														<?php endif; ?>
														<?php if ( $this->option['cf7_pinterest'] ) : ?>
														<a href="<?php echo esc_url( $this->option['cf7_pinterest'] ); ?>" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
															<img src="[plugin_url]admin/assets/images/purple-moon/pinterest-icon.png">
														</a>
														<?php endif; ?>
														<?php if ( $this->option['cf7_twitter'] ) : ?>
														<a href="<?php echo esc_url( $this->option['cf7_twitter'] ); ?>" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
															<img src="[plugin_url]admin/assets/images/purple-moon/twitter-icon.png">
														</a>
														<?php endif; ?>
													</td>
												<?php endif; ?>
											</tr>
											<tr>
												<td style="height: 20px;"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
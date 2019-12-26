<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>[_site_title]</title>
</head>
<body style="margin: 0; padding: 0">
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td style="background-image: url([plugin_url]admin/assets/images/gradient/table-bg.jpg); background-repeat: no-repeat; background-color: #f0f0f0; padding-top: 65px;">
				<table cellpadding="0" cellspacing="0" width="600" align="center">
					<tr>
						<td align="center">
							<div style="width: 100%; max-width: 650px; margin: 0 auto;">
								<table width="100%" cellpadding="0" cellspacing="0" border="0" style="width: 100%; max-width: 650px; margin: 0 auto;">
									<tbody>
										<tr>
											<td>
												<img src="[plugin_url]admin/assets/images/gradient/lawyer.png" alt="" style="display: block;">
											</td>
										</tr>
										<tr>
											<td>
												<table width="100%" bgcolor="#ffffff" cellpadding="0" cellspacing="0" border="0" style="width: 100%; max-width: 620px; margin: 0 auto; background: #ffffff;">
													<tbody>
														<!-- Header Strat -->
														<tr>
															<td style="background-color: #ffffff;">
																<table width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top: 20px; padding-bottom: 20px;">
																	<tbody>
																		<!-- Logo Strat -->
																		<tr>
																			<td style="text-align: center;">
																				<a href="[_site_url]" target="_blank" style="display: inline-block;"><img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt=""></a>
																			</td>
																		</tr>
																		<!-- Logo End -->
																	</tbody>
																</table>
															</td>
														</tr>
														<!-- Header End -->
														<!-- Banner Img Start -->
														<tr>
															<td style="text-align: center; padding: 40px 0;" align="center">
																<img src="[plugin_url]admin/assets/images/gradient/thank-you-img.png" alt="" style="display: block; margin: 0 auto;">
															</td>
														</tr>
														<!-- Banner Img End -->
														<!-- Msg Strat -->
														<tr>
															<td>
																<table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color: #ffffff;">
																	<tbody>
																		<tr>
																			<td width="600" style="padding-top: 0px; padding-bottom: 40px; padding-left: 70px; padding-right: 70px;">
																				<table width="100%" cellpadding="0" cellspacing="0" border="0">
																					<tbody>
																						<tr>
																							<td style="font-family: Tahoma, Geneva, sans-serif; font-weight: bold; font-size: 22px; line-height: 32px; color: #444444; text-align: center; padding-bottom: 15px;">
																								Hello [user-name],
																							</td>
																						</tr>
																						<tr>
																							<td style="font-family: Tahoma, Geneva, sans-serif; font-weight: bold; font-size: 24px; line-height: 38px; color: #444444; text-align: center; padding-bottom: 5px;">
																								Thanks for getting in touch
																							</td>
																						</tr>
																						<tr>
																							<td style="font-family: Tahoma, Geneva, sans-serif; font-weight: normal; font-size: 16px; line-height: 28px; color: #444444; text-align: center; padding-bottom: 10px;">
																								We have received your inquiry. Happy to have you at our precious client's list. One of our sales representatives will be in touch with you soon. till then stay tuned with the updates from KrishaWeb...
																							</td>
																						</tr>
																						<tr>
																							<td style="height: 20px;"></td>
																						</tr>
																						<tr>
																							<td>
																								<div style="text-align: center;">
																									<a href="#" style="display: inline-block; padding: 12px 20px 12px 20px; background: #954977; color: #ffffff; text-decoration: none; font-family: Tahoma, Geneva, sans-serif; text-transform: uppercase; font-weight: 700; letter-spacing: 0.050em; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px;">Visit our blog</a>
																								</div>
																							</td>
																						</tr>
																						<tr>
																							<td height="40"></td>
																						</tr>
																						<?php if ( $this->option ) : ?>
																						<!-- Social Icon Start -->
																						<tr>
																							<td>
																								<table width="100%" cellpadding="0" cellspacing="0" border="0">
																									<tbody>
																										<tr>
																											<td style="text-align: center;">
																												<?php if ( $this->option['cf7_facebook'] ) : ?>
																												<a href="<?php echo esc_url( $this->option['cf7_facebook'] ); ?>" target="_blank" style="display: inline-block; margin-right: 3px;"><img src="[plugin_url]admin/assets/images/gradient/facebook-icon.png"></a>
																												<?php endif; ?>
																												<?php if ( $this->option['cf7_twitter'] ) : ?>
																												<a href="<?php echo esc_url( $this->option['cf7_twitter'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;"><img src="[plugin_url]admin/assets/images/gradient/twitter-icon.png"></a>
																												<?php endif; ?>
																												<?php if ( $this->option['cf7_linkdin'] ) : ?>
																												<a href="<?php echo esc_url( $this->option['cf7_linkdin'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;"><img src="[plugin_url]admin/assets/images/gradient/linkedin-icon.png"></a>
																												<?php endif; ?>
																												<?php if ( $this->option['cf7_instagram'] ) : ?>
																												<a href="<?php echo esc_url( $this->option['cf7_instagram'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;"><img src="[plugin_url]admin/assets/images/gradient/instagram-icon.png"></a>
																												<?php endif; ?>
																												<?php if ( $this->option['cf7_pinterest'] ) : ?>
																												<a href="<?php echo esc_url( $this->option['cf7_pinterest'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;"><img src="[plugin_url]admin/assets/images/gradient/pinterest-icon.png"></a>
																												<?php endif; ?>
																											</td>
																										</tr>
																									</tbody>
																								</table>
																							</td>
																						</tr>
																						<!-- Social Icon End -->
																						<?php endif; ?>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
														<!-- Msg Strat -->
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</td>
					</tr>
					<!-- Footer Start -->
					<tr>
						<td>
							<div style="width: 100%; max-width: 620px; margin: 0 auto;">
								<table width="100%" cellpadding="0" cellspacing="0" border="0" style="">
									<tr>
										<td style="font-family: Tahoma, Geneva, sans-serif; font-weight: normal; font-size: 14px; line-height: 24px; color: #3e3e3e; text-align: left; padding-bottom: 30px; padding-top: 15px;">
											Copyright &copy; [date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; color: #1a1f8e">[_site_title]</a>
										</td>
										<td style="font-family: Tahoma, Geneva, sans-serif; font-weight: normal; font-size: 14px; line-height: 24px; color: #3e3e3e; text-align: right; padding-bottom: 30px; padding-top: 15px;">
											Powered by <a href="#" target="_blank" style="text-decoration: none; color: #1a1f8e;">Contact Form 7 Email Add on</a>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<!-- Footer End -->
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
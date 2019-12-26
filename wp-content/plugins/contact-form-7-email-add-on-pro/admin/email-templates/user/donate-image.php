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
														<tr>
															<td style="background-color: #ffffff;">
																<table width="100%" cellpadding="0" cellspacing="0" border="0" style="padding-top: 20px; padding-bottom: 20px;">
																	<tbody>
																		<tr>
																			<td style="text-align: center;" height="150">
																				<a href="[_site_url]" target="_blank" style="display: inline-block;"><img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt=""></a>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color: #ffffff;">
																	<tbody>
																		<tr>
																			<td width="600" style="padding-top: 0px; padding-bottom: 40px; padding-left: 70px; padding-right: 70px;">
																				<table width="100%" cellpadding="0" cellspacing="0" border="0">
																					<tbody>
																						<tr>
																							<td style="font-family: Verdana,Geneva,sans-serif; font-size: 30px; line-height: 32px; color: #444444; text-align: center; padding-bottom: 15px;">
																								Thanks <strong>[user-name]</strong>
																							</td>
																						</tr>
																						<tr>
																							<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 16px; line-height: 28px; color: #444444; text-align: center; padding-bottom: 10px;">
																								For Donat us
																							</td>
																						</tr>
																						<tr>
																							<td height="330" align="center">
																								<img src="[plugin_url]admin/assets/images/donate/icon.png" alt="" width="278" height="206">
																							</td>
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
										<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 14px; line-height: 24px; color: #3e3e3e; text-align: left; padding-bottom: 30px; padding-top: 15px; text-align: center;">
											Copyright &copy; [date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; color: #1a1f8e">[_site_title]</a>
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
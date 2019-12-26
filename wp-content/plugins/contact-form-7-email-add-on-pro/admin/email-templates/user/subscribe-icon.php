<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>[_site_title]</title>
	</head>
	<body style="margin: 0; width: 100%;">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#f2f3f5" style="background: #f2f3f5; margin: 0 auto; max-width: 660px; padding-left: 30px; padding-right: 30px;">
			<tbody>
				<tr>
					<td style="padding-top: 30px; padding-bottom: 20px;">
						<table width="100%" cellspacing="0" cellpadding="0" border="0" style="max-width: 600px; margin: 0 auto;">
								<tbody>
									<!-- logo start -->
									<tr>
										<td style="text-align: center; padding-bottom: 20px;">
											<a href="[_site_url]" target="_blank" style="display: inline-block;">
												<img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt="logo" style="display: block;"/>
											</a>
										</td>
									</tr>
									<!-- logo end -->

									<!-- content  start -->
									<tr>
										<td>
											<table width="100%" cellspacing ="0" cellpadding="0" style="max-width: 600px; margin: 0 auto;border-top: 10px; border-bottom: 10px; border-left: 10px; border-right: 10px; border-style: solid; border-color: #f4b056; border-radius: 10px; background-color: #2b2f3a;">
												<tbody>
													<!-- content title start -->
													<tr>
														<td>
															<table width="100%" cellspacing ="0" cellpadding="0" style="max-width: 600px; padding-top: 25px; padding-bottom: 25px;">
																	<tr>
																		<td style="text-align: center;">
																			<img src="[plugin_url]admin/assets/images/subscribe-icon/thank-you-image.png" alt="">
																		</td>
																	</tr>
																	<tr>
																		<td style=" text-align: center; padding-top: 20px;  padding-bottom: 10px; font-family: Verdana,Geneva,sans-serif; font-weight: bold; font-size: 25px; line-height: 35px; color: #ffffff;">
																			Thank You For Subscribe
																		</td>
																	</tr>
																	<tr>
																		<td style="text-align: center; font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 16px; line-height: 28px; color: #ffffff;">
																			Lorem ipsum dolor sit amet elit.
																		</td>
																	</tr>
															</table>
														</td>
													</tr>
													<!-- content title end -->

													<!-- content info start -->
													<tr>
														<td style="background-color: #333744;">
															<table width="100%" cellspacing ="0" cellpadding="0" border="0">
																<tbody>
																	<tr>
																		<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 14px; line-height: 24px; color: #ffffff; padding-left: 25px; padding-right: 25px; padding-top: 35px; padding-bottom: 35px; border: 0; border-bottom: 2px; border-style: solid;
																		border-color: #454854; text-align: center;">
																			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex commodo consequat. Duis aute irure in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla . Excepteur sint cupidatat non , sunt in culpa qui officia deserunt mollit anim id est laborum.
																		</td>
																	</tr>
																	<?php if ( $this->option ) : ?>
																	<!-- Social Icon Start -->
																	<tr>
																		<td style="background-color: #333744; padding-top: 20px; padding-bottom:20px;">
																			<table width="100%" cellpadding="0" cellspacing="0" border="0">
																				<tbody>
																					<tr>
																						<td style="text-align: center;">
																								<?php if ( $this->option['cf7_facebook'] ) : ?>
																									<a href="<?php echo esc_url( $this->option['cf7_facebook'] ); ?>" target="_blank" style="display: inline-block; margin-right: 3px;">
																										<img src="[plugin_url]admin/assets/images/subscribe-icon/subscribe-facebook.png">
																									</a>
																								<?php endif; ?>
																								<?php if ( $this->option['cf7_twitter'] ) : ?>
																									<a href="<?php echo esc_url( $this->option['cf7_twitter'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
																										<img src="[plugin_url]admin/assets/images/subscribe-icon/subscribe-twitter.png">
																									</a>
																								<?php endif; ?>
																								<?php if ( $this->option['cf7_linkdin'] ) : ?>
																									<a href="<?php echo esc_url( $this->option['cf7_linkdin'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
																										<img src="[plugin_url]admin/assets/images/subscribe-icon/subscribe-linkedin.png">
																									</a>
																								<?php endif; ?>
																								<?php if ( $this->option['cf7_pinterest'] ) : ?>
																									<a href="<?php echo esc_url( $this->option['cf7_pinterest'] ); ?>" target="_blank" style="display: inline-block; margin-left: 3px; margin-right: 3px;">
																										<img src="[plugin_url]admin/assets/images/subscribe-icon/subscribe-pinterest.png">
																									</a>
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
													<!-- content info start -->
												</tbody>
											</table>
										</td>
									</tr>
									<!-- content end -->

									<!-- footer start -->
									<tr>
										<td >
											<table width="100%" cellpadding="0" cellspacing="0" border="0" >
												<tr>
													<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 12px; line-height: 22px; color: #72736d; text-align: left;  text-align: center; padding-top: 20px;">
														&copy; [date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; color: #72736d">[_site_title]</a>
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
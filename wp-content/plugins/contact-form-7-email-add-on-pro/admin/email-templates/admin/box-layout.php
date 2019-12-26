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
															<table width="100%" cellpadding="0" cellspacing="0" border="0">
																<tbody>
																	<tr>
																		<td style="text-align: center; padding-top: 50px; padding-bottom: 50px;">
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
																		<td width="600" style="padding-top: 0px; padding-bottom: 50px; padding-left: 90px; padding-right: 90px;">
																			<table width="100%" cellpadding="0" cellspacing="0" border="0">
																				<tbody>
																					<tr>
																						<td style="font-family: Tahoma, Verdana, Segoe, sans-serif; font-size: 42px; line-height: 52px; color: #111111; text-align: center; padding-bottom: 15px; text-transform: uppercase; font-weight: bold;">
																							<?php _e( 'Congratulations', 'cf7-pro-email-addon' ); ?>
																						</td>
																					</tr>
																					<tr>
																						<td style="font-family: Tahoma, Verdana, Segoe, sans-serif; font-weight: bold; font-size: 19px; line-height: 28px; color: #444444; text-align: center; padding-bottom: 10px;">
																						<?php _e( 'You have new inquiry from your website.', 'cf7-pro-email-addon' ); ?>
																						</td>
																					</tr>
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
						</td>
					</tr>

					<!-- form start -->
					<tr>
						<td style="background-color: #fff; padding-left: 90px; padding-right: 90px; padding-bottom: 50px;">
							<table width="100%" cellpadding="0" cellspacing="0" border="0">
								<tbody>
									[fields]
								</tbody>
							</table>
						</td>
					</tr>
					<!-- form end -->
					<!-- Footer Start -->
					<tr>
						<td>
							<table width="100%" cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td style="font-family: Verdana,Geneva,sans-serif; font-weight: normal; font-size: 14px; line-height: 24px; color: #333333; text-align: center; padding-bottom: 25px; padding-top: 15px;">
										Copyright &copy; [date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; color: #333333">[_site_title]</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- Footer End -->
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>[_site_title]</title>
</head>
<body style="margin: 0; padding: 0">
	<table width="100%" cellpadding="0" cellspacing="0" bgcolor="#DCDDE1" border="0" style="background-color: #DCDDE1; padding-top: 20px;">
		<tr>
			<td align="center" style="padding-left: 15px; padding-right: 15px;">
				<div style="width: 100%; max-width: 650px; margin: 0 auto;">
					<table width="100%" cellpadding="0" cellspacing="0" border="0" style="width: 100%; max-width: 650px; margin: 0 auto;">
						<tbody>
							<tr>
								<td>
									<table width="100%" cellpadding="0" cellspacing="0" border="0" style="width: 100%; max-width: 620px; margin: 0 auto;">
										<tbody>
											<tr>
												<td height="30"></td>
											</tr>
											<tr>
												<td height="400" bgcolor="#37B5CE" style="background-image: url([plugin_url]admin/assets/images/banner-bg.jpg); background-repeat: no-repeat; background-color: #37B5CE; text-align: center;">
													<img src="[plugin_url]admin/assets/images/thank-you.png" alt="" style="display: inline-block;">
												</td>
											</tr>
											<tr>
												<td>
													<table width="100%" cellpadding="0" cellspacing="0" border="0">
														<tbody>
															<tr>
																<td width="600" bgcolor="#ffffff" style="background: #ffffff; padding-top: 50px; padding-bottom: 50px;">
																	<table width="100%" cellpadding="0" cellspacing="0" border="0">
																		<tbody>
																			<tr>
																				<td style="font-family: Courier, Courier New, monospace, Arial; font-weight: bold; font-size: 28px; line-height: 32px; color: #358CD3; text-align: center; padding-bottom: 25px; padding-left: 25px; padding-right: 12px;">
																					Hello [user-name],
																				</td>
																			</tr>
																			<tr>
																				<td style="font-family: Courier, Courier New, monospace, Arial; font-weight: bold; font-size: 24px; line-height: 38px; color: #358CD3; text-align: center; padding-bottom: 25px; padding-left: 25px; padding-right: 12px;">
																					Thanks for getting in touch
																				</td>
																			</tr>
																			<tr>
																				<td style="font-family: Courier, Courier New, monospace, Arial; font-weight: normal; font-size: 20px; line-height: 28px; color: #222222; text-align: center; padding-bottom: 30px; padding-left: 25px; padding-right: 25px;">
																					We have received your inquiry. Happy to have you at our precious client's list. One of our sales representatives will be in touch with you soon. till then stay tuned with the updates from KrishaWeb...
																				</td>
																			</tr>
																			<tr>
																				<td height="20"></td>
																			</tr>
																			<tr>
																				<td>
																					<div style="text-align: center;">
																						<a href="[blog_page]" style="display: inline-block; padding: 12px 20px 12px 20px; background: #358CD3; color: #ffffff; font-size: 20px; text-decoration: none; font-family: Courier, Courier New, monospace, Arial; font-weight: bold; text-transform: uppercase; letter-spacing: 0.050em;">fresh from blog</a>
																					</div>
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
											<?php if ( $this->option ) : ?>
											<tr>
												<td bgcolor="#F6F6F6" style="padding: 15px;">
													<table cellpadding="0" cellspacing="0" width="100%">
														<tr>
															<td>
																<a href="[_site_url]" target="_blank" style="display: inline-block;"><img src="<?php echo esc_url( $this->option['cf7_logo'] ); ?>" alt=""></a>
															</td>
															<?php if ( $this->option['cf7_phone'] || $this->option['cf7_email'] ) : ?>
																<td style="text-align: right;">
																	<?php if ( $this->option['cf7_email'] ) : ?>
																		<div style="margin-bottom: 5px;">
																			<a href="mailto:<?php echo $this->option['cf7_email']; ?>" style="color: #ababab; font-family: Courier, Courier New, monospace, Arial; font-size: 16px; display: inline-block; text-decoration: none;"><?php echo $this->option['cf7_email']; ?></a>
																		</div>
																	<?php endif; ?>
																	<?php if ( $this->option['cf7_phone'] ) : ?>
																		<div>
																			<a href="tel:<?php echo preg_replace( '/[^0-9]/', '', $this->option['cf7_phone'] ); ?>" style="color: #ababab; font-family: Courier, Courier New, monospace, Arial; font-size: 16px; display: inline-block; text-decoration: none;"><?php echo $this->option['cf7_phone']; ?></a>
																		</div>
																	<?php endif; ?>
																</td>
															<?php endif; ?>
														</tr>
													</table>
												</td>
											</tr>
										<?php endif; ?>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td style="padding-top: 10px;">
				<div style="width: 100%; max-width: 620px; margin: 0 auto;">
					<table width="100%" cellpadding="0" cellspacing="0" border="0" style="">
						<tr>
							<td style="font-family: Courier, Courier New, monospace, Arial; font-weight: normal; font-size: 14px; line-height: 24px; color: #444444; text-align: left; padding-bottom: 30px; padding-top: 15px; padding-left: 15px; padding-right: 15px;">
								Copyright &copy; [date_year] <a href="[_site_url]" target="_blank" style="text-decoration: none; font-weight: bold; color: #444444">[_site_title]</a>
							</td>
							<td style="font-family: Courier, Courier New, monospace, Arial; font-weight: normal; font-size: 14px; line-height: 24px; color: #444444; text-align: right; padding-bottom: 30px; padding-top: 15px; padding-left: 15px; padding-right: 15px;">
								Powered by <a href="#" target="_blank" style="text-decoration: none; font-weight: bold; color: #444444;">Contact Form 7 Email Addon</a>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
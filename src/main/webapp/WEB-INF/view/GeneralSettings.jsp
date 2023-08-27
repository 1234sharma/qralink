<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin</title>
<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css" rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" media="all">
<link href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css" rel="stylesheet" />

<style media="all" type="text/css">@import "https://www.qralink.com/admin/css/css/admin.css";</style>

<body>
<br/>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Site Details</h2>
</div>
<div class="panel-body">
<div>
<div class="sct_right">
<form name="frm_siteconfig" action method="post" enctype="multipart/form-data" class="search_form general_form">
<div class="row">
<div class="col-md-6">
<div class="form-group">
<label><strong>Company Name:</strong> <span class="star">*</span></label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="company_name" value="" id="company_name" />
</span> <span class="system positive star" id="id_company_name"></span>
</div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Company Address : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="company_address" id="company_address" value="" />
</span><span class="system positive star" id="id_company_address"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Phone : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="phone" value="" id="pho" />
</span><span class="system positive star" id="id_phone"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Mobile : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="fax" value="" id="fax" />
</span><span class="system positive star" id="id_fax"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Email : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="email" id="email" value="" />
</span><span class="system positive star" id="id_email"></span> </div>
</div>
</div>
<div class="col-md-6" style="display:none">
<div class="form-group">
<label>site Url : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="site_url" id="site" value="" />
</span><span class="system positive star" id="id_site_url"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Support Email : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="support_email" id="support" value="" />
</span><span class="system positive star" id="id_support_email"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Webmaster Email : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="webmaster_email" id="webemail" value="" />
</span><span class="system positive star" id="id_webmaster_email"></span> </div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<label>Page Row : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="page_row" value="" id="pagenow" />
</span><span class="system positive star" id="id_page_row"></span> </div>
</div>
</div>
<div class=" col-md-6">
<label>Set Default Time Zone</label><span id="default_time_zone" class="alert"></span>
<select name="default_time_zone" class="form-control" id="default_time_zone"><option value="">(GMT -12:00) Eniwetok, Kwajalein</option><option value="">(GMT -11:00) Midway Island, Samoa</option><option value="Pacific/Honolulu">(GMT -10:00) Hawaii</option><option value="America/Anchorage">(GMT -9:00) Alaska</option><option value="America/Los_Angeles">(GMT -8:00) Pacific Time (US &amp; Canada)</option><option value="America/Denver">(GMT -7:00) Mountain Time (US &amp; Canada)</option><option value="America/Tegucigalpa">(GMT -6:00) Central Time (US &amp; Canada), Mexico City</option><option value="America/New_York">(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima</option><option value="America/Halifax">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option><option value="America/St_Johns">(GMT -3:30) Newfoundland</option><option value="America/Argentina/Buenos_Aires">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option><option value="Atlantic/South_Georgia">(GMT -2:00) Mid-Atlantic</option><option value="Atlantic/Azores">(GMT -1:00 hour) Azores, Cape Verde Islands</option><option value="Europe/Dublin">(GMT) Western Europe Time, London, Lisbon, Casablanca</option><option value="Europe/Belgrade">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option><option value="Europe/Minsk">(GMT +2:00) Kaliningrad, South Africa</option><option value="Asia/Kuwait">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option><option value="Asia/Tehran">(GMT +3:30) Tehran</option><option value="Asia/Muscat">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option><option value="Asia/Kabul">(GMT +4:30) Kabul</option><option value="Asia/Yekaterinburg">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option><option value="Asia/Kolkata" selected="selected">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option><option value="Asia/Dhaka">(GMT +6:00) Almaty, Dhaka, Colombo</option><option value="Asia/Krasnoyarsk">(GMT +7:00) Bangkok, Hanoi, Jakarta</option><option value="Asia/Brunei">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option><option value="Asia/Seoul">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option><option value="Australia/Darwin">(GMT +9:30) Adelaide, Darwin</option><option value="Australia/Canberra">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option><option value="Asia/Magadan">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option><option value="Pacific/Fiji">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option></select>
</div>
<div class="col-md-6">
<label>Auto Approval ON/off: <span class="star">*</span> </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" name="auto_approval" checked="checked" id="auto" />
on </li>
<li>
<input type="radio" value="" name="auto_approval" id="approval" />
off </li>
</ul>
</div>
</div>
<br/><br/>
<div class="col-md-12">
<div class="buttons"><br> <span class="button send_form_btn">
<input name="btn_sitconfig" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Payment Option</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="row">
<div class="sct_right">
<form name="frm_payment" action method="post" enctype="multipart/form-data" class="search_form general_form">
<fieldset>
<div class="forms">
<div class="col-md-6">
<div class="custom_admin_panel">
<div class="custom_admin_heading"> Paypal ON/OFF </div>
<div class="custom_admin_panel_body">
<div class>
<label>Paypal ON/off: <span class="star">*</span> </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" name="paypal_no_off" checked="checked" id="paypal" />
On </li>
<li>
<input type="radio" value="" name="paypal_no_off" id="pay" />
Off</li>
</ul>
<span class="system positive star"></span>
</div>
</div>
<div class>
<label>paypal email : <span class="star">*</span> </label>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="paypalemail" value="" id="sl" />
</span><span class="system positive star" id="paypalemail_alert"></span> </div>
</div>
</div>
</div>
</div>
<div class="col-md-6">
<div class="custom_admin_panel">
<div class="custom_admin_heading"> Razorpay ON/OFF </div>
<div class="custom_admin_panel_body">
<div class>
<label>Razorpay ON/off: <span class="star">*</span> </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" name="rozorpay_no_off" checked="checked" id="roz" />
On </li>
<li>
<input type="radio" value="" name="rozorpay_no_off" id="offroz" />
Off</li>
</ul>
<span class="system positive star"></span>
</div>
</div>
<div class>
<label>Razorpay Key : <span class="star">*</span> </label>
<span style="color:#F00; float: right;"> Note: <u><a href="https://dashboard.razorpay.com/">Get Razorpay Key </a></u></span>
<div class="inputs"> <span class>
<input type="text" class="text form-control" name="rozorpaykey" value id="rozor" />
</span><span class="system positive star" id="rozorpaykey_alert"></span> </div>
</div>
</div>
</div>
</div>
<div class="col-md-6">
</div>
<div class="col-md-6">
</div>
<div class="col-md-6">
</div>
<div class="col-md-12">
<div class="custom_admin_panel">
<div class="custom_admin_heading">Update Your Bank Details:</div>
<div class="custom_admin_panel_body">
<div class>
<label></label>
<div class> <span class style="width:600px;">
<textarea id="editor1" name="bankdetail_editor" class="form-control"><p>&nbsp;</p>

<p>&nbsp;</p>
</textarea>
<script>
	CKEDITOR.replace('editor1');
</script>
<script>      
	config.removePlugins= 'toolbar'
</script>
</span> <span class="system positive star" id="msg"></span> </div>
</div>
</div>
</div>
</div>
<div class="col-md-12">
<div class="buttons"> <span class="button send_form_btn">
<input name="btn_payment" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
<div class="panel panel-default" id="slsetting">
<div class=" panel-heading clearfix">
<h2 class="page-header">Social Link Setting</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="row">
<div class="sct_right">
<form name="social_link" action="#" method="post" enctype="multipart/form-data" class="search_form general_form">
<fieldset>
<div class="forms">
<div class="col-md-4">
<div class="custom_admin_panel">
<div class="custom_admin_heading"> Facebook Page Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> <span class>
<input type="text" class="text form-control"  id="face" name="facebook" value="" />
</span><span class="system positive star" id="user_name"></span> </div>
</div>
<div class>
<label>Facebook ON/off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<label for="status"></label>
<input type="radio" value="" name="facebook_status" checked="checked" id="status" />
on </li>
<li>
<label for="facebook_status1"></label>
<input type="radio" value="" name="facebook_status"  id="facebook_status1"/>
off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="custom_admin_panel">
<div class=" custom_admin_heading"> Twitter Page Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> <span class>
<input type="text" class="text form-control" id="twitt" name="twitter" value="" />
</span><span class="system positive star" id="name"></span> </div>
</div>
<div class>
<label>Twitter ON/off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" name="twitter_status"  id="twitstatus" checked="checked" />
on </li>
<li>
<input type="radio" value="" name="twitter_status" id="statustwitt" />
off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="custom_admin_panel">
<div class="custom_admin_heading"> Google+ Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> <span class>
<label for="gpluse"></label>	
<input type="text" class="text form-control" name="gpluse" id="gpluse" value="" />
</span><span class="system positive star" id="name"></span> </div>
</div>
<div class>
<label>Google+ On/Off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<label for="gpluse_status"></label>	
<input type="radio" value="" name="gpluse_status" id="gpluse_status" />
on </li>
<li>
<label for="gpluse_status1"></label>
<input type="radio" value="" name="gpluse_status" checked="checked" id="gpluse_status1" />
off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="custom_admin_panel">
<div class="custom_admin_heading"> Pinterest Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> <span>
<input type="text" class="text form-control" id="pinterest1" name="pinterest" value="" />
</span><span class="system positive star" id="name"></span> </div>
</div>
<div class>
<label for="pinterest_status1">Pinterest On/Off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" name="pinterest_status" id="pinterest_status1" checked="checked" />
on </li>
<li>
<label for="pinterest_status2"></label>  
<input type="radio" value="" id="pinterest_status2" />
off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="custom_admin_panel">
<div class=" custom_admin_heading"> Youtube Page Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> 
<span class=""><input type="text" class="text form-control" id="myyoutube" name="youtube" value="">
</span><span class="system positive star" id="name"></span> </div>
</div>
<div class>
<label for="myyoutube">Youtube ON/off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
<input type="radio" value="" id="myyoutube_on_off" name="youtube_on_off" checked="checked" />
on </li>
<li>
<input type="radio" value="" id="myyoutube" name="youtube_on_off" />off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<div class="custom_admin_panel">
<div class=" custom_admin_heading"> Linkedin Page Name :  </div>
<div class="custom_admin_panel_body">
<div class="form-group">
<div class="inputs"> <span class>
 <label for="linkld1"></label> 
<input type="text" class="text form-control" name="c" id="linkld1" value="">
</span><span class="system positive star" id="name"></span> </div>
</div>
<div class>
<label>linkedin ON/off:  </label>
<div class="inputs">
<ul class="set-left-li padd_left_ul">
<li>
 <label for="linkld"></label>
<input type="radio" value="" name="linkedin_on_off" checked="checked" id="linkld" />
on </li>
<li>
<label for="linkedin_on_off1"></label>  
<input type="radio" value="" name="linkedin_on_off" id="linkedin_on_off1" />
off</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-md-12">
<div class="buttons"> <span class="button send_form_btn">
<input name="btn_social" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">SMTP Mail Configuration</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class>
<div class="sct_right">
<form name="smtp_mail_setting" action="#" method="post" enctype="multipart/form-data">
<table class="table-striped table table-condensed table-responsive" style="border:1px solid #ccc;" cellpadding="3" cellspacing="3" width="100%" border="0">
<tr class="bg">
<td class="first set-width" style="text-align:left;" width="15%"><strong>Mail On/Off &nbsp;: </strong></td>
<td class="last"><input type="radio" value="Y" name="smtp_onoff" id="smtponoff" checked="checked" />
<strong>on </strong>
<input type="radio" value="N" name="smtp_onoff" id="smtp_onoff1" />
<strong>off</strong>
</td>
<td><div id="user_name"></div></td>
</tr>
<tr class="bg">
<td class="first  set-width" style="text-align:left;"><strong>Port &nbsp;:</strong></td>
<td class="last"><input type="text" class="form-control" id="smtp_port1" name="smtp_port" value="" />
&nbsp;<small style="color:#F00; ">(Sets SMTP Port. Default Port is 25)</small></td>
<td><div id="alert_smtp_port"></div>
</td>
</tr>
<tr class="bg">
<td class="first  set-width" style="text-align:left;"><strong>Secur &nbsp;:</strong></td>
<td class="last"><input type="text"  id ="smtp" class="form-control" name="smtp_secure" value="" />
&nbsp;<small style="color:#F00;">(Options are "", "ssl" or "tls")</small></td>
<td><div id="alert_smtp_secure"></div>
</td>
</tr>
<tr class="bg">
<td class="first  set-width" style="text-align:left;"><strong>Host &nbsp;:</strong></td>
<td class="last"><input type="text" class="form-control" id= "smtp_host02" name="smtp_host" value="" />
&nbsp;<small style="color:#F00; ">(SMTP server)</small></td>
<td><div id="alert_smtp_host"></div>
</td>
</tr>
<tr class="bg">
<td class="first  set-width" style="text-align:left;"><strong>User Name &nbsp;:</strong></td>
<td class="last"><input type="text" class=" form-control" name="smtp_user_name" id="usernam" aria-label="user" value="" />
&nbsp;<small style="color:#F00; ">(Sets SMTP username.)</small></td>
<td><div id="alert_smtp_user_name"></div>
</td>
</tr>
<tr class="bg">
<td class="first  set-width" style="text-align:left;"><strong> Password &nbsp;:</strong></td>
<td class="last"><input type="text" class=" form-control" id="smtp_pass" name="smtp_password" value="" />
&nbsp;
<ssmallpan style="color:#F00; ">
(Sets SMTP password.)</small></td>
<td><div id="alert_smtp_password"></div>
</td>
</tr>
</table>
<div class>
<div class="buttons"> <span class="button send_form_btn"><span></span>
<input name="btn_smtp_setting" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</form>
</div>
</div>
</div>
</div>
<div class="panel panel-default" id="goosetting">
<div class=" panel-heading clearfix">
<h2 class="page-header">Google Setting</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="row">
<div class="sct_right">
<form name="google_setting" action="#" method="post" enctype="multipart/form-data" class="search_form general_form">
<fieldset>
<div class="forms">
<div class="col-md-6">
<label>Google Map API key :</label>
<div class="inputs">
<input type="text" class="form-control" name="google_map_key" id="mapkey" value="" plceholder="Google Map V3 JS key" />
<span class="system positive star" id="name"></span>
</div>
<a href="https://code.google.com/apis/console/" target="_blank">Generate new google map api key here</a>
</div>
<div class="col-md-6">
<label>Google Webmaster Verification Code :</label>
<div class="inputs">
<input type="text" class="form-control" name="google_verification"  id="google" value="" plceholder />
<span class="system positive star" id="name"></span>
</div>
<a href="https://www.google.com/webmasters/tools/home?hl=en" target="_blank">Get Your Google Webmaster Verification Meta Code Signup Now</a>
</div>
<div class="col-md-12">
<label>Google Analytic's Code:</label>
<div class="inputs"> 
<textarea class="form-control" id="google_analytic" name="google_analytic" cols="33" rows="8"></textarea>
<span class="system positive star"></span>
</div>
<a href="https://www.google.com/analytics/home/?hl=en" target="_blank">Get Your Get Your Google Analytical Code Signup Now</a>
</div>
<div class="col-md-6">
<label for="google_addsense_01">Google Adsense ID :</label>
<div class="inputs">
<input type="text" class="form-control" id="google_addsense_01" name="google_addsense" value="" />
<span class="system positive star" id="name"></span>
</div>
<a href="https://www.google.com/adsense" target="_blank">Get Your Google Google Adsense ID Signup Now</a>
</div>
<div class="col-md-6">
<label for="copyright_1">copyright information :</label>
<div class="inputs">
<input type="text" class="form-control" id="copyright_1" name="copyright" value="All right reserved by Qralink.com" />
<span class="system positive star" id="name"></span>
</div>
</div>
<div class="col-md-12">
<div class="buttons margin_top_10"> <span class="button send_form_btn">
<input name="btn_google" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>

<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Site Status</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="col-md-12">
<div class="sct_right">
<form name="sitestatus" action="#" method="post" enctype="multipart/form-data">
<table class="listing form table-striped table-bordered table-responsive" cellpadding="3" cellspacing="3">
<tr class="bg">
<td class="first" style="text-align:right"><strong> &nbsp;&nbsp;&nbsp;Site On/Off: </strong></td>
<td class="last"> on:
<input type="radio" value="Y" name="site_onoff" checked="checked" id="site" />
off:
<input type="radio" value="N" name="site_onoff" id="siten" />
<span class="star">*</span>
</td>
<td><div id="user_name"></div></td>
</tr>
<tr class="bg">
<td class="first" style="text-align:right"><strong>Custom Message :</strong></td>
<td class="last"><textarea class="form-control" name="under_construction" cols="100" rows="8" id="area1">site is under construction</textarea></td>
<td><div id="new_pass"></div></td>
</tr>
</table>
<br/>
<div class="row">
<div class="buttons"> <span class="button send_form_btn"><span>&ensp; &ensp; &ensp;</span>
<input name="btn_sitestatus" type="submit" class="btn btn-primary" value="Submit" />
</span> </div>
</div>
</form>
</div>
</div>
</div>
</div>
<div class="panel panel-default">
<div class=" panel-heading clearfix">
<h2 class="page-header">Conformation Email On/Off</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="col-md-12">
<div class="sct_right">
<table class="listing form" cellpadding="3" cellspacing="3">
<form name="conformation_email" action="#" method="post" enctype="multipart/form-data">
<tr>
<td><strong>Conformation Email On/Off:</strong></td>
<td><input type="radio" name="conformatioemail_onoff" value="on" id="conformatioemail_onoff" size="10" checked="checked" />
:on </td>
<td><input type="radio" name="conformatioemail_onoff" id="conformatioemail_onoff" value="off" size="10" />
:off </td>
</tr>
<tr>
<td>&ensp;</td>
</tr>
<tr>
<td colspan="3"><div class="row">
<div class="buttons"> <span class="button send_form_btn"><span>&ensp; &ensp; &ensp;</span>
<input name="btn_email" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div></td>
</tr>
</form>
</table>
</div>
</div>
</div>
</div>
<div class="panel panel-default" id="chnglogoo">
<div class=" panel-heading clearfix">
<h2 class="page-header">Change Logo</h2>
</div>
<div class="panel-body">
<div class="row">
</div>
<div class="col-md-12">
<div class="sct_right">
<form name="changelogo" action method="post" enctype="multipart/form-data">
<input type="file" name="logo" id="logo" />
<input type="hidden" value="1651963462.png" name="hiddenlogo" />
<img src="https://www.qralink.com/images/logofolder/1651963462.png" width="285" height="70" alt=""/>
<div class="row"> <br/>
<div class="buttons"> <span class="button send_form_btn"><span>&ensp; &ensp; &ensp;</span>
<input name="btn_logo" class="btn btn-primary" type="submit" value="Submit" />
</span> </div>
</div>
</form>
</div>
</div>
</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Admin</title>

<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	media="all">
<link
	href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />
<style media="all" type="text/css">
@import "https://www.qralink.com/admin/css/css/admin.css";
</style>

</head>
<body>

	<div>
		<div class="row">
			<div class="col-lg-12">
				<div class="site_heading_box">Today Approval</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="panel  panel-success ">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-thumbs-o-up fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">(0/0)</div>
								<div>Approval Products</div>
							</div>
						</div>
					</div>
<!-- 					//href="https://www.qralink.com/ProductApproved" -->
					<a>
						<div>
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel  panel-info ">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-rss fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">(0/0)</div>
								<div>Approval Trade Buy</div>
							</div>
						</div>
					</div>
					
<!-- 					<a href="https://www.qralink.com/TradeBuyApproved"> -->
                         <a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-red">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-line-chart fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">(0/0)</div>
								<div>Approval Trade Sell</div>
							</div>
						</div>
					</div>
<!-- 					<a href="https://www.qralink.com/TrdeApproved"> -->
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-user-plus fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">(0/0)</div>
								<div>Approval Customer</div>
							</div>
						</div>
					</div>
<!-- 					<a href="https://www.qralink.com/CustmoreApproved"> -->
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details </span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="site_heading_box">All Updates</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-user fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Users Registration</div>
							</div>
						</div>
					</div>
<!-- 					<a href="https://www.qralink.com/PerDayUser"> -->
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-green">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-tasks fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Today Seller</div>
							</div>
						</div>
					</div>
<!-- 					<a href="https://www.qralink.com/CustomerView"> -->
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-yellow">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-phone fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Today Inquiry</div>
							</div>
						</div>
					</div>
<!-- 					<a href="https://www.qralink.com/MailView"> -->
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-red">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-shopping-cart fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Add Product</div>
							</div>
						</div>
					</div>
					<a>
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-warning">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-bar-chart fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Trade Leads Buy</div>
							</div>
						</div>
					</div>
					<a href="https://www.qralink.com/TradLeadBuy">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-yellow">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-random fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Trade Leads Sell</div>
							</div>
						</div>
					</div>
					<a href="https://www.qralink.com/TradLeadSell">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-danger ">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-bullhorn fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>Classifieds</div>
							</div>
						</div>
					</div>
					<a href="https://www.qralink.com/ClassifiedProducts">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-info ">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-tags fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">0</div>
								<div>RFQs</div>
							</div>
						</div>
					</div>
					<a href="https://www.qralink.com/ShowBuyRequirement">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="site_heading_box">Usefull Links</div>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="sct_right">
				<!--[if !IE]>start dashboard menu<![endif]-->
				<div class="dashboard_menu_wrapper">
					<ul class="dashboard_menu">
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/GeneralSetting" class="d1"><span>General
										Setting</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/UserView" class="d2"><span>User
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/CustomerView" class="d3"><span>Customer
										Managment</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ShowLocation" class="d4"><span>Location
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/SEO" class="d5"><span>SEO
										Tools and Settings</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/EMailTemplates" class="d6"><span>Email
										Settings and Templates</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/AllBanners" class="d7"><span>Ads
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/Advertisement" class="d71"><span>Advertisements
										Enquries</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ShowPayment" class="d8"><span>Payment
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/MailView" class="d9"><span>Inquiry
										Box</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/CategoryView/sell" class="d10"><span>Categories</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/StaticPage" class="d16"><span>Static
										Page List</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/TrdeLeadCategories" class="d12"><span>Trade
										Leads Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/Products" class="d13"><span>Products
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/HomeBanner" class="d15"><span>Homepage
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/Career" class="d17"><span>Franchise
								</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/Import" class="d52"><span>Excel
										Import</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/Export" class="d51"><span>Excel
										Export</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ShowCurrency" class="d61"><span>Currency
										Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/GeneralSetting#slsetting"
									class="d62"><span>Social Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/GeneralSetting#goosetting"
									class="d63"><span>Google Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/GeneralSetting#chnglogoo"
									class="d64"><span>Logo Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/GeneralSetting#mempckge"
									class="d65"><span>Member Package Management</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/PerDayUser" class="d66"><span>Company
										Statistics</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/PerDayUser" class="d67"><span>User
										Statistics</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/NewslLst" class="d68"><span>News</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ShowTrades" class="d69"><span>Trade
										Shows Manage</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/SuccessStorie" class="d70"><span>Success
										Stories</span></a>
							</div>
						</div>
						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ViewStaffUsers" class="d72"><span>Staff
										Member Management</span></a>
							</div>
						</div>

						<div class="col-md-2">
							<div class="bor-1">
								<a href="https://www.qralink.com/ProductApproved" class="d11"><span>Approval
										Center</span></a>
							</div>
						</div>
					</ul>
				</div>
				<!--[if !IE]>end dashboard menu<![endif]-->
			</div>
		</div>
	</div>
</body>
</html>

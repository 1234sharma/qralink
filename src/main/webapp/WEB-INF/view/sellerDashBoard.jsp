<%@page import="com.qraAdmin.model.UserDetail"%>
<%@page import="com.qraAdmin.model.ProductBean"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css"
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.title {
	color: grey;
	font-size: 18px;
}

button {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

a {
	text-decoration: none;
	font-size: 22px;
	color: black;
}

button:hover, a:hover {
	opacity: 0.7;
}
</style>
</head>
<body>
	<%@ include file="/responsivenav.jsp"%>
	<%
	List<ProductBean> productlist = (List<ProductBean>) request.getAttribute("myproduct");
	List<ProductBean> quotations = (List<ProductBean>) request.getAttribute("quotations");
	UserDetail user = (UserDetail) request.getAttribute("user");
	%>
	<div class="row mt-4">
		<div class="col-lg-3 mt-4">
		<div class="row">
		<div class="col-lg-12">
			<div class="card p-2">
			<div class="card-header">User Detail</div>
			<div>
			<div class="container">
				<i class="fa fa-users fa-5x mt-5" syle="" aria-hidden="true"></i>
				<h4 class="mt-3">Hi <%=user.getUsername()%></h4>
				<p class="title mt-2"><%=user.getEmail()%></p>
				<p class"mt-5"><%=user.getMobile()%></p>
 				<a class="mt-5" href="#"><i class="fa fa-dribbble" ></i></a> <a class="mt-5" href="#"><i 
 					class="fa fa-twitter"></i></a> <a class="mt-5" href="#"><i
 					class="fa fa-linkedin"></i></a> <a class="mt-5" href="#"><i 
 					class="fa fa-facebook"></i></a>
					<button class="btn btn-primary btn-sm mt-4">Update profile</button>
			 <div class="card-header mt-4"><i class="fa fa-location-arrow" syle="" aria-hidden="true"></i> City & State</div>
			     <h6 class="mt-3"><%=user.getCity() %> , <%=user.getState() %></h6> 
			 <div class="card-header mt-4"><i class="fa fa-map-marker" syle="" aria-hidden="true"></i> Country</div>
			     <h6 class="mt-3"><%=user.getCountry() %></h6>
			</div>
			</div>
			</div>
			</div>
			</div>
		</div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-lg-12">
					<div class="site_heading_box">Today Approval</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">My Products</div>
						<div class="card-body">
							<h5 class="card-title">My Products</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=productlist.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="/productList" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">Customer Quotations</div>
						<div class="card-body">
							<h5 class="card-title">Customer Quotations</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=quotations.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel  panel-info "> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-rss fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge"> -->
<%-- 										(<%=quotations.size()%>) --%>
<!-- 									</div> -->
<!-- 									<div>Customer Quotations</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->

<!-- 											<a href="https://www.qralink.com/TradeBuyApproved"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-red"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-line-chart fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">(0/0)</div> -->
<!-- 									<div>Approval Trade Sell</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 											<a href="https://www.qralink.com/TrdeApproved"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-primary"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-user-plus fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">(0/0)</div> -->
<!-- 									<div>Approval Customer</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 											<a href="https://www.qralink.com/CustmoreApproved"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details </span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<div class="row">
				<div class="col-lg-12">
					<div class="site_heading_box">All Updates</div>
				</div>
			</div>
			<div class="row">
			<div class="col-md-3">
					<div class="card">
						<div class="card-header">My Products</div>
						<div class="card-body">
							<h5 class="card-title">My Products</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=productlist.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">Customer Quotations</div>
						<div class="card-body">
							<h5 class="card-title">Customer Quotations</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=quotations.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-primary"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-user fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">0</div> -->
<!-- 									<div>Users Registration</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 											<a href="https://www.qralink.com/PerDayUser"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-green"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-tasks fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">0</div> -->
<!-- 									<div>Today Seller</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 											<a href="https://www.qralink.com/CustomerView"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-yellow"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-phone fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">0</div> -->
<!-- 									<div>Today Inquiry</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 											<a href="https://www.qralink.com/MailView"> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="panel panel-red"> -->
<!-- 						<div class="panel-heading"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-xs-3"> -->
<!-- 									<i class="fa fa-shopping-cart fa-5x"></i> -->
<!-- 								</div> -->
<!-- 								<div class="col-xs-9 text-right"> -->
<!-- 									<div class="huge">0</div> -->
<!-- 									<div>Add Product</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<a> -->
<!-- 							<div class="panel-footer"> -->
<!-- 								<span class="pull-left">View Details</span> <span -->
<!-- 									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span> -->
<!-- 								<div class="clearfix"></div> -->
<!-- 							</div> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 				</div> -->
			</div>
			<!--[if !IE]>end dashboard menu<![endif]-->
		</div>
		</div>
	</div>
</body>
</html>
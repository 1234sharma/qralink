<%@page import="com.qraAdmin.model.QuotationBean"%>
<%@page import="com.qraAdmin.model.UserDetail"%>
<%@page import="com.qraAdmin.model.ProductBean"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashbaord</title>
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
	List<QuotationBean> approvedQuotations =(List<QuotationBean>) request.getAttribute("approvedQuotations");
	List<ProductBean> allproducts = (List<ProductBean>) request.getAttribute("allproducts");
	List<UserDetail> listOfAdmins = (List<UserDetail>) request.getAttribute("listOfAdmins");
	List<UserDetail> listOfBuyers = (List<UserDetail>) request.getAttribute("listOfBuyers");
	List<UserDetail> listOfSellers = (List<UserDetail>) request.getAttribute("listOfSellers");
	List<ProductBean> unapprovedProducts = (List<ProductBean>) request.getAttribute("unapprovedProducts");
	List<UserDetail> allusers = (List<UserDetail>) request.getAttribute("allusers");
	List<QuotationBean> unapprovedQuotation = (List<QuotationBean>) request.getAttribute("unapprovedQuotation");
	
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
						<div class="card-header">Products For Approval</div>
						<div class="card-body">
							<h5 class="card-title">Products For Approval</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=unapprovedProducts.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="/productListForApproval" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">Quote For Approval</div>
						<div class="card-body">
							<h5 class="card-title">Quote For Approval</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=unapprovedQuotation.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">Users</div>
						<div class="card-body">
							<h5 class="card-title">User</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=allusers.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="site_heading_box">All Updates</div>
				</div>
			</div>
			<div class="row">
			<div class="col-md-3">
					<div class="card">
						<div class="card-header">Users Registration</div>
						<div class="card-body">
							<h5 class="card-title">Users Registration</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=allusers.size()%>)
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
							<h5 class="card-title">Seller List</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=listOfSellers.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			 <div class="col-md-3">
					<div class="card">
						<div class="card-header">Buyer List</div>
						<div class="card-body">
							<h5 class="card-title">Buyer List</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=listOfBuyers.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="card">
						<div class="card-header">Add Product</div>
						<div class="card-body">
							<h5 class="card-title">Add Product</h5>
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-thumbs-o-up fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">
												(<%=allproducts.size()%>)
											</div>
										</div>
									</div>
						</div>
						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
<!-- 				<div class="col-md-3"> -->
<!-- 					<div class="card"> -->
<!-- 						<div class="card-header">Products</div> -->
<!-- 						<div class="card-body"> -->
<!-- 							<h5 class="card-title">Products</h5> -->
<!-- 									<div class="row"> -->
<!-- 										<div class="col-xs-3"> -->
<!-- 											<i class="fa fa-thumbs-o-up fa-5x"></i> -->
<!-- 										</div> -->
<!-- 										<div class="col-xs-9 text-right"> -->
<!-- 											<div class="huge"> -->
<%-- 												(<%=quotations.size()%>) --%>
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 						</div> -->
<!-- 						<a href="#" class="btn btn-primary">VIEW <i class="fa fa-arrow-circle-right"></i></a> -->
<!-- 					</div> -->
<!-- 				</div> -->
				
			<!--[if !IE]>end dashboard menu<![endif]-->
		</div>
		</div>
	</div>
</body>
</html>
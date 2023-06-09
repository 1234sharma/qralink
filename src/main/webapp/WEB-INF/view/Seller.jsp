<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Admin Dashboard</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<style type="text/css">
#centerinfo{
margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}
.tblinfo{
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

.tdinfo, .thinfo {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

.trinfo:nth-child(even) {
  background-color: #dddddd;
}

</style>
</head>

<body>
	<div class="container-fluid position-relative d-flex p-0">
		<!-- Sidebar Start -->
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-secondary navbar-dark">
				<a href="index.html" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary">
						<i class="fa fa-user-edit me-2"></i>DarkPan
					</h3>
				</a>
				<div class="d-flex align-items-center ms-4 mb-4">
					<div class="position-relative">
						<img class="rounded-circle" src="img/user.jpg" alt=""
							style="width: 40px; height: 40px;">
						<div
							class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
					</div>
					<div class="ms-3">
						<h6 class="mb-0">Qralink</h6>
						<span>QraAdmin</span>
					</div>
				</div>
				<div class="navbar-nav w-100">
					<a href="index.html" class="nav-item nav-link active"><i
						class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Company
							profile</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a
								href="{pageContext.request.contextPath}/jsp/company_profile.jsp"
								class="dropdown-item">Company Profile</a> <a
								href="typography.html" class="dropdown-item">Trade &
								production</a> <a href="element.html" class="dropdown-item">Information
								& Policies</a> <a href="button.html" class="dropdown-item">IMAGE
								GALLERY</a> <a href="typography.html" class="dropdown-item">
								CERTIFICATION ACHIEVED</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>QUATATIONS</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="button.html" class="dropdown-item">My Posted RFQ</a> <a
								href="typography.html" class="dropdown-item">My Submited
								Quotes</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>
							Product Management</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="button.html" class="dropdown-item"> Product List</a> <a
								href="addproductPage" class="dropdown-item">Add Product</a> <a
								href="element.html" class="dropdown-item">Product Group
								Management</a>
						</div>
					</div>

					<a href="table.html" class="nav-item nav-link"><i
						class="fa fa-table me-2"></i> My Machinary</a> <a href="chart.html"
						class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Selected
						Rfq</a> <a href="chart.html" class="nav-item nav-link"><i
						class="fa fa-chart-bar me-2"></i> My Wallet</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>For
							Saller</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="button.html" class="dropdown-item">All Categories</a> <a
								href="typography.html" class="dropdown-item">Suppliers</a> <a
								href="element.html" class="dropdown-item">Product</a> <a
								href="element.html" class="dropdown-item">Certified
								Machinery</a>
						</div>
					</div>

				</div>
			</nav>
		</div>
		<!-- Sidebar End -->


		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-user-edit"></i>
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i>
				</a>
				<!--<form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-dark border-0" type="search" placeholder="Search">
                </form>-->
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <span
							class="d-none d-lg-inline-flex">Inbox</span>
						</a>
					</div>
					<div class="nav-item dropdown"></div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2" src="img/user.jpg" alt=""
							style="width: 40px; height: 40px;"> <span
							class="d-none d-lg-inline-flex">QRALINK</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">Change Password</a> <a href="/logout"
								class="dropdown-item">Log Out</a>
						</div>
					</div>
				</div>
			</nav>
			<!-- Navbar End -->


			<!-- Sale & Revenue Start -->

			<div class="container-fluid pt-4 px-4"
				style="background-color: #9DA79F;">
				<div style="background-color: black; color: white">NEW STATE</div>
				<br>
				<div class="row g-4" id="backgroudchg">
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
						
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-bar fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-area fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					
				</div>
				<br>
			</div>


			<br> <br>
			<!-- Sale & Revenue End -->

			<div class="container-fluid pt-4 px-4"
				style="background-color: #9DA79F;">
				<div style="background-color: black; color: white">COMPANY USEFULL LINKS</div>
				<br>
				<div class="row g-4" id="backgroudchg">
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-line fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-bar fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Sale</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-area fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Today Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-xl-3">
						<div
							class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
							<i class="fa fa-chart-pie fa-3x text-primary"></i>
							<div class="ms-3">
								<p class="mb-2">Total Revenue</p>
								<h6 class="mb-0">$1234</h6>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>
			<!-- Sales Chart Start -->
			<br><br>
			
			
			<div class="container-fluid pt-4 px-4" style="background-color: #9DA79F">
	
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h3 class="mb-0" id="centerinfo">Company Information</h3>
					</div>
					<br>

					<table class="tblinfo">
						<tr class="trinfo">
							<th class="thinfo">Nature of Business</th>
							<th class="thinfo">Ownership Type</th>
							<th class="thinfo">Registered in</th>
							<th class="thinfo">Employees</th>
							<th class="thinfo">Business Type</th>
						</tr>
						<tr class="trinfo">
							<td class="tdinfo">Alfreds Futterkiste</td>
							<td class="tdinfo">Maria Anders</td>
							<td class="tdinfo">Germany</td>
							<td class="tdinfo">Centro comercial Moctezuma</td>
							<td class="tdinfo">Francisco Chang</td>
						</tr>
					</table>
				</div>
				<br>
			</div>
			<br><br>
			
			
			<!-- Recent Sales Start -->
			
			<div class="container-fluid pt-4 px-4" style="background-color: #9DA79F">
	
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h3 class="mb-0" id="centerinfo">Company Package Information</h3>
					</div>
					<br>

					<table class="tblinfo">
						<tr class="trinfo">
							<th class="thinfo">Your Member Package Name:</th>
							<th class="thinfo">Member Package Expire Date:</th>
							<th class="thinfo">Member Package Days in Remaining:</th>
						</tr>
						<tr class="trinfo">
							<td class="tdinfo">Silver</td>
							<td class="tdinfo">22-02-2024</td>
							<td class="tdinfo">271  Days</td>
						</tr>
					</table>
					<div style="background-color: #768A7E"><button style="color: red">Renew the plan</button><button style="color: red">Upgrade the plan</button></div>
				</div>
				<br>
			</div>
			<br><br>
			
			
			
			
			<div class="container-fluid pt-4 px-4" style="background-color: #9DA79F">
				<div class="bg-secondary text-center rounded p-4">
					<div class="d-flex align-items-center justify-content-between mb-4">
						<h6 class="mb-0">Top 5 Most Visited Products</h6>
						
					</div>
					<div class="table-responsive">
						<table
							class="table text-start align-middle table-bordered table-hover mb-0">
							<thead>
								<tr class="text-white">
									<th scope="col"><input class="form-check-input"
										type="checkbox"></th>
									<th scope="col">Date</th>
									<th scope="col">Invoice</th>
									<th scope="col">Customer</th>
									<th scope="col">Amount</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
								<tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
								<tr>
									<td><input class="form-check-input" type="checkbox"></td>
									<td>01 Jan 2045</td>
									<td>INV-0123</td>
									<td>Jhon Doe</td>
									<td>$123</td>
									<td>Paid</td>
									<td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<br><br>
			</div>
			
			<!-- Recent Sales End -->





			<!-- Footer Start -->
			<div class="container-fluid pt-4 px-4">
				<div class="bg-secondary rounded-top p-4">
					<div class="row">
						<div class="col-12 col-sm-6 text-center text-sm-start">
							&copy; <a href="#">QRALINK.COM</a>, All Right Reserved.
						</div>
						<div class="col-12 col-sm-6 text-center text-sm-end">
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a href=>DISONIC TECHNOVATION PVT LTD </a> <br>Distributed
							By: <a href="" target="_blank"></a>
						</div>
					</div>
				</div>
			</div>
			<!-- Footer End -->
		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!--     Template Javascript -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
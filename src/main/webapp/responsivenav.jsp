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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="style.css" rel="stylesheet"/>
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


<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<style type="text/css">
.scrollit {
    overflow:scroll;
    height:100px;
}

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

<body style="background-color: white">
	<div class="container-fluid position-relative d-flex p-0">
		<!-- Sidebar Start -->
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar  navbar-dark">
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
					<a href="/addproductPage" class="nav-item nav-link "><i
						class="fa fa-laptop me-2"></i>Add Product</a>
					<a href="/productList" class="nav-item nav-link "><i
						class="fa fa-laptop me-2"></i>My Products</a>
					<a href="/addproductPage" class="nav-item nav-link"><i
						class="fa fa-laptop me-2"></i>Request Quotes</a>	
					<div class="nav-item dropdown">
						<a href="" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Company
							profile</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a
								href="/CompanyProfile"
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
</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</body>
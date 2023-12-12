<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin Dashboard</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="style.css" rel="stylesheet" />
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<style>
body {
	margin: 0;
	font-family: Arial
}

.topnav1 {
	overflow: hidden;
	background-color: #333;
}

.topnav1 a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.active {
	background-color: #04AA6D;
	color: white;
}

.topnav1 .icon {
	display: none;
}

.dropdown1 {
	float: left;
	overflow: hidden;
}

.dropdown1 .dropbtn1 {
	font-size: 17px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.dropdown-content1 {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content1 a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.topnav1 a:hover, .dropdown1:hover .dropbtn1 {
	background-color: #555;
	color: white;
}

.dropdown-content1 a:hover {
	background-color: #ddd;
	color: black;
}

.dropdown1:hover .dropdown-content1 {
	display: block;
}

@media screen and (max-width: 600px) {
	.topnav1 a:not(:first-child), .dropdown1 .dropbtn1 {
		display: none;
	}
	.topnav1 a.icon {
		float: right;
		display: block;
	}
}

@media screen and (max-width: 600px) {
	.topnav1.responsive {
		position: relative;
	}
	.topnav1.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav1.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
	.topnav1.responsive .dropdown1 {
		float: none;
	}
	.topnav1.responsive .dropdown-content1 {
		position: relative;
	}
	.topnav1.responsive .dropdown1 .dropbtn1 {
		display: block;
		width: 100%;
		text-align: left;
	}
}
</style>
</head>
<body>
<%
String username=session.getAttribute("username")==null?null:(String)session.getAttribute("username");
String usertype=(String)session.getAttribute("usertype")==null?null:(String)session.getAttribute("usertype");
%>
<div class="topnav1 mt-2" id="myTopnav">
		<div class=row>
			<div class="col-md-9">

				<a href="/home" class="fa fa-home">HOME</a>
<!-- 				 <a href="/productList" class="fa fa-list">Trending Categories</a>  -->
				 <a href="/postbyreq" class="fa fa-handshake-o">Post By Req</a>
				 <div class="dropdown1">
					<button class="dropbtn1">
						Categories <i class="fa fa-caret-down"></i>
					</button>
					<div class="dropdown-content1">
						<a href="/">Categories</a>
						 <a href="/subCategoryListHome">Sub Categories</a> 
						 <a href="/microCategoryListHome">Micro Categories</a>
					</div>
				</div>
				<a href="#about">About</a> 
				<%if(usertype!=null&&usertype.equalsIgnoreCase("seller")){ %>
				<a href="/sellerDashboradpage" class="fa fa-laptop">Seller Dashboard</a>
				<%}else if(usertype!=null && usertype.equals("admin")){ %>
				<a href="/adminDashboard" class="fa fa-laptop">Admin DashBoard</a>
				<%} %>
				
				<a href="javascript:void(0);" style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
			</div>
			<div class="col-md-3 text-primary">
           <%if(username==null||username.isEmpty()) {%>
				 <a href="/registerPage" class="fa fa-plus">Join Free</a>
				 <%} %>
				 <%if(username==null||username.isEmpty()) {%>
				<a href="/loginPage" class="fa fa-laptop">Sign in</a>
				<%} else{%>
				<a href="/logout" class="fa fa-laptop">Sign out</a>
				<%} %>
			</div>
			
		</div>
	</div>
<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav1") {
				x.className += " responsive";
			} else {
				x.className = "topnav1";
			}
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</body>
</html>
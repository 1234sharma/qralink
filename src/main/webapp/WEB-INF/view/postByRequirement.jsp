<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/logofolder/1651963462.png">
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/exp_stlye_common.css">
<link rel="stylesheet"
	href="https://www.qralink.com/assets/css/shop-homepage.css">
<link
	href="https://www.qralink.com/assets/eagle_theme/typehead/typeahead.js-bootstrap.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/awesomplete.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/themes/css/style1.css" media="all" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/style1.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/style.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/tradestyle.css"
	media="all" />
<link rel="stylesheet"
	href="https://www.qralink.com/assets/new_css/css/bootstrap-tagsinput.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/style2.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/new_css/css/lumos.css" media="all" />
<link rel="stylesheet" type="text/css"
	href="https://www.qralink.com/assets/themes/css/mtree.css" media="all" />
<title>B2B Portal Manufacturers Suppliers Exporters Importers
	-Qralink.com</title>
<meta name="description"
	content="Qralink is the fastest-growing B2B Portal providing Msme Platform for Small and Medium businesses to promote their business, products and services online. We empower our registered buyers and sellers around the world to start and grow their businesses with our smart marketing solutions and tools and award-winning support." />
<meta name="keywords"
	content="B2B Portal ,B2B Marketplace  ,Suppliers  , Online Marketplace, Online Printing Marketplace ,Online Packaging Marketplace" />
<meta name="google-site-verification"
	content="google-site-verification: google976d61c14e3aaa24.html" />
</head>
<body>
	<%@ include file="/headerpage.jsp"%>
	<%@ include file="/homeNavbar.jsp"%>

	<div class="container">
		<div class="card">
			<h5 class="card-header">Create Quote</h5>
			<div class="card-body">
				<div class="container mt-5">
					<div class="col-md-10 col-xs-12">
						<div class="five columns aligncenter text">
							<div class="row">
								<div class="col-lg-12">
									<h4 class="text-info">
										Product Info
										</h3>
								</div>
							</div>
						</div>
					</div>
					<form name="requirement_form" id="requirement_form" method="post"
						action="postbyreqquote" enctype="multipart/form-data">
						<div class="col-md-6 col-xs-12">
							<label>Product/Services :</label>
							<div class="five columns aligncenter text">
								<div class="five columns aligncenter text autocomplete">
									<input id="myInput" type="text"
										placeholder="Please enter the product / service you want to buy."
										name="product_name" placeholder="Country" value size="50"
										class="form-control">
								</div>
								<span id="alert_procut"></span>
							</div>
							<br />
						</div>
						<div class="row">
							<div class="col-md-4 col-xs-12">
								<div class="form-group">
									<label>Estimated Quantity :</label>
									<div class="five columns aligncenter text">
										<input type="text" class="form-control"
											placeholder="In Units, Tons, Pices, etc."
											name="estimated_quantity" size="30" align="left" /><span
											id="alert_estimated_quantity"></span>
									</div>
								</div>
							</div>
							<div class="col-md-5 col-xs-12">
								<div class="form-group">
									<label>Type :</label> <select name="quantity_type"
										class="form-control">
										<option>Select</option>
										<option value="U">Units</option>
										<option value="T">Tones</option>
										<option value="P">Pices</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-10 col-xs-12 mt-3"></div>
						<div class="col-md-10 col-xs-12">
							<div class="five columns aligncenter text">
								<div class="row">
									<div class="col-lg-12">
										<h4 class="text-info">
											Your Contact Details
											</h3>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 col-xs-12" style="margin-top: 18px;">
							<hr>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<label>Email :</label>
								<div class="five columns aligncenter text">
									<input type="text" placeholder="Your Email ID" name="email"
										size="50" value class="form-control" /><span id="alert_email"></span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<label>Contact Person:</label>
								<div class="five columns aligncenter text">
									<input type="text" placeholder="Full Name" name="name" value
										size="50" class="form-control" /><span id="alert_name"></span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="form-group">
								<label>Company:</label>
								<div class="five columns aligncenter text">
									<input type="text" placeholder="Company Name"
										name="company_name" value size="50" class="form-control" /><span
										id="alert_company_name"></span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<label>Mobile No. :</label>
							<div class="five columns aligncentertext">
								<input type="text" placeholder="Mobile Number" name="mobile"
									size="50" class="form-control" value
									oninput="this.value = this.value.replace(/[^0-9.]/g, ''); this.value = this.value.replace(/(\..*)\./g, '$1');" />
								<br /> <span id="alert_mobile"></span>
							</div>
						</div>
						<div class="col-md-10 col-xs-12" style="margin-top: 0px;"></div>
						<div>&ensp;</div>
						<div class="textr">
							<div class>
								<button type="submit" class="btn btn-warning btn-lg btn-block">Post
									Buy Requirment</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


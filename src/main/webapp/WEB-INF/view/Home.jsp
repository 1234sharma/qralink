<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<title>QRALINK</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/stylehome.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
<style type="text/css">
#imgsize {
	margin-left: 0rem;
	width: 12rem;
	
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

</style>
</head>
<!-- body -->
<body class="main-layout" style="background-color:powderblue;">
	<!-- header -->
	<header>
		<!-- header inner -->
		<div class="header">
			<div class="header_top d_none1">
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<ul class="conta_icon ">
								<li id="imgsize"><a><img
										src="${pageContext.request.contextPath}/img/qralink-img.png"
										alt="#" />Call Us: +91-9158119158</a></li>
							</ul>
						</div>
						<div class="col-md-4">
							<ul class="social_icon">
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i> </a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"> <i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i> </a></li>
							</ul>
						</div>
						<div class="col-md-4">
							<div class="se_fonr1">
								<form action="#">
									<div class="select-box"
										style="padding-right: 10px; width: 10rem">
										<label for="select-box1" class="label select-box1"><span
											class="label-desc">BUYERS</span> </label> <select id="select-box1"
											class="select">
											<option value="Choice 1">Post Buy Requirment</option>
											<option value="Choice 1">By Product List</option>
											<option value="Choice 2">By Supplier</option>
											<!--                                     <option value="Choice 3">Neverl</option> -->
										</select>
									</div>
								</form>
								<div class="se_fonr1">
									<form action="#">
										<div class="select-box"
											style="padding-right: 10px; width: 10rem">
											<label for="select-box1" class="label select-box1"><span
												class="label-desc">SUPPLIERS</span> </label> <select
												id="select-box1" class="select">
												<option value="Choice 1">Buy Lead</option>
												<option value="Choice 1">Supplier Memberships</option>
												<option value="Choice 2">Learning Center</option>
												<option value="Choice 3">Certified Machinary</option>
												<option value="Choice 1">Business Plan Suppliers</option>
												<option value="Choice 2">Starter Plan Suppliers</option>
												<option value="Choice 3">Platinum Plan Suppliers</option>
											</select>
										</div>
									</form>
								</div>
								<div class="se_fonr1">
									<form action="#">
										<div class="select-box"
											style="padding-right: 10px; width: 5rem">
											<label for="select-box1" class="label select-box1"
												style="color: #00008B">HELP</label> <select id="select-box1"
												class="select">
												<option value="Choice 1">I Am a Supplier</option>
												<option value="Choice 1">I Am a New User</option>
												<option value="Choice 2">How to Sell</option>
												<option value="Choice 3">How to Buy</option>
											</select>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>

			<div class="header_bottom">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-8">
							<nav class="navigation navbar navbar-expand-md navbar-dark ">
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#navbarsExample04"
									aria-controls="navbarsExample04" aria-expanded="false"
									aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse" id="navbarsExample04">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item "><a class="nav-link"
											href="index.html">HOME</a></li>
										<li class="nav-item"><a class="nav-link"
											href="about.html">SIGN IN</a></li>
										<li class="nav-item"><a class="nav-link"
											href="products.html">JOIN FREE</a></li>
										<li class="nav-item"><a class="nav-link"
											href="fashion.html">TRENDING CATEGORIES</a></li>
										<li class="nav-item"><a class="nav-link" href="news.html">POST
												BUY REQUIREMENT</a></li>
										<li class="nav-item"><a class="nav-link"
											href="contact.html">CONTACT US</a></li>
									</ul>
								</div>
							</nav>
						</div>
						<!--                      <div class="col-md-4"> -->
						<!--                         <div class="search"> -->
						<!--                            <form action="/action_page.php"> -->
						<!--                               <input class="form_sea" type="text" placeholder="Search" name="search"> -->
						<!--                               <button type="submit" class="seach_icon"><i class="fa fa-search"></i></button> -->
						<!--                            </form> -->
						<!--                         </div> -->
						<!--                      </div> -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header inner -->
	<!-- end header -->
	<!-- banner -->
<!-- 	<section class="banner_main"> -->
		<div class="slideshow-container">

			<div class="mySlides fade">
<!-- 				<div class="numbertext">1 / 3</div> -->
				<img src="${pageContext.request.contextPath}/img/qralink-img.png" style="width: 100%">
<!-- 				<div class="text">Caption Text</div> -->
			</div>

			<div class="mySlides fade">
<!-- 				<div class="numbertext">2 / 3</div> -->
				<img src="${pageContext.request.contextPath}/img/qralink-img.png" style="width: 100%">
<!-- 				<div class="text">Caption Two</div> -->
			</div>

			<div class="mySlides fade">
<!-- 				<div class="numbertext">3 / 3</div> -->
				<img src="${pageContext.request.contextPath}/img/qralink-img.png" style="width: 100%">
<!-- 				<div class="text">Caption Three</div> -->
			</div>

		</div>
		<br>

		<div style="text-align: center">
			<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
		</div>

<!-- 	</section> -->
	<!-- end banner -->
	<!-- six_box section -->
	<br>
	<h1 class="six_box11" style="background-color:#000000; color: white; text-align: center;">TRENDING CATEGORIES</h1>
	<div class="six_box">
		<div class="container-fluid" >
			<div class="row">
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/shoes.png" alt="#" /></i> <span>Shoes</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/underwear.png" alt="#" /></i> <span>underwear</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/pent.png" alt="#" /></i> <span>Pante &
							socks</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/t_shart.png" alt="#" /></i> <span>T-shirt
							& tankstop</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/jakit.png" alt="#" /></i> <span>cardigans
							& jumpers</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/helbet.png" alt="#" /></i> <span>Top &
							hat</span>
					</div>
				</div>
			</div>
		</div>
<!-- 		<div class="six_box11" style="background-color:#000000;"></div> -->
	</div>
	<br>
	<br>
	<h1 class="six_box11" style="background-color:#000000; color: white; text-align: center;">CATEGORIES</h1>
	<div class="six_box">
		<div class="container-fluid" >
			<div class="row">
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/shoes.png" alt="#" /></i> <span>Shoes</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/underwear.png" alt="#" /></i> <span>underwear</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/pent.png" alt="#" /></i> <span>Pante &
							socks</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/t_shart.png" alt="#" /></i> <span>T-shirt
							& tankstop</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx yellow_bg">
						<i><img src="images/jakit.png" alt="#" /></i> <span>cardigans
							& jumpers</span>
					</div>
				</div>
				<div class="col-md-2 col-sm-4 pa_left">
					<div class="six_probpx bluedark_bg">
						<i><img src="images/helbet.png" alt="#" /></i> <span>Top &
							hat</span>
					</div>
				</div>
			</div>
		</div>
<!-- 		<div class="six_box11" style="background-color:#000000;"></div> -->
	</div>
	<h1 class="six_box11" style="background-color:#000000;"></h1>
	<!-- end six_box section -->
	<!-- project section -->
	<div id="project" class="project">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Featured Products</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product_main">

					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/shoes1.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>


					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/shoes2.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/shoes3.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/shoes4.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/shoes5.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>


					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/tisat1.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/tisat2.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/tisat3.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/tisat4.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/tisat5.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>


					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/mix1.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box ">
						<div class="dark_white_bg">
							<img src="images/mix2.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/mix3.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/mix4.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="project_box">
						<div class="dark_white_bg">
							<img src="images/mix5.png" alt="#" />
						</div>
						<h3>Short Openwork Cardigan $120.00</h3>
					</div>

					<div class="col-md-12">
						<a class="read_more" href="#">See More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end project section -->
	<!-- fashion section -->
	<div class="fashion">
		<img src="images/fashion.jpg" alt="#" />
	</div>
	<!-- end fashion section -->
	<!-- news section -->
	<div class="news">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Letest News</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 margin_top40">
					<div class="row d_flex">
						<div class="col-md-5">
							<div class="news_img">
								<figure>
									<img src="images/news_img1.jpg">
								</figure>
							</div>
						</div>
						<div class="col-md-7">
							<div class="news_text">
								<h3>Specimen book. It has survived not only five</h3>
								<span>7 July 2019</span>
								<div class="date_like">
									<span>Like </span><span class="pad_le">Comment</span>
								</div>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 margin_top40">
					<div class="row d_flex">
						<div class="col-md-5">
							<div class="news_img">
								<figure>
									<img src="images/news_img2.jpg">
								</figure>
							</div>
						</div>
						<div class="col-md-7">
							<div class="news_text">
								<h3>Specimen book. It has survived not only five</h3>
								<span>7 July 2019</span>
								<div class="date_like">
									<span>Like </span><span class="pad_le">Comment</span>
								</div>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 margin_top40">
					<div class="row d_flex">
						<div class="col-md-5">
							<div class="news_img">
								<figure>
									<img src="images/news_img3.jpg">
								</figure>
							</div>
						</div>
						<div class="col-md-7">
							<div class="news_text">
								<h3>Specimen book. It has survived not only five</h3>
								<span>7 July 2019</span>
								<div class="date_like">
									<span>Like </span><span class="pad_le">Comment</span>
								</div>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end news section -->
	<!-- newslatter section -->
	<div class="newslatter">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-5">
					<h3 class="neslatter">Subscribe To The Newsletter</h3>
				</div>
				<div class="col-md-7">
					<form class="news_form">
						<input class="letter_form" placeholder=" Enter your email"
							type="text" name="Enter your email">
						<button class="sumbit">Subscribe</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- end newslatter section -->
	<!-- three_box section -->
	<div class="three_box">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="gift_box">
						<i><img src="images/icon_mony.png"></i> <span>Money
							Back</span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="gift_box">
						<i><img src="images/icon_gift.png"></i> <span>Special
							Gift</span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="gift_box">
						<i><img src="images/icon_car.png"></i> <span>Free
							Shipping</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end three_box section -->

	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="inror_box">
							<h3>INFORMATION</h3>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humour, or randomised words which don't look
								even slightly believable</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="inror_box">
							<h3>MY ACCOUNT</h3>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humour, or randomised words which don't look
								even slightly believable</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="inror_box">
							<h3>ABOUT</h3>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humour, or randomised words which don't look
								even slightly believable</p>
						</div>
					</div>
					<div class="col-md-3">
						<div class="inror_box">
							<h3>CONTACTS</h3>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humour, or randomised words which don't look
								even slightly believable</p>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p>
								� 2019 All Rights Reserved. Design by<a
									href="https://html.design/"> Free Html Templates</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- Javascript files-->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
	<!-- sidebar -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>
	
	<script type="text/javascript">
	let slideIndex = 0;
	showSlides();

	function showSlides() {
	  let i;
	  let slides = document.getElementsByClassName("mySlides");
	  let dots = document.getElementsByClassName("dot");
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	  setTimeout(showSlides, 2000); // Change image every 2 seconds
	}
	</script>
</body>
</html>


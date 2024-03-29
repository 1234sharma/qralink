<!DOCTYPE html>
<%@page import="com.qraAdmin.model.CategoryBean"%>
<%@page import="com.qraAdmin.DTO.ProductBeanDTO"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.text-bold {
	font-weight: 800;
}

text-color {
	color: #0093c4;
}

/* Main image - left */
.main-img img {
	width: 100%;
}

/* Preview images */
.previews img {
	width: 100%;
	height: 140px;
}

.main-description .category {
	text-transform: uppercase;
	color: #0093c4;
}

.main-description .product-title {
	font-size: 2.5rem;
}

.old-price-discount {
	font-weight: 600;
}

.new-price {
	font-size: 2rem;
}

.details-title {
	text-transform: uppercase;
	font-weight: 600;
	font-size: 1.2rem;
	color: #757575;
}

.buttons .block {
	margin-right: 5px;
}

.quantity input {
	border-radius: 0;
	height: 40px;
}

.custom-btn {
	text-transform: capitalize;
	background-color: #0093c4;
	color: white;
	width: 150px;
	height: 40px;
	border-radius: 0;
}

.custom-btn:hover {
	background-color: #0093c4 !important;
	font-size: 18px;
	color: white !important;
}

.similar-product img {
	height: 400px;
}

.similar-product {
	text-align: left;
}

.similar-product .title {
	margin: 17px 0px 4px 0px;
}

.similar-product .price {
	font-weight: bold;
}

.questions .icon i {
	font-size: 2rem;
}

.questions-icon {
	font-size: 2rem;
	color: #0093c4;
}

/* Small devices (landscape phones, less than 768px) */
@media ( max-width : 767.98px) {
	/* Make preview images responsive  */
	.previews img {
		width: 100%;
		height: auto;
	}
}
</style>
</head>
<body>
	<%@ include file="/headerpage.jsp"%>
	<%@ include file="/homeNavbar.jsp"%>
<% ProductBeanDTO product= (ProductBeanDTO)request.getAttribute("product"); 
   CategoryBean cat=(CategoryBean) request.getAttribute("category");
%>
	<div class="container my-5">
		<div class="row">
			<div class="col-md-5">
				<div class="main-img">
					<img class="img-fluid"
						src="/uploads/<%=product.getPic1()%>"
						alt="ProductS">
					<div class="row my-3 previews">
						<div class="col-md-3">
							<img class="w-100"
								src="/uploads/<%=product.getPic1()%>"
								alt="Sale">
						</div>
						<div class="col-md-3">
							<img class="w-100"
								src="/uploads/<%=product.getPic2()%>"
								alt="Sale">
						</div>
						</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="main-description px-2">
					<div class="category text-bold">Category: <%=cat.getCATEGORY_NAME()%></div>
					<div class="product-title text-bold my-3"><%=product.getProductdesc() %></div>


					<div class="price-area my-4">
						<p class="old-price mb-1">
							<del>$100</del>
							<span class="old-price-discount text-danger">(20% off)</span>
						</p>
						<p class="new-price text-bold mb-1"><%=product.getProductPrice() %></p>
						<p class="text-secondary mb-1">(Additional tax may apply on
							checkout)</p>

					</div>


<!-- 					<div class="buttons d-flex my-5"> -->
<!-- 						<div class="block"> -->
<!-- 							<a href="#" class="shadow btn custom-btn ">Wishlist</a> -->
<!-- 						</div> -->
<!-- 						<div class="block"> -->
<!-- 							<button class="shadow btn custom-btn">Add to cart</button> -->
<!-- 						</div> -->

<!-- 						<div class="block quantity"> -->
<!-- 							<input type="number" class="form-control" id="cart_quantity" -->
<!-- 								value="1" min="0" max="5" placeholder="Enter email" -->
<!-- 								name="cart_quantity"> -->
<!-- 						</div> -->
<!-- 					</div> -->




				</div>

				<div class="product-details my-4">
					<p class="details-title text-color mb-1">Product Details</p>
					<p class="description"><%=product.getProductdesc()%></p>
				</div>

				<div class="row questions bg-light p-3">
					<div class="col-md-1 icon">
						<i class="fa-brands fa-rocketchat questions-icon"></i>
					</div>
					<div class="col-md-11 text">Have a question about our
						products at E-Store? Feel free to contact our representatives via
						live chat or email.</div>
				</div>

<!-- 				<div class="delivery my-4"> -->
<!-- 					<p class="font-weight-bold mb-0"> -->
<!-- 						<span><i class="fa-solid fa-truck"></i></span> <b>Delivery -->
<!-- 							done in 3 days from date of purchase</b> -->
<!-- 					</p> -->
<!-- 					<p class="text-secondary">Order now to get this product -->
<!-- 						delivery</p> -->
<!-- 				</div> -->
<!-- 				<div class="delivery-options my-4"> -->
<!-- 					<p class="font-weight-bold mb-0"> -->
<!-- 						<span><i class="fa-solid fa-filter"></i></span> <b>Delivery -->
<!-- 							options</b> -->
<!-- 					</p> -->
<!-- 					<p class="text-secondary">View delivery options here</p> -->
<!-- 				</div> -->


			</div>
		</div>
	</div>



<!-- 	<div class="container similar-products my-4"> -->
<!-- 		<hr> -->
<!-- 		<p class="display-5">Similar Products</p> -->

<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-3"> -->
<!-- 				<div class="similar-product"> -->
<!-- 					<img class="w-100" src="https://source.unsplash.com/gsKdPcIyeGg" -->
<!-- 						alt="Preview"> -->
<!-- 					<p class="title">Lovely black dress</p> -->
<!-- 					<p class="price">$100</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3"> -->
<!-- 				<div class="similar-product"> -->
<!-- 					<img class="w-100" src="https://source.unsplash.com/sg_gRhbYXhc" -->
<!-- 						alt="Preview"> -->
<!-- 					<p class="title">Lovely Dress with patterns</p> -->
<!-- 					<p class="price">$85</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3"> -->
<!-- 				<div class="similar-product"> -->
<!-- 					<img class="w-100" src="https://source.unsplash.com/gJZQcirK8aw" -->
<!-- 						alt="Preview"> -->
<!-- 					<p class="title">Lovely fashion dress</p> -->
<!-- 					<p class="price">$200</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-3"> -->
<!-- 				<div class="similar-product"> -->
<!-- 					<img class="w-100" src="https://source.unsplash.com/qbB_Z2pXLEU" -->
<!-- 						alt="Preview"> -->
<!-- 					<p class="title">Lovely red dress</p> -->
<!-- 					<p class="price">$120</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->


</body>
</html>
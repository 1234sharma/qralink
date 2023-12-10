<html>
<style>
.error-message {
	color: red;
}
</style>
<body>
	<%@ include file="/responsivenav.jsp"%>
	<div class="container p-3">
		<div class="card mt-4">
			<div class="card-header">Add Product</div>
			<div class="card-body">
				<div class=" container  row">
					<div class='container mt-4 border'
						style="height: 50%; width: 200%;">
						<div class="waper_my_account">
							<div class="container-fluid">
								<div class="clearfix">
									<!-- ADD Product-->
									<!--Alert Box-->
									<!--Product Information Form-->
									<form action="addProduct" method="POST"
										enctype="multipart/form-data" class="m-3 mt-4"
										id="addProductForm">
										<div class="new_panel mt-4" ng-controller="ZipCodeCtrl">
											<div class="panel_heading">
												<div class="fw-bold">Product Information</div>
											</div>
											<div class="panel_body">
												<div class="row p-2">
													<div class="col-md-6 col-xs-12">
														<div class="from-group required">
															<label class="form-label fw-bold ">Product Name:</label><span
																class="element">*</span> <input type="text"
																class="form-control productName"
																style="background-color: white"
																id="exampleFormControlInput1" name="productName"
																placeholder="Product Name" required>
															<p id="product-error-message"
																class="product-error-message"></p>
														</div>
													</div>
													<div class="col-md-6 col-xs-12">
														<div class="from-group">
															<label class="form-label fw-bold">Brand Name:</label><span
																class="element">*</span> <input type="text"
																class="form-control brandName"
																style="background-color: white"
																id="exampleFormControlInput1" name="brandName"
																placeholder="Brand Name" required>
															<p id="brand-error-message" class="brand-error-message"></p>
														</div>
													</div>
													<div class="col-md-12 mt-3">
														<div class="col-md-6">
															<label class="form-label fw-bold ">Categories
																Type</label>
														</div>
														<div class="col-md-6">
															<select class="form-select"
																style="background-color: white"
																aria-label="Default select example" id="categoryid"
																name="category"
																onChange="updateSubCategory(this.options[this.selectedIndex].value)"
																required>
																<option selected>Please Select</option>
															</select>
														</div>
														<p id="Categories-error-message"
															class="Categories-error-message"></p>
													</div>
													<div class="col-md-12 mt-3">
														<div class="col-md-6">
															<label class="form-label fw-bold ">Sub-Categories
																Type</label>
														</div>
														<div class="col-md-6">
															<select class="form-select"
																style="background-color: white"
																aria-label="Default select example" id="subcategoryid"
																name="subcategory"
																onChange="updateMicroCategory(this.options[this.selectedIndex].value)">
																<option selected>Please Select</option>
															</select>
														</div>
														<p id="sub-Categories-error-message"
															class="sub-Categories-error-message"></p>
													</div>
													<div class="col-md-12 mt-3">
														<div class="col-md-6">
															<label class="form-label fw-bold ">Micro-Categories
																Type</label>
														</div>
														<div class="col-md-6">
															<select class="form-select"
																style="background-color: white"
																aria-label="Default select example" id="microcategoryid"
																name="microcategory">
																<option selected>Please Select</option>
															</select>
														</div>
														<p id="Micro-Categories-error-message"
															class="Micro-Categories-error-message"></p>
													</div>
													<div class="col-md-12 mt-2">
														<label for="exampleFormControlTextarea1"
															class="form-label fw-bold">Product Description:</label> <span
															class=""> Use To expand</span>
														<textarea class="form-control productdesc"
															style="background-color: white"
															id="exampleFormControlTextarea1" rows="2"
															placeholder="Product Info" name="productdesc" required></textarea>
														<p id="product-Description-error-message"
															class="product-Description-error-message"></p>
													</div>
													<div class="col-md-4 col-lg-3 mt-2">
														<div class="form-group">
															<label class="form-label fw-bold">Select
																Currency:</label> <select class="form-select currency"
																style="background-color: white"
																aria-label="Default select example" name="currencyType"
																required>
																<option value="" selected disabled>Select
																	Currency</option>
																<option value="usd">USD</option>
																<option value="eur">EUR</option>
																<option value="gbp">GBP</option>
																<option value="jpy">INR</option>
																<option value="jpy">JPY</option>

																<!-- Add more currencies as needed -->
															</select>
															<p id="currency-error-message"
																class="currency-error-message"></p>
														</div>
													</div>

													<div class="col-md-4 mt-2">
														<div class="from-group">
															<label class="form-label fw-bold">Product Price </label><span
																class="element">*</span> <input type="text"
																pattern="^\d+(\.\d{1,4})?$"
																style="background-color: white" class="form-control"
																id="product_price" placeholder="Product Price"
																name="productprice" required>
															<p id="price-error-message" class="price-error-message"></p>
														</div>
													</div>

													<!--Product Details-->
													<div class="col-md-12 mt-4">
														<div class="new_panel mt-0" ng-controller="ZipCodeCtrl">
															<div class="panel_heading">
																<div class="fw-bold" style="text-size: 25px">Product
																	Details</div>
															</div>
															<div class="panel_body">
																<div class="row p-2">
																	<div class="col-md-4 col-md-4">
																		<div class="from-group">
																			<label class="form-label fw-bold">Model
																				number:</label> <input type="text"
																				style="background-color: white"
																				class="form-control modelnumber"
																				id="exampleFormControlInput1" placeholder=""
																				name="modelnumber">
																			<p id="model-number-error-message" class=""model-number-error-message""></p>
																		</div>
																	</div>
																	<div class="col-md-4 col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Net Weight
																				<span style="font-size: 0.8em; font-weight: normal;">(in
																					Kilograms)</span>:
																			</label> <input type="number" style="background-color: white"
																				class="form-control weight"
																				id="exampleFormControlInput1" placeholder=""
																				name="weight" required>
																			<p id="weight-error-message"
																				class="weight-error-message"></p>
																		</div>
																	</div>
																	<div class="col-md-4 col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Shape</label> <input
																				type="text" style="background-color: white"
																				class="form-control shape"
																				id="exampleFormControlInput1" placeholder=""
																				name="shape">
																			<p id="shape-error-message"
																				class="shape-error-message"></p>
																		</div>
																	</div>
																	<div class="col-md-4 col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Color</label> <input
																				type="text" style="background-color: white"
																				class="form-control color"
																				id="exampleFormControlInput1" placeholder=""
																				name="color">
																			<p id="color-error-message"
																				class="color-error-message"></p>
																		</div>
																	</div>
																	<div class="col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Material</label> <select
																				class="form-select material"
																				style="background-color: white"
																				aria-label="Default select example" name="material">
																				<option selected>Please select</option>
																				<option value="1">Textiles</option>
																				<option value="2">Metals</option>
																				<option value="3">Plastics</option>
																				<option value="4">Finishes</option>
																				<option value="5">Recycled</option>
																				<option value="6">Adhesives</option>
																				<option value="7">Biopolymers</option>
																				<option value="8">Wood</option>
																				<option value="9">Glass</option>
																			</select>
																			<p id="Material-error-message"
																				class="Material-error-message"></p>
																		</div>
																	</div>

																	<div class="col-md-4 col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Minimum
																				Order Quantity :</label> <input type="number"
																				style="background-color: white"
																				class="form-control orderqnt"
																				id="exampleFormControlInput1" placeholder=""
																				name="orderqnt">
																			<p id="order-Qunatity-error-message"
																				class="order-Qunatity-error-message"></p>
																		</div>
																	</div>

																	<div class="col-md-4 col-md-4 mt-2">
																		<div class="from-group">
																			<label class="form-label fw-bold">Usage/Application</label>
																			<input type="text" style="background-color: white"
																				class="form-control uses"
																				id="exampleFormControlInput1" placeholder=""
																				name="uses">
																			<p id="usage-error-message"
																				class="usage-error-message"></p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<!--Product Images Video Information -->
													<div class="col-md-12">
														<div class="new_panel mt-0" ng-controller="ZipCodeCtrl">
															<div class="panel_heading">
																<label class="form-label fw-bold">Product Images
																	Video Information</label><span class="element">*</span><br>
																<span class="fw-bold text-danger">Don't Use
																	Special Characters</span>
															</div>
															<div class="panel_body">
																<div class="row p-2">
																	<div class="col-md-6">
																		<label for="formFile" class="form-label fw-bold">Upload
																			Product Image No. 1 :</label> <input
																			class="form-control image1" type="file" id="formFile"
																			name='image1'>
																	</div>
																	<div class="col-md-6">
																		<label for="formFile" class="form-label fw-bold">Upload
																			Product Image No. 2:</label> <input
																			class="form-control image2" type="file" id="formFile"
																			name="image2">
																	</div>
																</div>
															</div>
															<p id="product-image-error-message"
																class="product-image-error-message"></p>
														</div>
													</div>
													<!--Search Information-->
													<div class="col-md-12">
														<div class="new_panel mt-0" ng-controller="ZipCodeCtrl">
															<div class="panel_body">
																<div class="row p-2">
																	<div class="col-md-12 mt-2">
																		<button type="submit" class="btn btn-danger btn-lg"
																			onclick="validateProductName(); validateBrandName(); validateCategory(); validateDescription(); validateCurrency(); validatePrice(); validateWeight(); validateOrderQnt()">Add
																			Product</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		let category = [];
		let subCategory = [];
		let microcategory = [];
		window.onload = function loadvalues() {
			loadCategory();
		}
		function loadCategory() {
			$.ajax({
				type : "GET",
				url : "/getcategories",
				success : function(data) {
					// Ajax call completed successfully
					select = document.getElementById('categoryid');
					for (var i = 0; i < data.length; i++) {
						var opt = document.createElement('option');
						console.log(data[i].categoryId);
						opt.value = data[i].categoryid;
						opt.innerHTML = data[i].category_NAME;
						select.appendChild(opt);
					}
				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});
		}

		function updateSubCategory(categoryid) {
			console.log(categoryid)
			$.ajax({
				type : "GET",
				url : "/getsubcategories/" + categoryid,
				success : function(data) {
					// Ajax call completed successfully
					select = document.getElementById('subcategoryid');
					$("#subcategoryid").empty();
					console.log(JSON.stringify(data));
					for (var i = 0; i < data.length; i++) {
						var opt = document.createElement('option');
						opt.value = data[i].sub_CATEGORY_ID;
						opt.innerHTML = data[i].sub_CATEGORY_NAME;
						select.appendChild(opt);
					}
				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});

		}
		function updateMicroCategory(subcategoryid) {
			console.log(subcategoryid)
			$.ajax({
				type : "GET",
				url : "/getmicrocategories/" + subcategoryid,
				success : function(data) {
					// Ajax call completed successfully
					select = document.getElementById('microcategoryid');
					$("#microcategoryid").empty();
					console.log("micro category " + JSON.stringify(data));
					for (var i = 0; i < data.length; i++) {
						var opt = document.createElement('option');
						opt.value = data[i].micro_CATEGORY_ID;
						opt.innerHTML = data[i].micro_CATEGORY_NAME;
						select.appendChild(opt);
					}

				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});

		}
	</script>
	<script>
    function validateProductName() {
        var productNameInput   = document.querySelector('.productName');
        var productName  = productNameInput.value;
        var errorMessage = document.querySelector('#product-error-message');
        
        if (productName.trim() === '') {
        	errorMessage.innerText = 'Please enter a Product Name';
        	errorMessage.style.color = 'red';
        	productNameInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            productNameInput.style.borderColor = '';
        }
    }
    function validateBrandName() {
        var brandNameInput = document.querySelector('.brandName');
        var brandName = brandNameInput.value;
        var errorMessage = document.querySelector('#brand-error-message');
        
        if (brandName.trim() === '') {
        	errorMessage.innerText = 'Please enter a Brand Name';
        	errorMessage.style.color = 'red';
        	brandNameInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            brandNameInput.style.borderColor = '';
        }
    }
    function validateCategory() {
        var categoryidInput = document.querySelector('#categoryid');
        var categoryid = categoryidInput.value;
        var errorMessage = document.querySelector('#Categories-error-message');
        
        if (categoryid.trim() === '' || categoryid === 'Please Select') {
            errorMessage.innerText = 'Please Select a Category';
            errorMessage.style.color = 'red';
            categoryidInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            categoryidInput.style.borderColor = '';
        }
    }
    function validateDescription() {
        var descriptionInput = document.querySelector('.productdesc');
        var description = descriptionInput.value;
        var errorMessage = document.querySelector('#product-Description-error-message');

        if (description.length < 0 || description.length > 250) {
            errorMessage.innerText = 'Description should be less than' + 250 + ' characters';
            errorMessage.style.color = 'red';
            descriptionInput.style.borderColor = 'red';
        } else if (description.trim() === '') {
            errorMessage.innerText = 'Please Enter a Product Description';
            errorMessage.style.color = 'red';
            descriptionInput.style.borderColor = 'red';
        } else{
            errorMessage.innerText = '';
            descriptionInput.style.borderColor = '';
        }
    }
    function validateCurrency() {
        var currencyInput = document.querySelector('.currency');
        var currencyid = currencyInput.value;
        var errorMessage = document.querySelector('#currency-error-message');
        
        if (currencyid.trim() === '' || categoryid === 'Select Currency' ) {
            errorMessage.innerText = 'Please Select Currency';
            errorMessage.style.color = 'red';
            currencyInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            currencyInput.style.borderColor = '';
        }
    }
    function validatePrice() {
        var priceidInput = document.querySelector('#product_price');
        var price = priceidInput.value;
        var errorMessage = document.querySelector('#price-error-message');

        if (!priceidInput.checkValidity()) {
            errorMessage.innerText = 'Please Enter a Price';
            errorMessage.style.color = 'red';
            priceidInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            priceidInput.style.borderColor = '';
        }
    }
    function validateWeight() {
        var weightInput = document.querySelector('.weight');
        var weight = weightInput.value;
        var errorMessage = document.querySelector('#weight-error-message');

        if (weight.trim() === '') {
            errorMessage.innerText = 'Please Enter Weight';
            errorMessage.style.color = 'red';
            weightInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            weightInput.style.borderColor = '';
        }
    }
    function validateOrderQnt() {
        var orderqntInput = document.querySelector('.orderqnt');
        var orderQnt = orderqntInput.value;
        var errorMessage = document.querySelector('#order-Qunatity-error-message');

        if (orderQnt.trim() === '') {
            errorMessage.innerText = 'Please Enter Minimum Order Quantity';
            errorMessage.style.color = 'red';
            orderqntInput.style.borderColor = 'red';
        } else {
            errorMessage.innerText = '';
            orderqntInput.style.borderColor = '';
        }
    }
 		
 		var productForm = document.getElementById('addProductForm');

 	 	productForm.addEventListener('input', function (event) {
 		     if (event.target.classList.contains('productName')) {
 	  	       validateProductName();
 	  	   } else if (event.target.classList.contains('brandName')) {
 	  	       validateBrandName();
 	  	   } else if (event.target.id === 'categoryid') {
 	  	       validateCategory();
 	  	   } else if (event.target.classList.contains('productdesc')) {
 	         validateDescription();
 	  	   } else if (event.target.classList.contains('currency')) {
 	  	       validateCurrency();
 	 	   } else if (event.target.id === 'product_price') {
 	 	        validatePrice();
 	 	   } else if (event.target.classList.contains('weight')) {
 	 	        validateWeight();
 		    } else if (event.target.classList.contains('orderqnt')) {
 	 	        validateOrderQnt();
 		    }
 		 });

 	 	document.getElementById('addProductForm').addEventListener('submit', function (event) {
 	        alert('Product added successfully!');
 	    });


</script>


	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</body>
</html>
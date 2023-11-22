<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="style.css" rel="stylesheet"/>
    <title>Product</title>
</head>
<body>

<div class='container mt-4'>
    <div class="waper_my_account">
        <div class="container-fluid">
            <div class="clearfix">
                <!-- ADD Product-->
                <!--Alert Box-->
                <!--Product Information Form-->
                <form action="addProduct" method="POST" enctype="multipart/form-data"  class="m-3 mt-4" >
                    <div class="new_panel mt-4"  ng-controller="ZipCodeCtrl">
                        <div class="panel_heading">
                            <div class="fw-bold">Product Information</div>
                        </div>                
                        <div class="panel_body">
                            <div class="row p-2">
                                <div class="col-md-6 col-xs-12">
                                    <div class="from-group required">
                                        <label class="form-label fw-bold ">Product Name:</label><span class="element">*</span>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" name="productName" placeholder="Product Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Brand Name:</label><span class="element">*</span>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" name="brandName" placeholder="Brand Name">
                                    </div>
                                </div>  
                                <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                                
                                        <select class="form-select" aria-label="Default select example"id="categoryid" name="category" onChange="updateSubCategory(this.options[this.selectedIndex].value)">
                                            <option selected>Please Select</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Sub-Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                          
                                        <select class="form-select" aria-label="Default select example" id="subcategoryid" name="subcategory" onChange="updateMicroCategory(this.options[this.selectedIndex].value)">
                                            <option selected>Please Select</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Micro-Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                                
                                        <select class="form-select" aria-label="Default select example" id="microcategoryid" name="microcategory">
                                            <option selected>Please Select</option>
                                        </select>
                                    </div>
                                </div>  
                                <div class="col-md-12 mt-2">
                                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Product Description:</label>
                                    <span class=""> Use  To expand</span>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Product Info" name="productdesc"></textarea>
                                </div>      
                                <div class="col-md-4 col-lg-3 mt-2">
                                    <div class="from-group">                                                                                
                                        <label class="form-label fw-bold ">Default Currency</label>
                                        <input class="form-control" type="text" placeholder="Rs" aria-label="Disabled input example" name="currency" disabled>
                                    </div>                                
                                </div>
                                <div class="col-md-4 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Product Price </label><span class="element">*</span>
                                        <input type="text" class="form-control" id="product_price" placeholder="Product Price" name="productprice">
                                    </div>
                                </div>
                               
                                <!--Product Details-->
                                <div class="col-md-12 mt-4">
                                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
                                        <div class="panel_heading">
                                            <div class="fw-bold" style="text-size:25px">Product Details</div>
                                        </div>                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-4 col-md-4">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Model number:</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="modelnumber">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Net Weight</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="weight">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Shape</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="shape">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Color</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="color">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Material</label>
                                                        <select class="form-select" aria-label="Default select example" name="material">
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
                                                     </div> 
                                                </div>
                                               
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Minimum Order Quantity :</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder=""name="orderqnt">
                                                    </div>
                                                </div> 
                                                
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Usage/Application</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="uses">
                                                    </div>
                                                </div>                                             
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                 <!--Product Images Video Information -->
                                 <div class="col-md-12">
                                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
                                        <div class="panel_heading">
                                            <label class="form-label fw-bold">Product Images Video Information</label><span class="element">*</span><br>
                                            <span class="fw-bold text-danger">Don't Use Special Characters</span>
                                        </div>                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-6">
                                                    <label for="formFile" class="form-label fw-bold">Upload Product Image No. 1 :</label>
                                                    <input class="form-control" type="file" id="formFile" name='image1'>                                                    
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="formFile" class="form-label fw-bold">Upload Product Image No. 2:</label>
                                                    <input class="form-control" type="file" id="formFile" name="image2">                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 <!--Search Information-->
                                 <div class="col-md-12">
                                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-12 mt-2">
                                                    <button type="submit" class="btn btn-danger btn-lg">Add Product</button>
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
   <script>
    let category=[];
    let subCategory=[];
    let microcategory=[];
    window.onload=function loadvalues(){
           loadCategory();
    }
    function loadCategory(){
        $.ajax({
				type : "GET",
				url : "/getcategories",
				success : function(data) {
					// Ajax call completed successfully
                   select = document.getElementById('categoryid');
                   
                   alert("Details submitted succesfully "+ data[0].category_NAME);
                  for (var i = 0; i<data.length; i++){
                   var opt = document.createElement('option');
                      opt.value = data[i].categoryId;
                      opt.innerHTML = data[i].category_NAME;
                      select.appendChild(opt);
                   }
					alert("Details submitted succesfully "+ category);
				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});
    }

    function updateSubCategory(categoryid){
        console.log(categoryid)
        $.ajax({
				type : "GET",
				url : "/getsubcategories/"+categoryid,
				success : function(data) {
					// Ajax call completed successfully
                   select = document.getElementById('subcategoryid');
                   $("#subcategoryid").empty();
                   console.log(JSON.stringify(data));
                   alert("Details submitted succesfully "+ data[0].sub_CATEGORY_NAME);
                  for (var i = 0; i<data.length; i++){
                   var opt = document.createElement('option');
                      opt.value = data[i].sub_CATEGORY_ID;
                      opt.innerHTML = data[i].sub_CATEGORY_NAME;
                      select.appendChild(opt);
                   }
					alert("Details submitted succesfully "+ category);
				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});
        
    }
    function updateMicroCategory(subcategoryid){
        console.log(subcategoryid)
        $.ajax({
				type : "GET",
				url : "/getmicrocategories/"+subcategoryid,
				success : function(data) {
					// Ajax call completed successfully
                   select = document.getElementById('microcategoryid');
                   $("#microcategoryid").empty();
                   console.log("micro category "+JSON.stringify(data));
                   alert("Details submitted succesfully "+ data[0].sub_CATEGORY_NAME);
                  for (var i = 0; i<data.length; i++){
                   var opt = document.createElement('option');
                      opt.value = data[i].micro_CATEGORY_ID;
                      opt.innerHTML = data[i].micro_CATEGORY_NAME;
                      select.appendChild(opt);
                   }
					alert("Details submitted succesfully "+ category);
				},
				error : function(data) {
					// Some error in ajax call
					alert("Please Try Again");
				}

			});
        
    }
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
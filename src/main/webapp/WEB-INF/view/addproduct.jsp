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

<div class='container'>
    <div class="waper_my_account">
        <div class="container-fluid">
            <div class="clearfix">
                <!-- ADD Product-->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="new_panel">
                        <div class="panel_heading">Add Product </div>
                    </div>
                </div>
                <!--Alert Box-->
                <div class="row_by">                
                    <div class="row p-2 mb-0">
                        <div class="col-md-12 alert_by">
                            <div class="alert alert-primary" role="alert">Your Remaining Products:- 394</div>
                        </div>           
                    </div>
                </div>
                <!--Product Information Form-->
                <form action="addProduct" method="POST" enctype="multipart/form-data"  class="m-3 mt-0" >
                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
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
                                        <select class="form-select" aria-label="Default select example" name="category">
                                            <option selected>Please Select</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Sub-Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                                
                                        <select class="form-select" aria-label="Default select example" name="subcategory">
                                            <option selected>Please Select</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Micro-Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                                
                                        <select class="form-select" aria-label="Default select example" name="microcategory">
                                            <option selected>Please Select</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>  
                                <div class="col-md-12 mt-2">
                                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Product Description:</label>
                                    <span class=""> Use  To expand</span>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Product Info" name="productdesc"></textarea>
                                </div>   
                                <div class="col-md-12 mt-2">
                                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Product Short Description</label><span class="element">*</span>
                                    <textarea class="form-control" id="product" rows="10" placeholder="Product Info"name="productshortdesc"></textarea>
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
                                                
                                                <div class="col-md-4 col-md-4">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Size</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="" name="size">
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
                                                <div class="col-md-6 col-xs-12 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Youtube Video No. 1:</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Youtube Video Url">
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-12 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Youtube Video No. 2:</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Youtube Video Url">
                                                    </div>
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
</body>
</html>
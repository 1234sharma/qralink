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
                <form action="" class="m-3 mt-0" >
                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
                        <div class="panel_heading">
                            <div class="fw-bold">Product Information</div>
                        </div>                
                        <div class="panel_body">
                            <div class="row p-2">
                                <div class="col-md-6 col-xs-12">
                                    <div class="from-group required">
                                        <label class="form-label fw-bold ">Product Name:</label><span class="element">*</span>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Product Information">
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Brand Name:</label><span class="element">*</span>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Product Information">
                                    </div>
                                </div>  
                                <div class="col-md-12 mt-3">
                                    <div class="col-md-6">                                        
                                        <label class="form-label fw-bold ">Categories Type</label>
                                    </div>
                                    <div class="col-md-6">                                                                                
                                        <select class="form-select" aria-label="Default select example">
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
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" placeholder="Product Info"></textarea>
                                </div>   
                                <div class="col-md-12 mt-2">
                                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Product Short Description</label><span class="element">*</span>
                                    <textarea class="form-control" id="product" rows="10" placeholder="Product Info"></textarea>
                                </div>   
                                <div class="col-md-4 col-lg-3 mt-2">
                                    <div class="from-group">                                                                                
                                        <label class="form-label fw-bold ">Default Currency</label>
                                        <input class="form-control" type="text" placeholder="Rs" aria-label="Disabled input example" disabled>
                                    </div>                                
                                </div>
                                <div class="col-md-4 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Product Price </label><span class="element">*</span>
                                        <input type="text" class="form-control" id="product_price" placeholder="Product Price">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Delivery Terms </label>
                                        <input type="text" class="form-control" id="product_price" placeholder="Delivery Terms">
                                    </div>
                                </div>  
                                <div class="col-md-12 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">SKU No </label>
                                        <input type="text" class="form-control" id="product_price" placeholder="Enter SKU Number">
                                    </div>
                                </div>   
                                <div class="col-md-12 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Delivery Method </label>
                                    </div>
                                </div>  
                                <div class="col-md-12 m-2">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">FOB</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">CFR</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">CIF</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">EXW</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">FAS</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">CIP</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">FCA</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">CPT</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">DBQ</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">DDP</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">DDU</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">DAF</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">ED</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">DES</label>
                                    </div>
                                </div>
                                <div class="col-md-12 mt-2">
                                    <label for="exampleFormControlTextarea1" class="form-label fw-bold">Payment Terms</label>
                                    <textarea class="form-control" id="payment" rows="5" placeholder="Payment Terms"></textarea>
                                </div> 
                                <div class="col-md-12 mt-2">
                                    <div class="from-group">
                                        <label class="form-label fw-bold">Payment Method</label>
                                    </div>
                                </div>  
                                <div class="col-md-12 m-2">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">T/T</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">L/c</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">CC</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">Escrow</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">D/P</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">Western Union</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">MoneyGram</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">Paypal</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">Cash/cheque</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input border-secondary" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">Skrill</label>
                                    </div>
                                </div>                                
                                <!--Product Details-->
                                <div class="col-md-12">
                                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
                                        <div class="panel_heading">
                                            <div class="fw-bold">Product Details</div>
                                        </div>                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-4 col-md-4">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Model number:</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Ean Code</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Size</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Net Weight</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Shape</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Color</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Material</label>
                                                        <select class="form-select" aria-label="Default select example">
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
                                                        <label class="form-label fw-bold">Thickness</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Available size range</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Type of packing product</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Please select</option>
                                                            <option value="1">Atomizer</option>
                                                            <option value="2">Bag poly</option>
                                                            <option value="3">Blister Pack</option>
                                                            <option value="4">Bottle</option>
                                                            <option value="5">Box Photo</option>
                                                            <option value="6">Box white</option>
                                                            <option value="7">Box brown</option>
                                                            <option value="8">Bucket</option>
                                                            <option value="9">Bulk</option>
                                                            <option value="10">Bundle</option>
                                                            <option value="11">Can</option>
                                                            <option value="12">Card</option>
                                                            <option value="13">Clamshell</option>
                                                            <option value="14">Jar</option>
                                                            <option value="15">Loose</option>
                                                            <option value="16">Multipack</option>
                                                            <option value="17">On Hanger or Rack in Boxes</option>
                                                            <option value="18">Pouch</option>
                                                            <option value="19">Separator/Divider</option>
                                                            <option value="20">Shrink Wrap</option>
                                                            <option value="21">Sleeve</option>
                                                        </select> 
                                                     </div> 
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Number of Pc per inner</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Size inner</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>    
                                                <div class="col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Type of inner packing</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Please select</option>
                                                            <option value="Bag poly">Bag poly</option>
                                                            <option value="Box Photo">Box Photo</option>
                                                            <option value="Box white">Box white</option>
                                                            <option value="Box brown">Box brown</option>
                                                            <option value="Bundle">Bundle</option>
                                                            <option value="Display">Display</option>
                                                            <option value="Multipack">Multipack</option>
                                                            <option value="Non">Non</option>
                                                            <option value="Shrink Wrap">Shrink Wrap</option>
                                                            <option value="Sleeve">Sleeve</option>
                                                        </select> 
                                                     </div> 
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Number of Outer per inner</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="MOQ">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Type of outer packing</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Size outer</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Number of masters per pallet</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Type of pallet</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Available certificates</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Minimum Order Quantity :</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Inco terms</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Please select</option>
                                                            <option value="1">Ex Works</option>
                                                            <option value="2">Free Carrie</option>
                                                            <option value="3">Free On Board</option>
                                                            <option value="4">Carriage Paid To</option>
                                                            <option value="5">Carriage and Insurance Paid</option>
                                                            <option value="6">Cost and Freigh</option>
                                                            <option value="7">Cost, Insurance and Freight</option>
                                                            <option value="8">Delivered At Terminal</option>
                                                            <option value="9">Delivered Duty Paid</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <div class="col-md-4 col-md-4 mt-2">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Usage/Application</label>
                                                        <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="">
                                                    </div>
                                                </div>                                             
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Product Group Setup-->
                                <div class="col-md-12">
                                    <div class="new_panel mt-0"  ng-controller="ZipCodeCtrl">
                                        <div class="panel_heading">
                                            <div class="fw-bold">Product Group Setup</div>
                                        </div>                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-6 col-xs-12">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Select Primary Product:</label><span class="element">*</span>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Please select</option>
                                                            <option value="1">primery</option>
                                                            <option value="2">Packaging Box</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-xs-12">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Select Secondary Product</label>
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Please select</option>
                                                        </select>
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
                                                    <input class="form-control" type="file" id="formFile">                                                    
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="formFile" class="form-label fw-bold">Upload Product Image No. 2:</label>
                                                    <input class="form-control" type="file" id="formFile">                                                    
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
                                        <div class="panel_heading">
                                            <div class="fw-bold">Search Information</div>
                                        </div>                
                                        <div class="panel_body">
                                            <div class="row p-2">
                                                <div class="col-md-12 col-xs-12">
                                                    <div class="from-group">
                                                        <label class="form-label fw-bold">Search Keywords</label>
                                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder=""></textarea>
                                                    </div>
                                                </div>
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
</body>
</html>
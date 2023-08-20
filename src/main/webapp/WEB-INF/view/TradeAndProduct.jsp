<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
	<link rel="shortcut icon" href="/logofolder/eahle1.png">
	<title>Home</title>

	<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/bootstrap.css"
		media="all" />

<!-- 	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" -->
<!-- 		media="all" /> -->
	
<!-- 	<link rel="stylesheet" type="text/css" href="https://www.qralink.com/assets/new_css/css/tradestyle.css" -->
<!-- 		media="all" /> -->
	
<!-- 	<link href="https://www.qralink.com/assets/css/assets/css/responsive.css" rel="stylesheet" type="text/css" /> -->
	
<!-- 	<link href="https://www.qralink.com/assets/css/typeahead.js-bootstrap.css" rel="stylesheet" type="text/css" /> -->

</head>

<body ng-controller="ZipCodeCtrl">


	<div class="main-wrapper">
	</div>
	
	<div class="waper_my_account">
		<div class="container-fulid">
			<div class="clearfix">
				<div class="col-xs-12 col-sm-12 margin col-md-12 wide sidebar">
					<div class="new_panel">
						<div class="panel_heading">Trade & Production</div>
						<div class="panel_body">
							<div class="tab-pane fix_tab_height animate-bottom" id="tab3">

								<div class="box_in_fix">
									<div class="row">
										<form method="post" action name="trade_productions">
											<div class="clearfix">
												<div class="col-md-4  margin_bottom">
													<input type="hidden" name="edit_id" value />
													<label>Production Capacity <a data-toggle="tooltip"
															data-placement="bottom" title="Production Capacity"
															class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="production_capacity"
														id="production_capacity" class="form-control input_fix"
														placeholder="Production Capacity" value>
													<span id="alert_production_capacity"></span>
												</div>
												<div class="col-md-4  margin_bottom">
													<label>Factory Size
														<a data-toggle="tooltip" data-placement="bottom"
															title="Factory Size in sqft."
															class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="factory_size" value
														class="form-control input_fix"
														placeholder="Factory Size in sqft.">
												</div>
												<div class="col-md-4  margin_bottom">
													<label>Average Lead Time / Day(s)
														<a data-toggle="tooltip" data-placement="bottom"
															title="Average Lead Time / Day(s)"
															class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="average_lead_time" value
														class="form-control input_fix"
														placeholder="Average Lead Time / Day(s)">
												</div>
												<div class="col-md-4  margin_bottom">
													<label>Compliance Maintaining <a data-toggle="tooltip"
															data-placement="bottom"
															title="Average Compliance Maintaining in Days"
															class="fa fa-question-circle"></a></label>
													<input type="text" name="compliance_maintainingc" value
														class="form-control input_fix" />
												</div>
												<div class="col-md-4 margin_bottom">
													<label>Export Percentage
														<a data-toggle="tooltip" data-placement="bottom"
															title="International Export Percentage"
															class="fa fa-question-circle"></a></label>


													<select name="export_percentage" class="select_box">
														<option>Export Percentage</option>
														<option value="1% - 10%">1% - 10%</option>
														<option value="11% - 20%">11% - 20%</option>
														<option value="21% - 30%">21% - 30%</option>
														<option value="31% - 40%">31% - 40%</option>
														<option value="41% - 50%">41% - 50%</option>
														<option value="51% - 60%">51% - 60%</option>
														<option value="61% - 70%">61% - 70%</option>
														<option value="71% - 80%">71% - 80%</option>
														<option value="81% - 90%">81% - 90%</option>
														<option value="91% - 100%">91% - 100%</option>
													</select>
												</div>
												<div class="col-md-4 margin_bottom">
													<label>Annual Sales Volume
														<a data-toggle="tooltip" data-placement="bottom"
															title="Your Annual Sales Volume"
															class="fa fa-question-circle"></a></label>
													<select name="annual_sales" class="select_box">
														<option>Annual Sales Volume</option>
														<option value="Below Us $1 Million">Below Us $1 Million</option>
														<option value="Us $1 Million - Us $2 Million">Us $1 Million - Us
															$2 Million</option>
														<option value="Us $3 Million - Us $4 Million">Us $3 Million - Us
															$4 Million</option>
													</select>
												</div>
											</div>
											<div class="col-md-12 margin_bottom">
												<label>Packaging Details
													<a data-toggle="tooltip" data-placement="bottom"
														title="Enter Packaging Details"
														class="fa fa-question-circle"></a></label>
												<textarea id="editor1" name="packaging_details"
													class="form-control"></textarea>
											</div>
											<div class="col-md-12 ">
												<h2 class="inner_head">
													Production Capacity & Scope </h2>
											</div>
											<div class="col-md-4 margin_bottom">
												<label>Office Size
													<a data-toggle="tooltip" data-placement="bottom"
														title="Your office size in sqft"
														class="fa fa-question-circle"></a>
												</label>
												<select name="office_size" class="select_box">
													<option>Office Size</option>
													<option value="001-100">001-100 meters</option>
													<option value="100-200">100-200 meters</option>
													<option value="200-400">200-400 meters</option>
												</select>
											</div>
											<div class="col-md-4 margin_bottom">
												<label>Main Export Markets (Country)
													<a data-toggle="tooltip" data-placement="bottom"
														title="Main Export Markets like UK, USA, India, UAE, etc."
														class="fa fa-question-circle"></a>
												</label>
												<select name="main_export_markets" class="select_box">
													<option>Main Export Markets</option>
													<option value="North America">North America</option>
													<option value="Europe">Europe</option>
													<option value="Australia">Australia</option>
													<option value=" South America"> South America</option>
													<option value="Asia">Asia</option>
													<option value="Antarctica">Antarctica</option>
													<option value="Africa">Africa</option>
												</select>
											</div>
											<div class="col-md-4 margin_bottom">
												<label>Top Five Countries
													<a data-toggle="tooltip" data-placement="bottom"
														title="Top Five Countries you trade"
														class="fa fa-question-circle"></a>
												</label>
												<span style="color: gray; font-size: 12px;">(define each country to
													press enter)</span>
												<input name="top_five_countries" type="text" value
													class="form-control input_fix" data-role="tagsinput" />
											</div>
											<div class="col-md-4 margin_bottom">
												<label>Factory Location
													<a data-toggle="tooltip" data-placement="bottom"
														title="Factory Locaion (Address)"
														class="fa fa-question-circle"></a>
												</label>
												<input name="factory_location" type="text" value
													class="form-control input_fix" placeholder="Factory Locaion">
											</div>
											<div class="col-md-4 margin_bottom">
												<label>Nearest Port
													<a data-toggle="tooltip" data-placement="bottom"
														title="Nearest Sea Port" class="fa fa-question-circle"></a>
												</label>
												<input name="nearest_port" type="text" value
													class="form-control input_fix" placeholder="Nearest Port">
											</div>
											<div class="col-md-6">
												<p>Have you attended or planned to attend any trade shows?</p>
												<div class="radio radio-primary">
													<input type="radio" name="trade_shows" id="radio6" value="Y">
													<label for="radio6">Yes </label>
													&ensp;&ensp;/&ensp;&ensp;&ensp;&ensp;
													<input type="radio" name="trade_shows" id="radio7" value="N">
													<label for="radio7">No </label>
												</div>
											</div>
											<br>
											<div class="clearfix">
												<div class="col-md-12">
													<label>Main Clients <a data-toggle="tooltip" data-placement="bottom"
															title="Main Clients/Customers"
															class="fa fa-question-circle"></a>
													</label>
													<textarea name="main_clients"
														class="form-control input_fix"></textarea>
												</div>
											</div>
											<br>
											<div class="clearfix">
												<div class="col-md-6 margin_bottom">
													<label>Major Product(s) you sell (For Sellers) <a
															data-toggle="tooltip" data-placement="bottom"
															title="Major Product(s) you sell (For Sellers)"
															class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="major_product_for_sell" value
														class="form-control input_fix"
														placeholder="Major Product(s) you sell (For Sellers)">
												</div>
												<div class="col-md-6 margin_bottom">
													<label>Major Product(s) you buy (For Buyers)
														<a data-toggle="tooltip" data-placement="bottom"
															title="Major Product(s) you buy (For Buyers)"
															class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="major_product_for_buy" value
														class="form-control input_fix"
														placeholder="Major Product(s) you buy (For Buyers)">
												</div>
												<div class="col-md-3 margin_bottom">
													<label>Main Products
														<a data-toggle="tooltip" data-placement="bottom"
															title="Main Products" class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="main_products1" value
														class="form-control input_fix" placeholder="Main Products">
												</div>
												<div class="col-md-3 margin_bottom">
													<label>Main Products 1
														<a data-toggle="tooltip" data-placement="bottom"
															title="Main Product 1" class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="main_products2" value
														class="form-control input_fix" placeholder="Main Product 1">
												</div>
												<div class="col-md-3 margin_bottom">
													<label>Main Products 2
														<a data-toggle="tooltip" data-placement="bottom"
															title="Main Product 2" class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="main_products3" value
														class="form-control input_fix" placeholder="Main Product 2">
												</div>
												<div class="col-md-3 margin_bottom">
													<label>Main Products 3
														<a data-toggle="tooltip" data-placement="bottom"
															title="Main Product 3" class="fa fa-question-circle"></a>
													</label>
													<input type="text" name="main_products4" value
														class="form-control input_fix" placeholder="Main Product 3">
												</div>
											</div>
											<br>
											<div class="clearfix">
												<div class="col-md-12">
													<label>Other Products You Sell
														<a data-toggle="tooltip" data-placement="bottom"
															title="Other Products You Sell"
															class="fa fa-question-circle"></a>
													</label>
													<textarea id="editor2" name="other_productsYou_sell"
														class="form-control"></textarea>

													<ul class="pager wizard">
														<input type="submit"
															onclick="getVelidetion(document.trade_productions)"
															class="btn btn-success pull-right btn-lg" name="submit"
															value="submit" />
													</ul>
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
	</div>
</body>

</html>
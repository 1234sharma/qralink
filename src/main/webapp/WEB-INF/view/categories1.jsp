
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>

<link href="https://fonts.googleapis.com/css?family=Muli"
	rel="stylesheet">
<link href="https://www.qralink.com/admin/eagle_admin_v2/style.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/timeline.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/dist/css/sb-admin-2.css"
	rel="stylesheet">
<link
	href="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	media="all">
<link
	href="https://www.qralink.com/admin/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />

<!-- <script language="JavaScript" src="https://www.qralink.com/admin/js/ajax.js"></script>
<script language="JavaScript" src="https://www.qralink.com/admin/js/nicEdit.js"></script>
<script type="text/javascript" src="{$smarty.const.URL}/jscolor/jscolor.js"></script>
<script type="text/javascript" src="js/behaviour.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://www.qralink.com/admin/js/morris/raphael-2.1.0.min.js"></script>
<script src="https://www.qralink.com/admin/js/morris/morris.js"></script>
<script src="https://www.qralink.com/assets/js/developer.js"></script> -->

<style media="all" type="text/css">
@import "https://www.qralink.com/admin/css/css/admin.css";
</style>


</head>
<body>
	<div>
		<div>
			<br />
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
					<div class="row">
						<div class="col-md-6">
							<h2 class="page-header">Suppliers & Products Category</h2>
						</div>
						<div class="col-md-6">
							<button type="button" class="btn btn-info pull-right"
								data-toggle="collapse" data-target="#demo">Add Category
							</button>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class>
						<div class="sct_right">
							<div id="product_list">
								<div id="demo" class="collapse">
									<div class="panel panel-default">
										<div class="panel-heading">Add Category</div>
										<div class="panel-body">
											<div class="table_wrapper">
												<div class="table_wrapper_inner">
													<form name="add_categories" method="post" action
														enctype="multipart/form-data">
														<div class="row">
															<span class="manten-th"></span> <input type="hidden"
																name="cat_id" value="0" /> <input type="hidden"
																name="sub_cat_id" value="0" />
															<div class="col-md-3 margin_bottom">
																<input class="form-control"
																	placeholder="Name of New Category" type="text"
																	name="name" value required /> <span
																	style="color: #F00;"></span>
															</div>
															<div class="col-md-2 margin_bottom">
																<input type="text" class="form-control"
																	placeholder="Enter Meta Description" name="meta_desc"
																	value required />
															</div>
															<div class="col-md-2 margin_bottom">
																<input type="text" class="form-control"
																	placeholder="Enter Meta Keywords" name="meta_keywords"
																	value required />
															</div>
															<div class="col-md-1 margin_bottom">
																<input type="radio" name="cat_type" value="sell"
																	checked="checked" /> Seller <input type="hidden"
																	name="sub_cat_id" value="0" />
															</div>
															<div class="col-md-3 margin_bottom">
																<strong>Category Image</strong> <input type="file"
																	name="cat_img" size="30" class="form-control" value />
																<span style="color: #F00;"></span>
															</div>
															<div class="col-md-1 margin_bottom">
																<input type="submit" class="btn btn-primary"
																	name="submit" value="Add" />
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div>&ensp;</div>
								</div>
								<div class="row">
									<div class="col-md-11">
										<form name="search" method="get" action>
											<input type="hidden" name="cat_id" value="0" /> <input
												type="hidden" name="sub_cat_id" value="0" />
											<div class="row">
												<input class="form-control" style="margin-left: 15px;"
													type="text" placeholder="Search category" name="search_val"
													value />
											</div>
									</div>
									<div class="col-md-1" style="text-align: -webkit-right;">
										<div class="row">
											<input type="submit" class="btn btn-primary" name="search"
												value="Search" style="margin-right: 30px;" />
										</div>
										</form>
									</div>
								</div>
								<br />
								<!--[if !IE]>start table_wrapper<![endif]-->
								<div class="table_wrapper">
									<div class="table_wrapper_inner">
										<table
											class="table-responsive table-bordered table-striped listing"
											cellpadding="0" width="100%" cellspacing="0" align="center">
											<tr>
												<th><span class="manten-th">Sr.No.</span></th>
												<th><span class="manten-th">Category</span></th>
												<th><span class="manten-th">Category Image</span></th>
												<th><span class="manten-th">Action</span></th>
											</tr>
											<tr>
												<td class="first style3">1</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=4076">Printing
														Equipment Suppliers</a></td>
												<td>N/A
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/4076">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/4076">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/4076"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">2</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=1762">Business
														And Services</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1645681484.png"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/1762">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/1762">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/1762"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">3</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=1451">Packaging
														Product & Material</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1643853601.png"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/1451">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/1451">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/1451"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">4</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=1441">Machinery
														& Equipment</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1648944607.jpg"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/1441">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/1441">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/1441"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">5</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=836">Printing
														Publishing</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1520513733.jpeg"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/836">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/836">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/836"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">6</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=756">Paper
														Paper Products</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1520513620.jpeg"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/756">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/756">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/756"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">7</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=521">Industrial
														Supplies</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1520512755.jpeg"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/Y/521">
														<button type="button" data-toggle="tooltip"
															title="Approve" class="btn btn-success btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/521">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/521"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td class="first style3">8</td>
												<td class="link"><a
													href="https://www.qralink.com/CategoryView/sell/?cat_id=270">Electronics
														Electrical</a></td>
												<td><img
													src="https://www.qralink.com/images/category_images/1520511629.jpeg"
													width="40" height="40" /></td>
												<td class="last"><a
													href="https://www.qralink.com/CategoryApprove/N/270">
														<button type="button" data-toggle="tooltip"
															title="Unapprove" class="btn btn-default btn-circle">
															<i class="fa fa-key"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryEdit/270">
														<button type="button" data-toggle="tooltip" title="Edit"
															class="btn btn-info btn-circle">
															<i class="fa fa-pencil-square-o"></i>
														</button>
												</a> <a href="https://www.qralink.com/CategoryDelete/270"
													onclick="return confirm('Do You  want to delete ?');">
														<button type="button" data-toggle="tooltip" title="Delete"
															class="btn btn-danger btn-circle">
															<i class="fa fa-times"></i>
														</button>
												</a></td>
											</tr>
											<tr>
												<td colspan="8">
													<center></center>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="footer_section"> -->
		<!-- <div class="row"> -->
		<!-- <div class="col-md-6"> -->
		<!-- </div> -->
		<!-- </div> -->
		<!-- </div> -->

	</div>
	<script
		src="https://www.qralink.com/admin/eagle_admin_v2/bower_components/jquery/dist/jquery.min.js"></script>

	<script
		src="https://www.qralink.com/admin/eagle_admin_v2/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!--
<script src="https://www.qralink.com/admin/eagle_admin_v2/bower_components/metisMenu/dist/metisMenu.min.js"></script>

<script src="https://www.qralink.com/admin/eagle_admin_v2/bower_components/raphael/raphael-min.js"></script>
<script src="https://www.qralink.com/admin/eagle_admin_v2/bower_components/morrisjs/morris.min.js"></script>

<script src="https://www.qralink.com/admin/eagle_admin_v2/dist/js/sb-admin-2.js"></script>
<script src="https://www.qralink.com/admin/eagle_admin_v2/dist/js/Chart.min.js"></script>
<script src="https://www.qralink.com/admin/eagle_admin_v2/dist/js/sb-admin-charts.min.js"></script>
<script> 
 $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();  });
</script>  -->
</body>
</html>